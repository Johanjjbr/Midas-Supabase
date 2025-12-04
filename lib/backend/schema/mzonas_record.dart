import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MzonasRecord extends FirestoreRecord {
  MzonasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODZONA" field.
  String? _codzona;
  String get codzona => _codzona ?? '';
  bool hasCodzona() => _codzona != null;

  // "DESCZONA" field.
  String? _desczona;
  String get desczona => _desczona ?? '';
  bool hasDesczona() => _desczona != null;

  // "OBSERVACIONES" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codzona = snapshotData['CODZONA'] as String?;
    _desczona = snapshotData['DESCZONA'] as String?;
    _observaciones = snapshotData['OBSERVACIONES'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mzonas');

  static Stream<MzonasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MzonasRecord.fromSnapshot(s));

  static Future<MzonasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MzonasRecord.fromSnapshot(s));

  static MzonasRecord fromSnapshot(DocumentSnapshot snapshot) => MzonasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MzonasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MzonasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MzonasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MzonasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMzonasRecordData({
  String? codzona,
  String? desczona,
  String? observaciones,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODZONA': codzona,
      'DESCZONA': desczona,
      'OBSERVACIONES': observaciones,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MzonasRecordDocumentEquality implements Equality<MzonasRecord> {
  const MzonasRecordDocumentEquality();

  @override
  bool equals(MzonasRecord? e1, MzonasRecord? e2) {
    return e1?.codzona == e2?.codzona &&
        e1?.desczona == e2?.desczona &&
        e1?.observaciones == e2?.observaciones &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(MzonasRecord? e) => const ListEquality()
      .hash([e?.codzona, e?.desczona, e?.observaciones, e?.fechaultact]);

  @override
  bool isValidKey(Object? o) => o is MzonasRecord;
}
