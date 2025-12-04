import '../database.dart';

class MmarcasTable extends SupabaseTable<MmarcasRow> {
  @override
  String get tableName => 'mmarcas';

  @override
  MmarcasRow createRow(Map<String, dynamic> data) => MmarcasRow(data);
}

class MmarcasRow extends SupabaseDataRow {
  MmarcasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MmarcasTable();

  String get codmarca => getField<String>('codmarca')!;
  set codmarca(String value) => setField<String>('codmarca', value);

  String? get descripmarca => getField<String>('descripmarca');
  set descripmarca(String? value) => setField<String>('descripmarca', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
