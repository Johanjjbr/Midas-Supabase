import '../database.dart';

class MgruposTable extends SupabaseTable<MgruposRow> {
  @override
  String get tableName => 'mgrupos';

  @override
  MgruposRow createRow(Map<String, dynamic> data) => MgruposRow(data);
}

class MgruposRow extends SupabaseDataRow {
  MgruposRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MgruposTable();

  String get codgrupo => getField<String>('codgrupo')!;
  set codgrupo(String value) => setField<String>('codgrupo', value);

  String? get grupdesc => getField<String>('grupdesc');
  set grupdesc(String? value) => setField<String>('grupdesc', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
