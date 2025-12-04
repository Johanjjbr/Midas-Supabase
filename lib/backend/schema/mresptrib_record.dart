import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MresptribRecord extends FirestoreRecord {
  MresptribRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "RESPTRIB" field.
  String? _resptrib;
  String get resptrib => _resptrib ?? '';
  bool hasResptrib() => _resptrib != null;

  // "DESCRIPCION" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _resptrib = snapshotData['RESPTRIB'] as String?;
    _descripcion = snapshotData['DESCRIPCION'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mresptrib');

  static Stream<MresptribRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MresptribRecord.fromSnapshot(s));

  static Future<MresptribRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MresptribRecord.fromSnapshot(s));

  static MresptribRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MresptribRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MresptribRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MresptribRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MresptribRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MresptribRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMresptribRecordData({
  String? resptrib,
  String? descripcion,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RESPTRIB': resptrib,
      'DESCRIPCION': descripcion,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MresptribRecordDocumentEquality implements Equality<MresptribRecord> {
  const MresptribRecordDocumentEquality();

  @override
  bool equals(MresptribRecord? e1, MresptribRecord? e2) {
    return e1?.resptrib == e2?.resptrib &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(MresptribRecord? e) =>
      const ListEquality().hash([e?.resptrib, e?.descripcion, e?.fechaultact]);

  @override
  bool isValidKey(Object? o) => o is MresptribRecord;
}
