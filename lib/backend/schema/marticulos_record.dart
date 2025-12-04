import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarticulosRecord extends FirestoreRecord {
  MarticulosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODARTI" field.
  String? _codarti;
  String get codarti => _codarti ?? '';
  bool hasCodarti() => _codarti != null;

  // "ARTDESCRIP" field.
  String? _artdescrip;
  String get artdescrip => _artdescrip ?? '';
  bool hasArtdescrip() => _artdescrip != null;

  // "CODBARR" field.
  String? _codbarr;
  String get codbarr => _codbarr ?? '';
  bool hasCodbarr() => _codbarr != null;

  // "CODGRUPO" field.
  String? _codgrupo;
  String get codgrupo => _codgrupo ?? '';
  bool hasCodgrupo() => _codgrupo != null;

  // "CODPROV" field.
  String? _codprov;
  String get codprov => _codprov ?? '';
  bool hasCodprov() => _codprov != null;

  // "COSTO" field.
  double? _costo;
  double get costo => _costo ?? 0.0;
  bool hasCosto() => _costo != null;

  // "PRECIO1" field.
  double? _precio1;
  double get precio1 => _precio1 ?? 0.0;
  bool hasPrecio1() => _precio1 != null;

  // "PRECIO2" field.
  double? _precio2;
  double get precio2 => _precio2 ?? 0.0;
  bool hasPrecio2() => _precio2 != null;

  // "PRECIO3" field.
  double? _precio3;
  double get precio3 => _precio3 ?? 0.0;
  bool hasPrecio3() => _precio3 != null;

  // "IMPINTERNO" field.
  double? _impinterno;
  double get impinterno => _impinterno ?? 0.0;
  bool hasImpinterno() => _impinterno != null;

  // "CODALIC" field.
  String? _codalic;
  String get codalic => _codalic ?? '';
  bool hasCodalic() => _codalic != null;

  // "IMPINTFIJO" field.
  double? _impintfijo;
  double get impintfijo => _impintfijo ?? 0.0;
  bool hasImpintfijo() => _impintfijo != null;

  // "UNIMED" field.
  String? _unimed;
  String get unimed => _unimed ?? '';
  bool hasUnimed() => _unimed != null;

  // "ARTFOTO" field.
  String? _artfoto;
  String get artfoto => _artfoto ?? '';
  bool hasArtfoto() => _artfoto != null;

  // "MONEDA" field.
  String? _moneda;
  String get moneda => _moneda ?? '';
  bool hasMoneda() => _moneda != null;

  // "MARCA" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "CARACT" field.
  String? _caract;
  String get caract => _caract ?? '';
  bool hasCaract() => _caract != null;

  // "IMPUESTO_FIJO" field.
  double? _impuestoFijo;
  double get impuestoFijo => _impuestoFijo ?? 0.0;
  bool hasImpuestoFijo() => _impuestoFijo != null;

  // "CODIGOREFERENCIA" field.
  String? _codigoreferencia;
  String get codigoreferencia => _codigoreferencia ?? '';
  bool hasCodigoreferencia() => _codigoreferencia != null;

  // "FACTORPUNTOS" field.
  double? _factorpuntos;
  double get factorpuntos => _factorpuntos ?? 0.0;
  bool hasFactorpuntos() => _factorpuntos != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  // "CODBARRA" field.
  int? _codbarra;
  int get codbarra => _codbarra ?? 0;
  bool hasCodbarra() => _codbarra != null;

  void _initializeFields() {
    _codarti = snapshotData['CODARTI'] as String?;
    _artdescrip = snapshotData['ARTDESCRIP'] as String?;
    _codbarr = snapshotData['CODBARR'] as String?;
    _codgrupo = snapshotData['CODGRUPO'] as String?;
    _codprov = snapshotData['CODPROV'] as String?;
    _costo = castToType<double>(snapshotData['COSTO']);
    _precio1 = castToType<double>(snapshotData['PRECIO1']);
    _precio2 = castToType<double>(snapshotData['PRECIO2']);
    _precio3 = castToType<double>(snapshotData['PRECIO3']);
    _impinterno = castToType<double>(snapshotData['IMPINTERNO']);
    _codalic = snapshotData['CODALIC'] as String?;
    _impintfijo = castToType<double>(snapshotData['IMPINTFIJO']);
    _unimed = snapshotData['UNIMED'] as String?;
    _artfoto = snapshotData['ARTFOTO'] as String?;
    _moneda = snapshotData['MONEDA'] as String?;
    _marca = snapshotData['MARCA'] as String?;
    _caract = snapshotData['CARACT'] as String?;
    _impuestoFijo = castToType<double>(snapshotData['IMPUESTO_FIJO']);
    _codigoreferencia = snapshotData['CODIGOREFERENCIA'] as String?;
    _factorpuntos = castToType<double>(snapshotData['FACTORPUNTOS']);
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
    _codbarra = castToType<int>(snapshotData['CODBARRA']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('marticulos');

  static Stream<MarticulosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarticulosRecord.fromSnapshot(s));

  static Future<MarticulosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarticulosRecord.fromSnapshot(s));

  static MarticulosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MarticulosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarticulosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarticulosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarticulosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarticulosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarticulosRecordData({
  String? codarti,
  String? artdescrip,
  String? codbarr,
  String? codgrupo,
  String? codprov,
  double? costo,
  double? precio1,
  double? precio2,
  double? precio3,
  double? impinterno,
  String? codalic,
  double? impintfijo,
  String? unimed,
  String? artfoto,
  String? moneda,
  String? marca,
  String? caract,
  double? impuestoFijo,
  String? codigoreferencia,
  double? factorpuntos,
  DateTime? fechaultact,
  int? codbarra,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODARTI': codarti,
      'ARTDESCRIP': artdescrip,
      'CODBARR': codbarr,
      'CODGRUPO': codgrupo,
      'CODPROV': codprov,
      'COSTO': costo,
      'PRECIO1': precio1,
      'PRECIO2': precio2,
      'PRECIO3': precio3,
      'IMPINTERNO': impinterno,
      'CODALIC': codalic,
      'IMPINTFIJO': impintfijo,
      'UNIMED': unimed,
      'ARTFOTO': artfoto,
      'MONEDA': moneda,
      'MARCA': marca,
      'CARACT': caract,
      'IMPUESTO_FIJO': impuestoFijo,
      'CODIGOREFERENCIA': codigoreferencia,
      'FACTORPUNTOS': factorpuntos,
      'FECHAULTACT': fechaultact,
      'CODBARRA': codbarra,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarticulosRecordDocumentEquality implements Equality<MarticulosRecord> {
  const MarticulosRecordDocumentEquality();

  @override
  bool equals(MarticulosRecord? e1, MarticulosRecord? e2) {
    return e1?.codarti == e2?.codarti &&
        e1?.artdescrip == e2?.artdescrip &&
        e1?.codbarr == e2?.codbarr &&
        e1?.codgrupo == e2?.codgrupo &&
        e1?.codprov == e2?.codprov &&
        e1?.costo == e2?.costo &&
        e1?.precio1 == e2?.precio1 &&
        e1?.precio2 == e2?.precio2 &&
        e1?.precio3 == e2?.precio3 &&
        e1?.impinterno == e2?.impinterno &&
        e1?.codalic == e2?.codalic &&
        e1?.impintfijo == e2?.impintfijo &&
        e1?.unimed == e2?.unimed &&
        e1?.artfoto == e2?.artfoto &&
        e1?.moneda == e2?.moneda &&
        e1?.marca == e2?.marca &&
        e1?.caract == e2?.caract &&
        e1?.impuestoFijo == e2?.impuestoFijo &&
        e1?.codigoreferencia == e2?.codigoreferencia &&
        e1?.factorpuntos == e2?.factorpuntos &&
        e1?.fechaultact == e2?.fechaultact &&
        e1?.codbarra == e2?.codbarra;
  }

  @override
  int hash(MarticulosRecord? e) => const ListEquality().hash([
        e?.codarti,
        e?.artdescrip,
        e?.codbarr,
        e?.codgrupo,
        e?.codprov,
        e?.costo,
        e?.precio1,
        e?.precio2,
        e?.precio3,
        e?.impinterno,
        e?.codalic,
        e?.impintfijo,
        e?.unimed,
        e?.artfoto,
        e?.moneda,
        e?.marca,
        e?.caract,
        e?.impuestoFijo,
        e?.codigoreferencia,
        e?.factorpuntos,
        e?.fechaultact,
        e?.codbarra
      ]);

  @override
  bool isValidKey(Object? o) => o is MarticulosRecord;
}
