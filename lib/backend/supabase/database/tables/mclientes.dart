import '../database.dart';

class MclientesTable extends SupabaseTable<MclientesRow> {
  @override
  String get tableName => 'mclientes';

  @override
  MclientesRow createRow(Map<String, dynamic> data) => MclientesRow(data);
}

class MclientesRow extends SupabaseDataRow {
  MclientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MclientesTable();

  String get codcli => getField<String>('codcli')!;
  set codcli(String value) => setField<String>('codcli', value);

  String get razonsoc => getField<String>('razonsoc')!;
  set razonsoc(String value) => setField<String>('razonsoc', value);

  String? get domicilio => getField<String>('domicilio');
  set domicilio(String? value) => setField<String>('domicilio', value);

  String? get localidad => getField<String>('localidad');
  set localidad(String? value) => setField<String>('localidad', value);

  int? get pcia => getField<int>('pcia');
  set pcia(int? value) => setField<int>('pcia', value);

  String? get codpostal => getField<String>('codpostal');
  set codpostal(String? value) => setField<String>('codpostal', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get resptrib => getField<String>('resptrib');
  set resptrib(String? value) => setField<String>('resptrib', value);

  String get cuit => getField<String>('cuit')!;
  set cuit(String value) => setField<String>('cuit', value);

  String? get preciodefault => getField<String>('preciodefault');
  set preciodefault(String? value) => setField<String>('preciodefault', value);

  double? get limite => getField<double>('limite');
  set limite(double? value) => setField<double>('limite', value);

  int? get vencodi => getField<int>('vencodi');
  set vencodi(int? value) => setField<int>('vencodi', value);

  String? get zona => getField<String>('zona');
  set zona(String? value) => setField<String>('zona', value);

  String? get txtnota => getField<String>('txtnota');
  set txtnota(String? value) => setField<String>('txtnota', value);

  String? get codcvta => getField<String>('codcvta');
  set codcvta(String? value) => setField<String>('codcvta', value);

  String? get cateCli => getField<String>('cate_cli');
  set cateCli(String? value) => setField<String>('cate_cli', value);

  String? get inactivo => getField<String>('inactivo');
  set inactivo(String? value) => setField<String>('inactivo', value);

  String? get barrio => getField<String>('barrio');
  set barrio(String? value) => setField<String>('barrio', value);

  String? get pais => getField<String>('pais');
  set pais(String? value) => setField<String>('pais', value);

  String? get coddesc => getField<String>('coddesc');
  set coddesc(String? value) => setField<String>('coddesc', value);

  String get centralizador => getField<String>('centralizador')!;
  set centralizador(String value) => setField<String>('centralizador', value);

  String? get listaprec => getField<String>('listaprec');
  set listaprec(String? value) => setField<String>('listaprec', value);

  int? get cobrador => getField<int>('cobrador');
  set cobrador(int? value) => setField<int>('cobrador', value);

  String? get hojaruta => getField<String>('hojaruta');
  set hojaruta(String? value) => setField<String>('hojaruta', value);

  int? get ordenruta => getField<int>('ordenruta');
  set ordenruta(int? value) => setField<int>('ordenruta', value);

  String? get diavisita => getField<String>('diavisita');
  set diavisita(String? value) => setField<String>('diavisita', value);

  String? get noexportamobile => getField<String>('noexportamobile');
  set noexportamobile(String? value) =>
      setField<String>('noexportamobile', value);

  String? get nousaprecporcant => getField<String>('nousaprecporcant');
  set nousaprecporcant(String? value) =>
      setField<String>('nousaprecporcant', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
