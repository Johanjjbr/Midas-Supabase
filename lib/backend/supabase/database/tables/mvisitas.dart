import '../database.dart';

class MvisitasTable extends SupabaseTable<MvisitasRow> {
  @override
  String get tableName => 'mvisitas';

  @override
  MvisitasRow createRow(Map<String, dynamic> data) => MvisitasRow(data);
}

class MvisitasRow extends SupabaseDataRow {
  MvisitasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MvisitasTable();

  String get visitasid => getField<String>('visitasid')!;
  set visitasid(String value) => setField<String>('visitasid', value);

  String get codcli => getField<String>('codcli')!;
  set codcli(String value) => setField<String>('codcli', value);

  DateTime get fecha => getField<DateTime>('fecha')!;
  set fecha(DateTime value) => setField<DateTime>('fecha', value);

  PostgresTime get hora => getField<PostgresTime>('hora')!;
  set hora(PostgresTime value) => setField<PostgresTime>('hora', value);

  String get codnocpra => getField<String>('codnocpra')!;
  set codnocpra(String value) => setField<String>('codnocpra', value);

  double get latitud => getField<double>('latitud')!;
  set latitud(double value) => setField<double>('latitud', value);

  double get longitud => getField<double>('longitud')!;
  set longitud(double value) => setField<double>('longitud', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  int get codvendedor => getField<int>('codvendedor')!;
  set codvendedor(int value) => setField<int>('codvendedor', value);

  DateTime get fecultact => getField<DateTime>('fecultact')!;
  set fecultact(DateTime value) => setField<DateTime>('fecultact', value);

  String get abm => getField<String>('abm')!;
  set abm(String value) => setField<String>('abm', value);
}
