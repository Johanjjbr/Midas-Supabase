import '../database.dart';

class McatecliTable extends SupabaseTable<McatecliRow> {
  @override
  String get tableName => 'mcatecli';

  @override
  McatecliRow createRow(Map<String, dynamic> data) => McatecliRow(data);
}

class McatecliRow extends SupabaseDataRow {
  McatecliRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => McatecliTable();

  String get codcate => getField<String>('codcate')!;
  set codcate(String value) => setField<String>('codcate', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
