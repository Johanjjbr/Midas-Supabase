import '../database.dart';

class MmotivonocpraTable extends SupabaseTable<MmotivonocpraRow> {
  @override
  String get tableName => 'mmotivonocpra';

  @override
  MmotivonocpraRow createRow(Map<String, dynamic> data) =>
      MmotivonocpraRow(data);
}

class MmotivonocpraRow extends SupabaseDataRow {
  MmotivonocpraRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MmotivonocpraTable();

  String get codnocpra => getField<String>('codnocpra')!;
  set codnocpra(String value) => setField<String>('codnocpra', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
