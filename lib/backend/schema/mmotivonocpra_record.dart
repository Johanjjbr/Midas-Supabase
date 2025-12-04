import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MmotivonocpraRecord extends FirestoreRecord {
  MmotivonocpraRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODNOCPRA" field.
  String? _codnocpra;
  String get codnocpra => _codnocpra ?? '';
  bool hasCodnocpra() => _codnocpra != null;

  // "DESCRIPCION" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  // "MOTIVONOCOMRA" field.
  String? _motivonocomra;
  String get motivonocomra => _motivonocomra ?? '';
  bool hasMotivonocomra() => _motivonocomra != null;

  // "IMAGEN1" field.
  String? _imagen1;
  String get imagen1 => _imagen1 ?? '';
  bool hasImagen1() => _imagen1 != null;

  // "IMAGEN2" field.
  String? _imagen2;
  String get imagen2 => _imagen2 ?? '';
  bool hasImagen2() => _imagen2 != null;

  void _initializeFields() {
    _codnocpra = snapshotData['CODNOCPRA'] as String?;
    _descripcion = snapshotData['DESCRIPCION'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
    _motivonocomra = snapshotData['MOTIVONOCOMRA'] as String?;
    _imagen1 = snapshotData['IMAGEN1'] as String?;
    _imagen2 = snapshotData['IMAGEN2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mmotivonocpra');

  static Stream<MmotivonocpraRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MmotivonocpraRecord.fromSnapshot(s));

  static Future<MmotivonocpraRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MmotivonocpraRecord.fromSnapshot(s));

  static MmotivonocpraRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MmotivonocpraRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MmotivonocpraRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MmotivonocpraRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MmotivonocpraRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MmotivonocpraRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMmotivonocpraRecordData({
  String? codnocpra,
  String? descripcion,
  DateTime? fechaultact,
  String? motivonocomra,
  String? imagen1,
  String? imagen2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODNOCPRA': codnocpra,
      'DESCRIPCION': descripcion,
      'FECHAULTACT': fechaultact,
      'MOTIVONOCOMRA': motivonocomra,
      'IMAGEN1': imagen1,
      'IMAGEN2': imagen2,
    }.withoutNulls,
  );

  return firestoreData;
}

class MmotivonocpraRecordDocumentEquality
    implements Equality<MmotivonocpraRecord> {
  const MmotivonocpraRecordDocumentEquality();

  @override
  bool equals(MmotivonocpraRecord? e1, MmotivonocpraRecord? e2) {
    return e1?.codnocpra == e2?.codnocpra &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechaultact == e2?.fechaultact &&
        e1?.motivonocomra == e2?.motivonocomra &&
        e1?.imagen1 == e2?.imagen1 &&
        e1?.imagen2 == e2?.imagen2;
  }

  @override
  int hash(MmotivonocpraRecord? e) => const ListEquality().hash([
        e?.codnocpra,
        e?.descripcion,
        e?.fechaultact,
        e?.motivonocomra,
        e?.imagen1,
        e?.imagen2
      ]);

  @override
  bool isValidKey(Object? o) => o is MmotivonocpraRecord;
}
