import '../database.dart';

class MmstockTable extends SupabaseTable<MmstockRow> {
  @override
  String get tableName => 'mmstock';

  @override
  MmstockRow createRow(Map<String, dynamic> data) => MmstockRow(data);
}

class MmstockRow extends SupabaseDataRow {
  MmstockRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MmstockTable();

  String get codarti => getField<String>('codarti')!;
  set codarti(String value) => setField<String>('codarti', value);

  String get coddepo => getField<String>('coddepo')!;
  set coddepo(String value) => setField<String>('coddepo', value);

  double? get cantstock => getField<double>('cantstock');
  set cantstock(double? value) => setField<double>('cantstock', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
