import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MnotapediteRecord extends FirestoreRecord {
  MnotapediteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NOTAPEDID" field.
  String? _notapedid;
  String get notapedid => _notapedid ?? '';
  bool hasNotapedid() => _notapedid != null;

  // "RENGLON" field.
  int? _renglon;
  int get renglon => _renglon ?? 0;
  bool hasRenglon() => _renglon != null;

  // "NUMPEDIDO" field.
  int? _numpedido;
  int get numpedido => _numpedido ?? 0;
  bool hasNumpedido() => _numpedido != null;

  // "CODCLIE" field.
  String? _codclie;
  String get codclie => _codclie ?? '';
  bool hasCodclie() => _codclie != null;

  // "CODARTI" field.
  String? _codarti;
  String get codarti => _codarti ?? '';
  bool hasCodarti() => _codarti != null;

  // "CANTIDAD" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "IMPUNIORIG" field.
  double? _impuniorig;
  double get impuniorig => _impuniorig ?? 0.0;
  bool hasImpuniorig() => _impuniorig != null;

  // "IMPOUNITARIO" field.
  double? _impounitario;
  double get impounitario => _impounitario ?? 0.0;
  bool hasImpounitario() => _impounitario != null;

  // "BONIFICACION" field.
  double? _bonificacion;
  double get bonificacion => _bonificacion ?? 0.0;
  bool hasBonificacion() => _bonificacion != null;

  // "IMPOBONIFICA" field.
  double? _impobonifica;
  double get impobonifica => _impobonifica ?? 0.0;
  bool hasImpobonifica() => _impobonifica != null;

  // "ALICUOTAIVA" field.
  double? _alicuotaiva;
  double get alicuotaiva => _alicuotaiva ?? 0.0;
  bool hasAlicuotaiva() => _alicuotaiva != null;

  // "LISTPREC" field.
  String? _listprec;
  String get listprec => _listprec ?? '';
  bool hasListprec() => _listprec != null;

  // "FECULTACT" field.
  DateTime? _fecultact;
  DateTime? get fecultact => _fecultact;
  bool hasFecultact() => _fecultact != null;

  // "ABM" field.
  String? _abm;
  String get abm => _abm ?? '';
  bool hasAbm() => _abm != null;

  void _initializeFields() {
    _notapedid = snapshotData['NOTAPEDID'] as String?;
    _renglon = castToType<int>(snapshotData['RENGLON']);
    _numpedido = castToType<int>(snapshotData['NUMPEDIDO']);
    _codclie = snapshotData['CODCLIE'] as String?;
    _codarti = snapshotData['CODARTI'] as String?;
    _cantidad = castToType<int>(snapshotData['CANTIDAD']);
    _impuniorig = castToType<double>(snapshotData['IMPUNIORIG']);
    _impounitario = castToType<double>(snapshotData['IMPOUNITARIO']);
    _bonificacion = castToType<double>(snapshotData['BONIFICACION']);
    _impobonifica = castToType<double>(snapshotData['IMPOBONIFICA']);
    _alicuotaiva = castToType<double>(snapshotData['ALICUOTAIVA']);
    _listprec = snapshotData['LISTPREC'] as String?;
    _fecultact = snapshotData['FECULTACT'] as DateTime?;
    _abm = snapshotData['ABM'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mnotapedite');

  static Stream<MnotapediteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MnotapediteRecord.fromSnapshot(s));

  static Future<MnotapediteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MnotapediteRecord.fromSnapshot(s));

  static MnotapediteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MnotapediteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MnotapediteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MnotapediteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MnotapediteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MnotapediteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMnotapediteRecordData({
  String? notapedid,
  int? renglon,
  int? numpedido,
  String? codclie,
  String? codarti,
  int? cantidad,
  double? impuniorig,
  double? impounitario,
  double? bonificacion,
  double? impobonifica,
  double? alicuotaiva,
  String? listprec,
  DateTime? fecultact,
  String? abm,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOTAPEDID': notapedid,
      'RENGLON': renglon,
      'NUMPEDIDO': numpedido,
      'CODCLIE': codclie,
      'CODARTI': codarti,
      'CANTIDAD': cantidad,
      'IMPUNIORIG': impuniorig,
      'IMPOUNITARIO': impounitario,
      'BONIFICACION': bonificacion,
      'IMPOBONIFICA': impobonifica,
      'ALICUOTAIVA': alicuotaiva,
      'LISTPREC': listprec,
      'FECULTACT': fecultact,
      'ABM': abm,
    }.withoutNulls,
  );

  return firestoreData;
}

class MnotapediteRecordDocumentEquality implements Equality<MnotapediteRecord> {
  const MnotapediteRecordDocumentEquality();

  @override
  bool equals(MnotapediteRecord? e1, MnotapediteRecord? e2) {
    return e1?.notapedid == e2?.notapedid &&
        e1?.renglon == e2?.renglon &&
        e1?.numpedido == e2?.numpedido &&
        e1?.codclie == e2?.codclie &&
        e1?.codarti == e2?.codarti &&
        e1?.cantidad == e2?.cantidad &&
        e1?.impuniorig == e2?.impuniorig &&
        e1?.impounitario == e2?.impounitario &&
        e1?.bonificacion == e2?.bonificacion &&
        e1?.impobonifica == e2?.impobonifica &&
        e1?.alicuotaiva == e2?.alicuotaiva &&
        e1?.listprec == e2?.listprec &&
        e1?.fecultact == e2?.fecultact &&
        e1?.abm == e2?.abm;
  }

  @override
  int hash(MnotapediteRecord? e) => const ListEquality().hash([
        e?.notapedid,
        e?.renglon,
        e?.numpedido,
        e?.codclie,
        e?.codarti,
        e?.cantidad,
        e?.impuniorig,
        e?.impounitario,
        e?.bonificacion,
        e?.impobonifica,
        e?.alicuotaiva,
        e?.listprec,
        e?.fecultact,
        e?.abm
      ]);

  @override
  bool isValidKey(Object? o) => o is MnotapediteRecord;
}
