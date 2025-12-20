import '../database.dart';

class VistaUltimaVisitaTable extends SupabaseTable<VistaUltimaVisitaRow> {
  @override
  String get tableName => 'vista_ultima_visita';

  @override
  VistaUltimaVisitaRow createRow(Map<String, dynamic> data) =>
      VistaUltimaVisitaRow(data);
}

class VistaUltimaVisitaRow extends SupabaseDataRow {
  VistaUltimaVisitaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaUltimaVisitaTable();

  String? get codcli => getField<String>('codcli');
  set codcli(String? value) => setField<String>('codcli', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  PostgresTime? get hora => getField<PostgresTime>('hora');
  set hora(PostgresTime? value) => setField<PostgresTime>('hora', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  int? get codvendedor => getField<int>('codvendedor');
  set codvendedor(int? value) => setField<int>('codvendedor', value);

  DateTime? get fecultact => getField<DateTime>('fecultact');
  set fecultact(DateTime? value) => setField<DateTime>('fecultact', value);
}
