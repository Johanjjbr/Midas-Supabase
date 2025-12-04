import '../database.dart';

class MvendedorTable extends SupabaseTable<MvendedorRow> {
  @override
  String get tableName => 'mvendedor';

  @override
  MvendedorRow createRow(Map<String, dynamic> data) => MvendedorRow(data);
}

class MvendedorRow extends SupabaseDataRow {
  MvendedorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MvendedorTable();

  int get codigo => getField<int>('codigo')!;
  set codigo(int value) => setField<int>('codigo', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get clave => getField<String>('clave');
  set clave(String? value) => setField<String>('clave', value);

  String? get activo => getField<String>('activo');
  set activo(String? value) => setField<String>('activo', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get observacion => getField<String>('observacion');
  set observacion(String? value) => setField<String>('observacion', value);

  String? get zona => getField<String>('zona');
  set zona(String? value) => setField<String>('zona', value);

  String? get permitidocobranza => getField<String>('permitidocobranza');
  set permitidocobranza(String? value) =>
      setField<String>('permitidocobranza', value);

  String? get depositoweb => getField<String>('depositoweb');
  set depositoweb(String? value) => setField<String>('depositoweb', value);

  int? get prefijoweb => getField<int>('prefijoweb');
  set prefijoweb(int? value) => setField<int>('prefijoweb', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
