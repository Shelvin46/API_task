import 'dart:convert';

Interview interviewFromJson(String str) => Interview.fromJson(json.decode(str));

String interviewToJson(Interview data) => json.encode(data.toJson());

class Interview {
  BatchMst batchMst;

  Interview({
    required this.batchMst,
  });

  factory Interview.fromJson(Map<String, dynamic> json) => Interview(
        batchMst: BatchMst.fromJson(json["batch_mst"]),
      );

  Map<String, dynamic> toJson() => {
        "batch_mst": batchMst.toJson(),
      };
}

class BatchMst {
  List<BatchDetail> batchDetails;
  List<BatchSummary> batchSummary;

  BatchMst({
    required this.batchDetails,
    required this.batchSummary,
  });

  factory BatchMst.fromJson(Map<String, dynamic> json) => BatchMst(
        batchDetails: List<BatchDetail>.from(
            json["batch_details"].map((x) => BatchDetail.fromJson(x))),
        batchSummary: List<BatchSummary>.from(
            json["batch_summary"].map((x) => BatchSummary.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "batch_details":
            List<dynamic>.from(batchDetails.map((x) => x.toJson())),
        "batch_summary":
            List<dynamic>.from(batchSummary.map((x) => x.toJson())),
      };
}

class BatchDetail {
  int id;
  Opncl opncl;
  int bCode;
  String bDesc;
  Invcod invcod;
  Invtype invtype;
  dynamic racodno;
  BUnit bUnit;
  dynamic bFract;
  dynamic bPcs;
  dynamic grQty;
  dynamic netQty;
  Category category;
  Karigar karigar;
  dynamic rt;
  dynamic mkgCharges;
  MkgChargesFlg mkgChargesFlg;
  dynamic amt;
  String size;
  BDate bDate;
  dynamic mkgChargesSales;
  SysDate sysDate;
  Map<String, dynamic> sysTime;
  Openingflag status;
  dynamic auInt;
  dynamic rePcs;
  dynamic reGrossWt;
  dynamic reNetWt;
  dynamic isPcs;
  dynamic isGrossWt;
  dynamic isNetWt;
  Loc loc;
  dynamic subLoc;
  dynamic bItemNo;
  Category designNo;
  String bItemCod;
  dynamic varTotAmt;
  dynamic otherCharges;
  dynamic wstChrg;
  dynamic wstSal;
  Hm hm;
  Clarity shape;
  Clarity colr;
  Cut cut;
  Clarity clarity;
  Clarity seive;
  dynamic cmsnout;
  dynamic avgrt;
  dynamic lifo;
  dynamic fifo;
  dynamic lastpur;
  dynamic curmkt;
  Openingflag openingflag;
  dynamic txnrt;
  dynamic txnmk;
  Openingflag txnmkf;
  String rpcode;
  dynamic rpprice;
  Extra1 extra1;
  String extra2;
  Openingflag tmpopncl;
  CoId coId;
  Category certificate;
  CatGrp catGrp;
  dynamic mkgChargesA;
  dynamic mkgChargesB;
  dynamic mkgChargesC;
  dynamic mkgChargesD;
  String imgflg;
  UniqueMst uniqueMst;
  Descr1? descr1;
  SessionId sessionId;
  dynamic count;

  BatchDetail({
    required this.id,
    required this.opncl,
    required this.bCode,
    required this.bDesc,
    required this.invcod,
    required this.invtype,
    required this.racodno,
    required this.bUnit,
    required this.bFract,
    required this.bPcs,
    required this.grQty,
    required this.netQty,
    required this.category,
    required this.karigar,
    required this.rt,
    required this.mkgCharges,
    required this.mkgChargesFlg,
    required this.amt,
    required this.size,
    required this.bDate,
    required this.mkgChargesSales,
    required this.sysDate,
    required this.sysTime,
    required this.status,
    required this.auInt,
    required this.rePcs,
    required this.reGrossWt,
    required this.reNetWt,
    required this.isPcs,
    required this.isGrossWt,
    required this.isNetWt,
    required this.loc,
    required this.subLoc,
    required this.bItemNo,
    required this.designNo,
    required this.bItemCod,
    required this.varTotAmt,
    required this.otherCharges,
    required this.wstChrg,
    required this.wstSal,
    required this.hm,
    required this.shape,
    required this.colr,
    required this.cut,
    required this.clarity,
    required this.seive,
    required this.cmsnout,
    required this.avgrt,
    required this.lifo,
    required this.fifo,
    required this.lastpur,
    required this.curmkt,
    required this.openingflag,
    required this.txnrt,
    required this.txnmk,
    required this.txnmkf,
    required this.rpcode,
    required this.rpprice,
    required this.extra1,
    required this.extra2,
    required this.tmpopncl,
    required this.coId,
    required this.certificate,
    required this.catGrp,
    required this.mkgChargesA,
    required this.mkgChargesB,
    required this.mkgChargesC,
    required this.mkgChargesD,
    required this.imgflg,
    required this.uniqueMst,
    this.descr1,
    required this.sessionId,
    required this.count,
  });

  factory BatchDetail.fromJson(Map<String, dynamic> json) => BatchDetail(
        id: json["_id"],
        opncl: opnclValues.map[json["opncl"]]!,
        bCode: json["b_code"],
        bDesc: json["b_desc"],
        invcod: invcodValues.map[json["invcod"]]!,
        invtype: invtypeValues.map[json["invtype"]]!,
        racodno: json["racodno"],
        bUnit: bUnitValues.map[json["b_unit"]]!,
        bFract: json["b_fract"]?.toDouble(),
        bPcs: json["b_pcs"],
        grQty: json["gr_qty"]?.toDouble(),
        netQty: json["net_qty"]?.toDouble(),
        category: categoryValues.map[json["category"]]!,
        karigar: karigarValues.map[json["karigar"]]!,
        rt: json["rt"],
        mkgCharges: json["mkg_charges"],
        mkgChargesFlg: mkgChargesFlgValues.map[json["mkg_charges_flg"]]!,
        amt: json["amt"],
        size: json["size"],
        bDate: bDateValues.map[json["b_date"]]!,
        mkgChargesSales: json["mkg_charges_sales"],
        sysDate: sysDateValues.map[json["sys_date"]]!,
        sysTime: Map.from(json["sys_time"])
            .map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        status: openingflagValues.map[json["status"]]!,
        auInt: json["au_int"],
        rePcs: json["re_pcs"],
        reGrossWt: json["re_gross_wt"]?.toDouble(),
        reNetWt: json["re_net_wt"]?.toDouble(),
        isPcs: json["is_pcs"],
        isGrossWt: json["is_gross_wt"],
        isNetWt: json["is_net_wt"],
        loc: locValues.map[json["loc"]]!,
        subLoc: json["sub_loc"],
        bItemNo: json["b_item_no"],
        designNo: categoryValues.map[json["design_no"]]!,
        bItemCod: json["b_item_cod"],
        varTotAmt: json["var_tot_amt"],
        otherCharges: json["other_charges"],
        wstChrg: json["wst_chrg"],
        wstSal: json["wst_sal"],
        hm: hmValues.map[json["hm"]]!,
        shape: clarityValues.map[json["shape"]]!,
        colr: clarityValues.map[json["colr"]]!,
        cut: cutValues.map[json["cut"]]!,
        clarity: clarityValues.map[json["clarity"]]!,
        seive: clarityValues.map[json["seive"]]!,
        cmsnout: json["cmsnout"],
        avgrt: json["avgrt"],
        lifo: json["lifo"],
        fifo: json["fifo"],
        lastpur: json["lastpur"],
        curmkt: json["curmkt"],
        openingflag: openingflagValues.map[json["openingflag"]]!,
        txnrt: json["txnrt"],
        txnmk: json["txnmk"],
        txnmkf: openingflagValues.map[json["txnmkf"]]!,
        rpcode: json["rpcode"],
        rpprice: json["rpprice"],
        extra1: extra1Values.map[json["extra1"]]!,
        extra2: json["extra2"],
        tmpopncl: openingflagValues.map[json["tmpopncl"]]!,
        coId: coIdValues.map[json["co_id"]]!,
        certificate: categoryValues.map[json["certificate"]]!,
        catGrp: catGrpValues.map[json["cat_grp"]]!,
        mkgChargesA: json["mkg_chargesA"],
        mkgChargesB: json["mkg_chargesB"],
        mkgChargesC: json["mkg_chargesC"],
        mkgChargesD: json["mkg_chargesD"],
        imgflg: json["imgflg"],
        uniqueMst: uniqueMstValues.map[json["unique_mst"]]!,
        descr1: descr1Values.map[json["descr1"]],
        sessionId: sessionIdValues.map[json["Session_id"]]!,
        count: json["Count"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "opncl": opnclValues.reverse[opncl],
        "b_code": bCode,
        "b_desc": bDesc,
        "invcod": invcodValues.reverse[invcod],
        "invtype": invtypeValues.reverse[invtype],
        "racodno": racodno,
        "b_unit": bUnitValues.reverse[bUnit],
        "b_fract": bFract,
        "b_pcs": bPcs,
        "gr_qty": grQty,
        "net_qty": netQty,
        "category": categoryValues.reverse[category],
        "karigar": karigarValues.reverse[karigar],
        "rt": rt,
        "mkg_charges": mkgCharges,
        "mkg_charges_flg": mkgChargesFlgValues.reverse[mkgChargesFlg],
        "amt": amt,
        "size": size,
        "b_date": bDateValues.reverse[bDate],
        "mkg_charges_sales": mkgChargesSales,
        "sys_date": sysDateValues.reverse[sysDate],
        "sys_time":
            Map.from(sysTime).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "status": openingflagValues.reverse[status],
        "au_int": auInt,
        "re_pcs": rePcs,
        "re_gross_wt": reGrossWt,
        "re_net_wt": reNetWt,
        "is_pcs": isPcs,
        "is_gross_wt": isGrossWt,
        "is_net_wt": isNetWt,
        "loc": locValues.reverse[loc],
        "sub_loc": subLoc,
        "b_item_no": bItemNo,
        "design_no": categoryValues.reverse[designNo],
        "b_item_cod": bItemCod,
        "var_tot_amt": varTotAmt,
        "other_charges": otherCharges,
        "wst_chrg": wstChrg,
        "wst_sal": wstSal,
        "hm": hmValues.reverse[hm],
        "shape": clarityValues.reverse[shape],
        "colr": clarityValues.reverse[colr],
        "cut": cutValues.reverse[cut],
        "clarity": clarityValues.reverse[clarity],
        "seive": clarityValues.reverse[seive],
        "cmsnout": cmsnout,
        "avgrt": avgrt,
        "lifo": lifo,
        "fifo": fifo,
        "lastpur": lastpur,
        "curmkt": curmkt,
        "openingflag": openingflagValues.reverse[openingflag],
        "txnrt": txnrt,
        "txnmk": txnmk,
        "txnmkf": openingflagValues.reverse[txnmkf],
        "rpcode": rpcode,
        "rpprice": rpprice,
        "extra1": extra1Values.reverse[extra1],
        "extra2": extra2,
        "tmpopncl": openingflagValues.reverse[tmpopncl],
        "co_id": coIdValues.reverse[coId],
        "certificate": categoryValues.reverse[certificate],
        "cat_grp": catGrpValues.reverse[catGrp],
        "mkg_chargesA": mkgChargesA,
        "mkg_chargesB": mkgChargesB,
        "mkg_chargesC": mkgChargesC,
        "mkg_chargesD": mkgChargesD,
        "imgflg": imgflg,
        "unique_mst": uniqueMstValues.reverse[uniqueMst],
        "descr1": descr1Values.reverse[descr1],
        "Session_id": sessionIdValues.reverse[sessionId],
        "Count": count,
      };
}

enum BDate { DATE_2209008600000, DATE_1682533800000 }

final bDateValues = EnumValues({
  "/Date(1682533800000)/": BDate.DATE_1682533800000,
  "/Date(-2209008600000)/": BDate.DATE_2209008600000
});

enum BUnit { CTS, GMS, B_UNIT_GMS }

final bUnitValues =
    EnumValues({"gms": BUnit.B_UNIT_GMS, "cts": BUnit.CTS, "GMS": BUnit.GMS});

enum CatGrp { LG, JEW, CS }

final catGrpValues =
    EnumValues({"CS": CatGrp.CS, "JEW": CatGrp.JEW, "LG": CatGrp.LG});

enum Category {
  EMPTY,
  X,
  BRD_528,
  BRD_201,
  BRD_619,
  BRD93,
  BRD_174,
  BRD_140,
  BRD_208,
  BRD_481
}

final categoryValues = EnumValues({
  "BRD93": Category.BRD93,
  "BRD 140": Category.BRD_140,
  "BRD 174": Category.BRD_174,
  "BRD 201": Category.BRD_201,
  "BRD 208": Category.BRD_208,
  "BRD 481": Category.BRD_481,
  "BRD 528": Category.BRD_528,
  "BRD 619": Category.BRD_619,
  "": Category.EMPTY,
  "X": Category.X
});

enum Clarity { EMPTY, UNKNO }

final clarityValues = EnumValues({"": Clarity.EMPTY, "unkno": Clarity.UNKNO});

enum CoId { ANANTA }

final coIdValues = EnumValues({"ananta": CoId.ANANTA});

enum Cut { EMPTY, CUT }

final cutValues = EnumValues({"CUT": Cut.CUT, "": Cut.EMPTY});

enum Descr1 {
  AD_DIAMOND,
  BANGLES,
  BRACLET,
  BAUGGETS,
  CUSTOMER_DIAMOND,
  COLOUR_STONE_D,
  COLOUR_STONE_T,
  EM_16
}

final descr1Values = EnumValues({
  "AD DIAMOND": Descr1.AD_DIAMOND,
  "BANGLES": Descr1.BANGLES,
  "Bauggets": Descr1.BAUGGETS,
  "BRACLET": Descr1.BRACLET,
  "Colour Stone D": Descr1.COLOUR_STONE_D,
  "Colour Stone T": Descr1.COLOUR_STONE_T,
  "Customer Diamond": Descr1.CUSTOMER_DIAMOND,
  "EM 1/6": Descr1.EM_16
});

enum Extra1 { EMPTY, UNKNOWN }

final extra1Values = EnumValues({"": Extra1.EMPTY, "unknown": Extra1.UNKNOWN});

enum Hm { X, UNKNO }

final hmValues = EnumValues({"unkno": Hm.UNKNO, "X": Hm.X});

enum Invcod { AD, ASC, BG, BR, BUG, CD, CSD, CST, CUS, EM1 }

final invcodValues = EnumValues({
  "AD": Invcod.AD,
  "ASC": Invcod.ASC,
  "BG": Invcod.BG,
  "BR": Invcod.BR,
  "BUG": Invcod.BUG,
  "CD": Invcod.CD,
  "CSD": Invcod.CSD,
  "CST": Invcod.CST,
  "CUS": Invcod.CUS,
  "EM1": Invcod.EM1
});

enum Invtype { D, GJ, DJ, C }

final invtypeValues = EnumValues(
    {"C": Invtype.C, "D": Invtype.D, "DJ": Invtype.DJ, "GJ": Invtype.GJ});

enum Karigar { EMPTY, X, UB, GMS, TM, CB, RG, HG, UDP }

final karigarValues = EnumValues({
  "CB": Karigar.CB,
  "": Karigar.EMPTY,
  "GMS": Karigar.GMS,
  "HG": Karigar.HG,
  "RG": Karigar.RG,
  "TM": Karigar.TM,
  "UB": Karigar.UB,
  "UDP": Karigar.UDP,
  "X": Karigar.X
});

enum Loc { HO }

final locValues = EnumValues({"HO": Loc.HO});

enum MkgChargesFlg { Q }

final mkgChargesFlgValues = EnumValues({"Q": MkgChargesFlg.Q});

enum Openingflag { EMPTY, S }

final openingflagValues =
    EnumValues({" ": Openingflag.EMPTY, "s": Openingflag.S});

enum Opncl { O }

final opnclValues = EnumValues({"O": Opncl.O});

enum SessionId { SAHIL }

final sessionIdValues = EnumValues({"sahil": SessionId.SAHIL});

enum SysDate { DATE_1681756200000, DATE_1682533800000 }

final sysDateValues = EnumValues({
  "/Date(1681756200000)/": SysDate.DATE_1681756200000,
  "/Date(1682533800000)/": SysDate.DATE_1682533800000
});

enum UniqueMst { U }

final uniqueMstValues = EnumValues({"U": UniqueMst.U});

class BatchSummary {
  Invcod invcod;
  Opncl opncl;
  Descr1 descr1;
  double frac;
  dynamic totalPcs;
  dynamic grsQty;
  dynamic netQty;
  dynamic tagCount;
  SessionId sessionId;
  dynamic count;

  BatchSummary({
    required this.invcod,
    required this.opncl,
    required this.descr1,
    required this.frac,
    required this.totalPcs,
    required this.grsQty,
    required this.netQty,
    required this.tagCount,
    required this.sessionId,
    required this.count,
  });

  factory BatchSummary.fromJson(Map<String, dynamic> json) => BatchSummary(
        invcod: invcodValues.map[json["invcod"]]!,
        opncl: opnclValues.map[json["opncl"]]!,
        descr1: descr1Values.map[json["descr1"]]!,
        frac: json["frac"]?.toDouble(),
        totalPcs: json["Total Pcs"],
        grsQty: json["Grs Qty"]?.toDouble(),
        netQty: json["Net Qty"]?.toDouble(),
        tagCount: json["TagCount"],
        sessionId: sessionIdValues.map[json["Session_id"]]!,
        count: json["Count"],
      );

  Map<String, dynamic> toJson() => {
        "invcod": invcodValues.reverse[invcod],
        "opncl": opnclValues.reverse[opncl],
        "descr1": descr1Values.reverse[descr1],
        "frac": frac,
        "Total Pcs": totalPcs,
        "Grs Qty": grsQty,
        "Net Qty": netQty,
        "TagCount": tagCount,
        "Session_id": sessionIdValues.reverse[sessionId],
        "Count": count,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
