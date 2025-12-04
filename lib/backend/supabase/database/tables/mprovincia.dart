import '../database.dart';

class MprovinciaTable extends SupabaseTable<MprovinciaRow> {
  @override
  String get tableName => 'mprovincia';

  @override
  MprovinciaRow createRow(Map<String, dynamic> data) => MprovinciaRow(data);
}

class MprovinciaRow extends SupabaseDataRow {
  MprovinciaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MprovinciaTable();

  String get codpcia => getField<String>('codpcia')!;
  set codpcia(String value) => setField<String>('codpcia', value);

  String get nompcia => getField<String>('nompcia')!;
  set nompcia(String value) => setField<String>('nompcia', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
