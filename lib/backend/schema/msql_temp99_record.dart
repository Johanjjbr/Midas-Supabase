import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MsqlTemp99Record extends FirestoreRecord {
  MsqlTemp99Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "FECHA1" field.
  DateTime? _fecha1;
  DateTime? get fecha1 => _fecha1;
  bool hasFecha1() => _fecha1 != null;

  // "FECHA2" field.
  DateTime? _fecha2;
  DateTime? get fecha2 => _fecha2;
  bool hasFecha2() => _fecha2 != null;

  // "FECHA3" field.
  DateTime? _fecha3;
  DateTime? get fecha3 => _fecha3;
  bool hasFecha3() => _fecha3 != null;

  // "FECHA4" field.
  DateTime? _fecha4;
  DateTime? get fecha4 => _fecha4;
  bool hasFecha4() => _fecha4 != null;

  // "FECHA5" field.
  DateTime? _fecha5;
  DateTime? get fecha5 => _fecha5;
  bool hasFecha5() => _fecha5 != null;

  // "FECHA6" field.
  DateTime? _fecha6;
  DateTime? get fecha6 => _fecha6;
  bool hasFecha6() => _fecha6 != null;

  // "HORA1" field.
  DateTime? _hora1;
  DateTime? get hora1 => _hora1;
  bool hasHora1() => _hora1 != null;

  // "HORA2" field.
  DateTime? _hora2;
  DateTime? get hora2 => _hora2;
  bool hasHora2() => _hora2 != null;

  // "HORA3" field.
  DateTime? _hora3;
  DateTime? get hora3 => _hora3;
  bool hasHora3() => _hora3 != null;

  // "HORA4" field.
  DateTime? _hora4;
  DateTime? get hora4 => _hora4;
  bool hasHora4() => _hora4 != null;

  // "HORA5" field.
  DateTime? _hora5;
  DateTime? get hora5 => _hora5;
  bool hasHora5() => _hora5 != null;

  // "HORA6" field.
  DateTime? _hora6;
  DateTime? get hora6 => _hora6;
  bool hasHora6() => _hora6 != null;

  // "DETAL1" field.
  String? _detal1;
  String get detal1 => _detal1 ?? '';
  bool hasDetal1() => _detal1 != null;

  // "DETAL2" field.
  String? _detal2;
  String get detal2 => _detal2 ?? '';
  bool hasDetal2() => _detal2 != null;

  // "DETAL3" field.
  String? _detal3;
  String get detal3 => _detal3 ?? '';
  bool hasDetal3() => _detal3 != null;

  // "DETAL4" field.
  String? _detal4;
  String get detal4 => _detal4 ?? '';
  bool hasDetal4() => _detal4 != null;

  // "DETAL5" field.
  String? _detal5;
  String get detal5 => _detal5 ?? '';
  bool hasDetal5() => _detal5 != null;

  // "DETAL6" field.
  String? _detal6;
  String get detal6 => _detal6 ?? '';
  bool hasDetal6() => _detal6 != null;

  // "DETAL7" field.
  String? _detal7;
  String get detal7 => _detal7 ?? '';
  bool hasDetal7() => _detal7 != null;

  // "DETAL8" field.
  String? _detal8;
  String get detal8 => _detal8 ?? '';
  bool hasDetal8() => _detal8 != null;

  // "DETAL9" field.
  String? _detal9;
  String get detal9 => _detal9 ?? '';
  bool hasDetal9() => _detal9 != null;

  // "DETAL10" field.
  String? _detal10;
  String get detal10 => _detal10 ?? '';
  bool hasDetal10() => _detal10 != null;

  // "DETAL11" field.
  String? _detal11;
  String get detal11 => _detal11 ?? '';
  bool hasDetal11() => _detal11 != null;

  // "DETAL12" field.
  String? _detal12;
  String get detal12 => _detal12 ?? '';
  bool hasDetal12() => _detal12 != null;

  // "DETAL13" field.
  String? _detal13;
  String get detal13 => _detal13 ?? '';
  bool hasDetal13() => _detal13 != null;

  // "DETAL14" field.
  String? _detal14;
  String get detal14 => _detal14 ?? '';
  bool hasDetal14() => _detal14 != null;

  // "DETAL15" field.
  String? _detal15;
  String get detal15 => _detal15 ?? '';
  bool hasDetal15() => _detal15 != null;

  // "DETAL16" field.
  String? _detal16;
  String get detal16 => _detal16 ?? '';
  bool hasDetal16() => _detal16 != null;

  // "DETAL17" field.
  String? _detal17;
  String get detal17 => _detal17 ?? '';
  bool hasDetal17() => _detal17 != null;

  // "DETAL18" field.
  String? _detal18;
  String get detal18 => _detal18 ?? '';
  bool hasDetal18() => _detal18 != null;

  // "DETAL19" field.
  String? _detal19;
  String get detal19 => _detal19 ?? '';
  bool hasDetal19() => _detal19 != null;

  // "DETAL20" field.
  String? _detal20;
  String get detal20 => _detal20 ?? '';
  bool hasDetal20() => _detal20 != null;

  // "NUMERAL1" field.
  double? _numeral1;
  double get numeral1 => _numeral1 ?? 0.0;
  bool hasNumeral1() => _numeral1 != null;

  // "NUMERAL2" field.
  double? _numeral2;
  double get numeral2 => _numeral2 ?? 0.0;
  bool hasNumeral2() => _numeral2 != null;

  // "NUMERAL3" field.
  double? _numeral3;
  double get numeral3 => _numeral3 ?? 0.0;
  bool hasNumeral3() => _numeral3 != null;

  // "NUMERAL4" field.
  double? _numeral4;
  double get numeral4 => _numeral4 ?? 0.0;
  bool hasNumeral4() => _numeral4 != null;

  // "NUMERAL5" field.
  double? _numeral5;
  double get numeral5 => _numeral5 ?? 0.0;
  bool hasNumeral5() => _numeral5 != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['ID']);
    _fecha1 = snapshotData['FECHA1'] as DateTime?;
    _fecha2 = snapshotData['FECHA2'] as DateTime?;
    _fecha3 = snapshotData['FECHA3'] as DateTime?;
    _fecha4 = snapshotData['FECHA4'] as DateTime?;
    _fecha5 = snapshotData['FECHA5'] as DateTime?;
    _fecha6 = snapshotData['FECHA6'] as DateTime?;
    _hora1 = snapshotData['HORA1'] as DateTime?;
    _hora2 = snapshotData['HORA2'] as DateTime?;
    _hora3 = snapshotData['HORA3'] as DateTime?;
    _hora4 = snapshotData['HORA4'] as DateTime?;
    _hora5 = snapshotData['HORA5'] as DateTime?;
    _hora6 = snapshotData['HORA6'] as DateTime?;
    _detal1 = snapshotData['DETAL1'] as String?;
    _detal2 = snapshotData['DETAL2'] as String?;
    _detal3 = snapshotData['DETAL3'] as String?;
    _detal4 = snapshotData['DETAL4'] as String?;
    _detal5 = snapshotData['DETAL5'] as String?;
    _detal6 = snapshotData['DETAL6'] as String?;
    _detal7 = snapshotData['DETAL7'] as String?;
    _detal8 = snapshotData['DETAL8'] as String?;
    _detal9 = snapshotData['DETAL9'] as String?;
    _detal10 = snapshotData['DETAL10'] as String?;
    _detal11 = snapshotData['DETAL11'] as String?;
    _detal12 = snapshotData['DETAL12'] as String?;
    _detal13 = snapshotData['DETAL13'] as String?;
    _detal14 = snapshotData['DETAL14'] as String?;
    _detal15 = snapshotData['DETAL15'] as String?;
    _detal16 = snapshotData['DETAL16'] as String?;
    _detal17 = snapshotData['DETAL17'] as String?;
    _detal18 = snapshotData['DETAL18'] as String?;
    _detal19 = snapshotData['DETAL19'] as String?;
    _detal20 = snapshotData['DETAL20'] as String?;
    _numeral1 = castToType<double>(snapshotData['NUMERAL1']);
    _numeral2 = castToType<double>(snapshotData['NUMERAL2']);
    _numeral3 = castToType<double>(snapshotData['NUMERAL3']);
    _numeral4 = castToType<double>(snapshotData['NUMERAL4']);
    _numeral5 = castToType<double>(snapshotData['NUMERAL5']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('msql_temp99');

  static Stream<MsqlTemp99Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MsqlTemp99Record.fromSnapshot(s));

  static Future<MsqlTemp99Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MsqlTemp99Record.fromSnapshot(s));

  static MsqlTemp99Record fromSnapshot(DocumentSnapshot snapshot) =>
      MsqlTemp99Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MsqlTemp99Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MsqlTemp99Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MsqlTemp99Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MsqlTemp99Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMsqlTemp99RecordData({
  int? id,
  DateTime? fecha1,
  DateTime? fecha2,
  DateTime? fecha3,
  DateTime? fecha4,
  DateTime? fecha5,
  DateTime? fecha6,
  DateTime? hora1,
  DateTime? hora2,
  DateTime? hora3,
  DateTime? hora4,
  DateTime? hora5,
  DateTime? hora6,
  String? detal1,
  String? detal2,
  String? detal3,
  String? detal4,
  String? detal5,
  String? detal6,
  String? detal7,
  String? detal8,
  String? detal9,
  String? detal10,
  String? detal11,
  String? detal12,
  String? detal13,
  String? detal14,
  String? detal15,
  String? detal16,
  String? detal17,
  String? detal18,
  String? detal19,
  String? detal20,
  double? numeral1,
  double? numeral2,
  double? numeral3,
  double? numeral4,
  double? numeral5,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID': id,
      'FECHA1': fecha1,
      'FECHA2': fecha2,
      'FECHA3': fecha3,
      'FECHA4': fecha4,
      'FECHA5': fecha5,
      'FECHA6': fecha6,
      'HORA1': hora1,
      'HORA2': hora2,
      'HORA3': hora3,
      'HORA4': hora4,
      'HORA5': hora5,
      'HORA6': hora6,
      'DETAL1': detal1,
      'DETAL2': detal2,
      'DETAL3': detal3,
      'DETAL4': detal4,
      'DETAL5': detal5,
      'DETAL6': detal6,
      'DETAL7': detal7,
      'DETAL8': detal8,
      'DETAL9': detal9,
      'DETAL10': detal10,
      'DETAL11': detal11,
      'DETAL12': detal12,
      'DETAL13': detal13,
      'DETAL14': detal14,
      'DETAL15': detal15,
      'DETAL16': detal16,
      'DETAL17': detal17,
      'DETAL18': detal18,
      'DETAL19': detal19,
      'DETAL20': detal20,
      'NUMERAL1': numeral1,
      'NUMERAL2': numeral2,
      'NUMERAL3': numeral3,
      'NUMERAL4': numeral4,
      'NUMERAL5': numeral5,
    }.withoutNulls,
  );

  return firestoreData;
}

class MsqlTemp99RecordDocumentEquality implements Equality<MsqlTemp99Record> {
  const MsqlTemp99RecordDocumentEquality();

  @override
  bool equals(MsqlTemp99Record? e1, MsqlTemp99Record? e2) {
    return e1?.id == e2?.id &&
        e1?.fecha1 == e2?.fecha1 &&
        e1?.fecha2 == e2?.fecha2 &&
        e1?.fecha3 == e2?.fecha3 &&
        e1?.fecha4 == e2?.fecha4 &&
        e1?.fecha5 == e2?.fecha5 &&
        e1?.fecha6 == e2?.fecha6 &&
        e1?.hora1 == e2?.hora1 &&
        e1?.hora2 == e2?.hora2 &&
        e1?.hora3 == e2?.hora3 &&
        e1?.hora4 == e2?.hora4 &&
        e1?.hora5 == e2?.hora5 &&
        e1?.hora6 == e2?.hora6 &&
        e1?.detal1 == e2?.detal1 &&
        e1?.detal2 == e2?.detal2 &&
        e1?.detal3 == e2?.detal3 &&
        e1?.detal4 == e2?.detal4 &&
        e1?.detal5 == e2?.detal5 &&
        e1?.detal6 == e2?.detal6 &&
        e1?.detal7 == e2?.detal7 &&
        e1?.detal8 == e2?.detal8 &&
        e1?.detal9 == e2?.detal9 &&
        e1?.detal10 == e2?.detal10 &&
        e1?.detal11 == e2?.detal11 &&
        e1?.detal12 == e2?.detal12 &&
        e1?.detal13 == e2?.detal13 &&
        e1?.detal14 == e2?.detal14 &&
        e1?.detal15 == e2?.detal15 &&
        e1?.detal16 == e2?.detal16 &&
        e1?.detal17 == e2?.detal17 &&
        e1?.detal18 == e2?.detal18 &&
        e1?.detal19 == e2?.detal19 &&
        e1?.detal20 == e2?.detal20 &&
        e1?.numeral1 == e2?.numeral1 &&
        e1?.numeral2 == e2?.numeral2 &&
        e1?.numeral3 == e2?.numeral3 &&
        e1?.numeral4 == e2?.numeral4 &&
        e1?.numeral5 == e2?.numeral5;
  }

  @override
  int hash(MsqlTemp99Record? e) => const ListEquality().hash([
        e?.id,
        e?.fecha1,
        e?.fecha2,
        e?.fecha3,
        e?.fecha4,
        e?.fecha5,
        e?.fecha6,
        e?.hora1,
        e?.hora2,
        e?.hora3,
        e?.hora4,
        e?.hora5,
        e?.hora6,
        e?.detal1,
        e?.detal2,
        e?.detal3,
        e?.detal4,
        e?.detal5,
        e?.detal6,
        e?.detal7,
        e?.detal8,
        e?.detal9,
        e?.detal10,
        e?.detal11,
        e?.detal12,
        e?.detal13,
        e?.detal14,
        e?.detal15,
        e?.detal16,
        e?.detal17,
        e?.detal18,
        e?.detal19,
        e?.detal20,
        e?.numeral1,
        e?.numeral2,
        e?.numeral3,
        e?.numeral4,
        e?.numeral5
      ]);

  @override
  bool isValidKey(Object? o) => o is MsqlTemp99Record;
}
