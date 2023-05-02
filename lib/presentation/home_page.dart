import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Interview? values;

Future<Interview> fetchJson() async {
  var response = await http.get(Uri.parse(
      'http://116.73.24.239:8069/WebService.asmx/GetJsonDATA?QueryNo=18&co_code=A&invcode=F1B002&opncl=D&co_id=65&b_code=341&txntyp=sa&docod=xx&docno=544&user_id=1&acode=XX&sessionId=sahil&JSONStringFormat1=[{%22opncl%22:%22O%22,%22invcodstart%22:%22AD%22,%22invcodend%22:%22EM1%22,%22loc%22:%22HO%22,%22co_id%22:%22ananta%22}]'));
  if (response.statusCode == 200) {
    var uriJson = json.decode(response.body);
    values = Interview.fromJson(uriJson);
    log(values.toString());
    return values!;
  }
  Interview? obj;
  return obj!;
}
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    fetchJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (values!.batchMst.batchDetails.isEmpty) {
      return Container();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Data Table'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(columns: const [
            DataColumn(
              label: Text('B_code'),
            ),
            DataColumn(
              label: Text('Invcode'),
            ),
            DataColumn(
              label: Text('Description'),
            ),
            DataColumn(
              label: Text('Unit'),
            ),
          ], rows: [
            DataRow(cells: [
              DataCell(Text(values!.batchMst.batchDetails
                  .indexWhere((element) => element.bCode == 29)
                  .toString())),
              const DataCell(Text("LGBR")),
              DataCell(
                  Text(values!.batchMst.batchDetails[26].descr1.toString())),
            ]),
            DataRow(cells: [
              DataCell(
                  Text(values!.batchMst.batchDetails[26].invcod.toString())),
              DataCell(
                  Text(values!.batchMst.batchDetails[26].uniqueMst.toString())),
            ]),
          ]),
        ),
      ),
    );
  }
}
