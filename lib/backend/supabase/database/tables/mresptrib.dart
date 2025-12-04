import '../database.dart';

class MresptribTable extends SupabaseTable<MresptribRow> {
  @override
  String get tableName => 'mresptrib';

  @override
  MresptribRow createRow(Map<String, dynamic> data) => MresptribRow(data);
}

class MresptribRow extends SupabaseDataRow {
  MresptribRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MresptribTable();

  String get resptrib => getField<String>('resptrib')!;
  set resptrib(String value) => setField<String>('resptrib', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
