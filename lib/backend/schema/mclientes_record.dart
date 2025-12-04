import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MclientesRecord extends FirestoreRecord {
  MclientesRecord._(
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

  // "DOMICILIO" field.
  String? _domicilio;
  String get domicilio => _domicilio ?? '';
  bool hasDomicilio() => _domicilio != null;

  // "LOCALIDAD" field.
  String? _localidad;
  String get localidad => _localidad ?? '';
  bool hasLocalidad() => _localidad != null;

  // "PCIA" field.
  int? _pcia;
  int get pcia => _pcia ?? 0;
  bool hasPcia() => _pcia != null;

  // "CODPOSTAL" field.
  String? _codpostal;
  String get codpostal => _codpostal ?? '';
  bool hasCodpostal() => _codpostal != null;

  // "TELEFONO" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "EMAIL" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "RESPTRIB" field.
  String? _resptrib;
  String get resptrib => _resptrib ?? '';
  bool hasResptrib() => _resptrib != null;

  // "CUIT" field.
  String? _cuit;
  String get cuit => _cuit ?? '';
  bool hasCuit() => _cuit != null;

  // "PRECIODEFAULT" field.
  String? _preciodefault;
  String get preciodefault => _preciodefault ?? '';
  bool hasPreciodefault() => _preciodefault != null;

  // "LIMITE" field.
  double? _limite;
  double get limite => _limite ?? 0.0;
  bool hasLimite() => _limite != null;

  // "VENCODI" field.
  int? _vencodi;
  int get vencodi => _vencodi ?? 0;
  bool hasVencodi() => _vencodi != null;

  // "ZONA" field.
  String? _zona;
  String get zona => _zona ?? '';
  bool hasZona() => _zona != null;

  // "TXTNOTA" field.
  String? _txtnota;
  String get txtnota => _txtnota ?? '';
  bool hasTxtnota() => _txtnota != null;

  // "CODCVTA" field.
  String? _codcvta;
  String get codcvta => _codcvta ?? '';
  bool hasCodcvta() => _codcvta != null;

  // "CATE_CLI" field.
  String? _cateCli;
  String get cateCli => _cateCli ?? '';
  bool hasCateCli() => _cateCli != null;

  // "INACTIVO" field.
  String? _inactivo;
  String get inactivo => _inactivo ?? '';
  bool hasInactivo() => _inactivo != null;

  // "BARRIO" field.
  String? _barrio;
  String get barrio => _barrio ?? '';
  bool hasBarrio() => _barrio != null;

  // "PAIS" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "CODDESC" field.
  String? _coddesc;
  String get coddesc => _coddesc ?? '';
  bool hasCoddesc() => _coddesc != null;

  // "CENTRALIZADOR" field.
  String? _centralizador;
  String get centralizador => _centralizador ?? '';
  bool hasCentralizador() => _centralizador != null;

  // "LISTAPREC" field.
  String? _listaprec;
  String get listaprec => _listaprec ?? '';
  bool hasListaprec() => _listaprec != null;

  // "COBRADOR" field.
  int? _cobrador;
  int get cobrador => _cobrador ?? 0;
  bool hasCobrador() => _cobrador != null;

  // "HOJARUTA" field.
  String? _hojaruta;
  String get hojaruta => _hojaruta ?? '';
  bool hasHojaruta() => _hojaruta != null;

  // "ORDENRUTA" field.
  int? _ordenruta;
  int get ordenruta => _ordenruta ?? 0;
  bool hasOrdenruta() => _ordenruta != null;

  // "DIAVISITA" field.
  String? _diavisita;
  String get diavisita => _diavisita ?? '';
  bool hasDiavisita() => _diavisita != null;

  // "NOEXPORTAMOBILE" field.
  String? _noexportamobile;
  String get noexportamobile => _noexportamobile ?? '';
  bool hasNoexportamobile() => _noexportamobile != null;

  // "NOUSAPRECPORCANT" field.
  String? _nousaprecporcant;
  String get nousaprecporcant => _nousaprecporcant ?? '';
  bool hasNousaprecporcant() => _nousaprecporcant != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  // "LATLOG" field.
  LatLng? _latlog;
  LatLng? get latlog => _latlog;
  bool hasLatlog() => _latlog != null;

  void _initializeFields() {
    _codcli = snapshotData['CODCLI'] as String?;
    _razonsoc = snapshotData['RAZONSOC'] as String?;
    _domicilio = snapshotData['DOMICILIO'] as String?;
    _localidad = snapshotData['LOCALIDAD'] as String?;
    _pcia = castToType<int>(snapshotData['PCIA']);
    _codpostal = snapshotData['CODPOSTAL'] as String?;
    _telefono = snapshotData['TELEFONO'] as String?;
    _email = snapshotData['EMAIL'] as String?;
    _resptrib = snapshotData['RESPTRIB'] as String?;
    _cuit = snapshotData['CUIT'] as String?;
    _preciodefault = snapshotData['PRECIODEFAULT'] as String?;
    _limite = castToType<double>(snapshotData['LIMITE']);
    _vencodi = castToType<int>(snapshotData['VENCODI']);
    _zona = snapshotData['ZONA'] as String?;
    _txtnota = snapshotData['TXTNOTA'] as String?;
    _codcvta = snapshotData['CODCVTA'] as String?;
    _cateCli = snapshotData['CATE_CLI'] as String?;
    _inactivo = snapshotData['INACTIVO'] as String?;
    _barrio = snapshotData['BARRIO'] as String?;
    _pais = snapshotData['PAIS'] as String?;
    _coddesc = snapshotData['CODDESC'] as String?;
    _centralizador = snapshotData['CENTRALIZADOR'] as String?;
    _listaprec = snapshotData['LISTAPREC'] as String?;
    _cobrador = castToType<int>(snapshotData['COBRADOR']);
    _hojaruta = snapshotData['HOJARUTA'] as String?;
    _ordenruta = castToType<int>(snapshotData['ORDENRUTA']);
    _diavisita = snapshotData['DIAVISITA'] as String?;
    _noexportamobile = snapshotData['NOEXPORTAMOBILE'] as String?;
    _nousaprecporcant = snapshotData['NOUSAPRECPORCANT'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
    _latlog = snapshotData['LATLOG'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mclientes');

  static Stream<MclientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MclientesRecord.fromSnapshot(s));

  static Future<MclientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MclientesRecord.fromSnapshot(s));

  static MclientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MclientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MclientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MclientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MclientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MclientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMclientesRecordData({
  String? codcli,
  String? razonsoc,
  String? domicilio,
  String? localidad,
  int? pcia,
  String? codpostal,
  String? telefono,
  String? email,
  String? resptrib,
  String? cuit,
  String? preciodefault,
  double? limite,
  int? vencodi,
  String? zona,
  String? txtnota,
  String? codcvta,
  String? cateCli,
  String? inactivo,
  String? barrio,
  String? pais,
  String? coddesc,
  String? centralizador,
  String? listaprec,
  int? cobrador,
  String? hojaruta,
  int? ordenruta,
  String? diavisita,
  String? noexportamobile,
  String? nousaprecporcant,
  DateTime? fechaultact,
  LatLng? latlog,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODCLI': codcli,
      'RAZONSOC': razonsoc,
      'DOMICILIO': domicilio,
      'LOCALIDAD': localidad,
      'PCIA': pcia,
      'CODPOSTAL': codpostal,
      'TELEFONO': telefono,
      'EMAIL': email,
      'RESPTRIB': resptrib,
      'CUIT': cuit,
      'PRECIODEFAULT': preciodefault,
      'LIMITE': limite,
      'VENCODI': vencodi,
      'ZONA': zona,
      'TXTNOTA': txtnota,
      'CODCVTA': codcvta,
      'CATE_CLI': cateCli,
      'INACTIVO': inactivo,
      'BARRIO': barrio,
      'PAIS': pais,
      'CODDESC': coddesc,
      'CENTRALIZADOR': centralizador,
      'LISTAPREC': listaprec,
      'COBRADOR': cobrador,
      'HOJARUTA': hojaruta,
      'ORDENRUTA': ordenruta,
      'DIAVISITA': diavisita,
      'NOEXPORTAMOBILE': noexportamobile,
      'NOUSAPRECPORCANT': nousaprecporcant,
      'FECHAULTACT': fechaultact,
      'LATLOG': latlog,
    }.withoutNulls,
  );

  return firestoreData;
}

class MclientesRecordDocumentEquality implements Equality<MclientesRecord> {
  const MclientesRecordDocumentEquality();

  @override
  bool equals(MclientesRecord? e1, MclientesRecord? e2) {
    return e1?.codcli == e2?.codcli &&
        e1?.razonsoc == e2?.razonsoc &&
        e1?.domicilio == e2?.domicilio &&
        e1?.localidad == e2?.localidad &&
        e1?.pcia == e2?.pcia &&
        e1?.codpostal == e2?.codpostal &&
        e1?.telefono == e2?.telefono &&
        e1?.email == e2?.email &&
        e1?.resptrib == e2?.resptrib &&
        e1?.cuit == e2?.cuit &&
        e1?.preciodefault == e2?.preciodefault &&
        e1?.limite == e2?.limite &&
        e1?.vencodi == e2?.vencodi &&
        e1?.zona == e2?.zona &&
        e1?.txtnota == e2?.txtnota &&
        e1?.codcvta == e2?.codcvta &&
        e1?.cateCli == e2?.cateCli &&
        e1?.inactivo == e2?.inactivo &&
        e1?.barrio == e2?.barrio &&
        e1?.pais == e2?.pais &&
        e1?.coddesc == e2?.coddesc &&
        e1?.centralizador == e2?.centralizador &&
        e1?.listaprec == e2?.listaprec &&
        e1?.cobrador == e2?.cobrador &&
        e1?.hojaruta == e2?.hojaruta &&
        e1?.ordenruta == e2?.ordenruta &&
        e1?.diavisita == e2?.diavisita &&
        e1?.noexportamobile == e2?.noexportamobile &&
        e1?.nousaprecporcant == e2?.nousaprecporcant &&
        e1?.fechaultact == e2?.fechaultact &&
        e1?.latlog == e2?.latlog;
  }

  @override
  int hash(MclientesRecord? e) => const ListEquality().hash([
        e?.codcli,
        e?.razonsoc,
        e?.domicilio,
        e?.localidad,
        e?.pcia,
        e?.codpostal,
        e?.telefono,
        e?.email,
        e?.resptrib,
        e?.cuit,
        e?.preciodefault,
        e?.limite,
        e?.vencodi,
        e?.zona,
        e?.txtnota,
        e?.codcvta,
        e?.cateCli,
        e?.inactivo,
        e?.barrio,
        e?.pais,
        e?.coddesc,
        e?.centralizador,
        e?.listaprec,
        e?.cobrador,
        e?.hojaruta,
        e?.ordenruta,
        e?.diavisita,
        e?.noexportamobile,
        e?.nousaprecporcant,
        e?.fechaultact,
        e?.latlog
      ]);

  @override
  bool isValidKey(Object? o) => o is MclientesRecord;
}
