import '../database.dart';

class MexpercliTable extends SupabaseTable<MexpercliRow> {
  @override
  String get tableName => 'mexpercli';

  @override
  MexpercliRow createRow(Map<String, dynamic> data) => MexpercliRow(data);
}

class MexpercliRow extends SupabaseDataRow {
  MexpercliRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MexpercliTable();

  String? get codigocliente => getField<String>('codigocliente');
  set codigocliente(String? value) => setField<String>('codigocliente', value);

  String? get desccli => getField<String>('desccli');
  set desccli(String? value) => setField<String>('desccli', value);

  String get codigopercepcion => getField<String>('codigopercepcion')!;
  set codigopercepcion(String value) =>
      setField<String>('codigopercepcion', value);

  String? get nroexencion => getField<String>('nroexencion');
  set nroexencion(String? value) => setField<String>('nroexencion', value);

  DateTime? get fechaexencion => getField<DateTime>('fechaexencion');
  set fechaexencion(DateTime? value) =>
      setField<DateTime>('fechaexencion', value);

  double? get porcreduccion => getField<double>('porcreduccion');
  set porcreduccion(double? value) => setField<double>('porcreduccion', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);

  PostgresTime get horaultact => getField<PostgresTime>('horaultact')!;
  set horaultact(PostgresTime value) =>
      setField<PostgresTime>('horaultact', value);

  double? get porcentajeAPercibir => getField<double>('porcentaje_a_percibir');
  set porcentajeAPercibir(double? value) =>
      setField<double>('porcentaje_a_percibir', value);

  String? get motivodeexencion => getField<String>('motivodeexencion');
  set motivodeexencion(String? value) =>
      setField<String>('motivodeexencion', value);
}
