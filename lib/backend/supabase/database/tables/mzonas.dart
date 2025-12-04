import '../database.dart';

class MzonasTable extends SupabaseTable<MzonasRow> {
  @override
  String get tableName => 'mzonas';

  @override
  MzonasRow createRow(Map<String, dynamic> data) => MzonasRow(data);
}

class MzonasRow extends SupabaseDataRow {
  MzonasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MzonasTable();

  String get codzona => getField<String>('codzona')!;
  set codzona(String value) => setField<String>('codzona', value);

  String? get desczona => getField<String>('desczona');
  set desczona(String? value) => setField<String>('desczona', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
