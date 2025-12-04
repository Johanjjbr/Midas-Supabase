import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MctacteRecord extends FirestoreRecord {
  MctacteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODCLI" field.
  String? _codcli;
  String get codcli => _codcli ?? '';
  bool hasCodcli() => _codcli != null;

  // "RAZONSOC" field.
  String? _razonsoc;
  String get razonsoc => _razonsoc ?? '';
  bool hasRazonsoc() => _razonsoc != null;

  // "CODALIC" field.
  String? _codalic;
  String get codalic => _codalic ?? '';
  bool hasCodalic() => _codalic != null;

  // "FECHAEMI" field.
  DateTime? _fechaemi;
  DateTime? get fechaemi => _fechaemi;
  bool hasFechaemi() => _fechaemi != null;

  // "CODVEND" field.
  int? _codvend;
  int get codvend => _codvend ?? 0;
  bool hasCodvend() => _codvend != null;

  // "LETRA" field.
  String? _letra;
  String get letra => _letra ?? '';
  bool hasLetra() => _letra != null;

  // "PREFIJO" field.
  int? _prefijo;
  int get prefijo => _prefijo ?? 0;
  bool hasPrefijo() => _prefijo != null;

  // "NUMCPBTE" field.
  String? _numcpbte;
  String get numcpbte => _numcpbte ?? '';
  bool hasNumcpbte() => _numcpbte != null;

  // "CUOTA" field.
  String? _cuota;
  String get cuota => _cuota ?? '';
  bool hasCuota() => _cuota != null;

  // "NDAS" field.
  String? _ndas;
  String get ndas => _ndas ?? '';
  bool hasNdas() => _ndas != null;

  // "RECNO" field.
  String? _recno;
  String get recno => _recno ?? '';
  bool hasRecno() => _recno != null;

  // "IMPORIG" field.
  double? _imporig;
  double get imporig => _imporig ?? 0.0;
  bool hasImporig() => _imporig != null;

  // "IMPOCANC" field.
  double? _impocanc;
  double get impocanc => _impocanc ?? 0.0;
  bool hasImpocanc() => _impocanc != null;

  // "TOTAL" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "VENC" field.
  DateTime? _venc;
  DateTime? get venc => _venc;
  bool hasVenc() => _venc != null;

  // "CCOSTO" field.
  String? _ccosto;
  String get ccosto => _ccosto ?? '';
  bool hasCcosto() => _ccosto != null;

  // "CODCVTA" field.
  String? _codcvta;
  String get codcvta => _codcvta ?? '';
  bool hasCodcvta() => _codcvta != null;

  // "CODMONE" field.
  String? _codmone;
  String get codmone => _codmone ?? '';
  bool hasCodmone() => _codmone != null;

  // "TDNDAS" field.
  String? _tdndas;
  String get tdndas => _tdndas ?? '';
  bool hasTdndas() => _tdndas != null;

  // "CODCOM" field.
  String? _codcom;
  String get codcom => _codcom ?? '';
  bool hasCodcom() => _codcom != null;

  // "RENGLON" field.
  String? _renglon;
  String get renglon => _renglon ?? '';
  bool hasRenglon() => _renglon != null;

  // "CODSUC" field.
  String? _codsuc;
  String get codsuc => _codsuc ?? '';
  bool hasCodsuc() => _codsuc != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codcli = snapshotData['CODCLI'] as String?;
    _razonsoc = snapshotData['RAZONSOC'] as String?;
    _codalic = snapshotData['CODALIC'] as String?;
    _fechaemi = snapshotData['FECHAEMI'] as DateTime?;
    _codvend = castToType<int>(snapshotData['CODVEND']);
    _letra = snapshotData['LETRA'] as String?;
    _prefijo = castToType<int>(snapshotData['PREFIJO']);
    _numcpbte = snapshotData['NUMCPBTE'] as String?;
    _cuota = snapshotData['CUOTA'] as String?;
    _ndas = snapshotData['NDAS'] as String?;
    _recno = snapshotData['RECNO'] as String?;
    _imporig = castToType<double>(snapshotData['IMPORIG']);
    _impocanc = castToType<double>(snapshotData['IMPOCANC']);
    _total = castToType<double>(snapshotData['TOTAL']);
    _venc = snapshotData['VENC'] as DateTime?;
    _ccosto = snapshotData['CCOSTO'] as String?;
    _codcvta = snapshotData['CODCVTA'] as String?;
    _codmone = snapshotData['CODMONE'] as String?;
    _tdndas = snapshotData['TDNDAS'] as String?;
    _codcom = snapshotData['CODCOM'] as String?;
    _renglon = snapshotData['RENGLON'] as String?;
    _codsuc = snapshotData['CODSUC'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mctacte');

  static Stream<MctacteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MctacteRecord.fromSnapshot(s));

  static Future<MctacteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MctacteRecord.fromSnapshot(s));

  static MctacteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MctacteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MctacteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MctacteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MctacteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MctacteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMctacteRecordData({
  String? codcli,
  String? razonsoc,
  String? codalic,
  DateTime? fechaemi,
  int? codvend,
  String? letra,
  int? prefijo,
  String? numcpbte,
  String? cuota,
  String? ndas,
  String? recno,
  double? imporig,
  double? impocanc,
  double? total,
  DateTime? venc,
  String? ccosto,
  String? codcvta,
  String? codmone,
  String? tdndas,
  String? codcom,
  String? renglon,
  String? codsuc,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODCLI': codcli,
      'RAZONSOC': razonsoc,
      'CODALIC': codalic,
      'FECHAEMI': fechaemi,
      'CODVEND': codvend,
      'LETRA': letra,
      'PREFIJO': prefijo,
      'NUMCPBTE': numcpbte,
      'CUOTA': cuota,
      'NDAS': ndas,
      'RECNO': recno,
      'IMPORIG': imporig,
      'IMPOCANC': impocanc,
      'TOTAL': total,
      'VENC': venc,
      'CCOSTO': ccosto,
      'CODCVTA': codcvta,
      'CODMONE': codmone,
      'TDNDAS': tdndas,
      'CODCOM': codcom,
      'RENGLON': renglon,
      'CODSUC': codsuc,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MctacteRecordDocumentEquality implements Equality<MctacteRecord> {
  const MctacteRecordDocumentEquality();

  @override
  bool equals(MctacteRecord? e1, MctacteRecord? e2) {
    return e1?.codcli == e2?.codcli &&
        e1?.razonsoc == e2?.razonsoc &&
        e1?.codalic == e2?.codalic &&
        e1?.fechaemi == e2?.fechaemi &&
        e1?.codvend == e2?.codvend &&
        e1?.letra == e2?.letra &&
        e1?.prefijo == e2?.prefijo &&
        e1?.numcpbte == e2?.numcpbte &&
        e1?.cuota == e2?.cuota &&
        e1?.ndas == e2?.ndas &&
        e1?.recno == e2?.recno &&
        e1?.imporig == e2?.imporig &&
        e1?.impocanc == e2?.impocanc &&
        e1?.total == e2?.total &&
        e1?.venc == e2?.venc &&
        e1?.ccosto == e2?.ccosto &&
        e1?.codcvta == e2?.codcvta &&
        e1?.codmone == e2?.codmone &&
        e1?.tdndas == e2?.tdndas &&
        e1?.codcom == e2?.codcom &&
        e1?.renglon == e2?.renglon &&
        e1?.codsuc == e2?.codsuc &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(MctacteRecord? e) => const ListEquality().hash([
        e?.codcli,
        e?.razonsoc,
        e?.codalic,
        e?.fechaemi,
        e?.codvend,
        e?.letra,
        e?.prefijo,
        e?.numcpbte,
        e?.cuota,
        e?.ndas,
        e?.recno,
        e?.imporig,
        e?.impocanc,
        e?.total,
        e?.venc,
        e?.ccosto,
        e?.codcvta,
        e?.codmone,
        e?.tdndas,
        e?.codcom,
        e?.renglon,
        e?.codsuc,
        e?.fechaultact
      ]);

  @override
  bool isValidKey(Object? o) => o is MctacteRecord;
}
