import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MvendedorRecord extends FirestoreRecord {
  MvendedorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODIGO" field.
  int? _codigo;
  int get codigo => _codigo ?? 0;
  bool hasCodigo() => _codigo != null;

  // "NOMBRE" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "CLAVE" field.
  String? _clave;
  String get clave => _clave ?? '';
  bool hasClave() => _clave != null;

  // "ACTIVO" field.
  String? _activo;
  String get activo => _activo ?? '';
  bool hasActivo() => _activo != null;

  // "OBSERVACION" field.
  String? _observacion;
  String get observacion => _observacion ?? '';
  bool hasObservacion() => _observacion != null;

  // "ZONA" field.
  String? _zona;
  String get zona => _zona ?? '';
  bool hasZona() => _zona != null;

  // "PERMITIDOCOBRANZA" field.
  String? _permitidocobranza;
  String get permitidocobranza => _permitidocobranza ?? '';
  bool hasPermitidocobranza() => _permitidocobranza != null;

  // "DEPOSITOWEB" field.
  String? _depositoweb;
  String get depositoweb => _depositoweb ?? '';
  bool hasDepositoweb() => _depositoweb != null;

  // "PREFIJOWEB" field.
  int? _prefijoweb;
  int get prefijoweb => _prefijoweb ?? 0;
  bool hasPrefijoweb() => _prefijoweb != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "CELULAR" field.
  int? _celular;
  int get celular => _celular ?? 0;
  bool hasCelular() => _celular != null;

  void _initializeFields() {
    _codigo = castToType<int>(snapshotData['CODIGO']);
    _nombre = snapshotData['NOMBRE'] as String?;
    _clave = snapshotData['CLAVE'] as String?;
    _activo = snapshotData['ACTIVO'] as String?;
    _observacion = snapshotData['OBSERVACION'] as String?;
    _zona = snapshotData['ZONA'] as String?;
    _permitidocobranza = snapshotData['PERMITIDOCOBRANZA'] as String?;
    _depositoweb = snapshotData['DEPOSITOWEB'] as String?;
    _prefijoweb = castToType<int>(snapshotData['PREFIJOWEB']);
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _email = snapshotData['email'] as String?;
    _celular = castToType<int>(snapshotData['CELULAR']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mvendedor');

  static Stream<MvendedorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MvendedorRecord.fromSnapshot(s));

  static Future<MvendedorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MvendedorRecord.fromSnapshot(s));

  static MvendedorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MvendedorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MvendedorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MvendedorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MvendedorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MvendedorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMvendedorRecordData({
  int? codigo,
  String? nombre,
  String? clave,
  String? activo,
  String? observacion,
  String? zona,
  String? permitidocobranza,
  String? depositoweb,
  int? prefijoweb,
  DateTime? fechaultact,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? email,
  int? celular,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODIGO': codigo,
      'NOMBRE': nombre,
      'CLAVE': clave,
      'ACTIVO': activo,
      'OBSERVACION': observacion,
      'ZONA': zona,
      'PERMITIDOCOBRANZA': permitidocobranza,
      'DEPOSITOWEB': depositoweb,
      'PREFIJOWEB': prefijoweb,
      'FECHAULTACT': fechaultact,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'email': email,
      'CELULAR': celular,
    }.withoutNulls,
  );

  return firestoreData;
}

class MvendedorRecordDocumentEquality implements Equality<MvendedorRecord> {
  const MvendedorRecordDocumentEquality();

  @override
  bool equals(MvendedorRecord? e1, MvendedorRecord? e2) {
    return e1?.codigo == e2?.codigo &&
        e1?.nombre == e2?.nombre &&
        e1?.clave == e2?.clave &&
        e1?.activo == e2?.activo &&
        e1?.observacion == e2?.observacion &&
        e1?.zona == e2?.zona &&
        e1?.permitidocobranza == e2?.permitidocobranza &&
        e1?.depositoweb == e2?.depositoweb &&
        e1?.prefijoweb == e2?.prefijoweb &&
        e1?.fechaultact == e2?.fechaultact &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.celular == e2?.celular;
  }

  @override
  int hash(MvendedorRecord? e) => const ListEquality().hash([
        e?.codigo,
        e?.nombre,
        e?.clave,
        e?.activo,
        e?.observacion,
        e?.zona,
        e?.permitidocobranza,
        e?.depositoweb,
        e?.prefijoweb,
        e?.fechaultact,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.email,
        e?.celular
      ]);

  @override
  bool isValidKey(Object? o) => o is MvendedorRecord;
}
