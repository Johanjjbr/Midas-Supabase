import '../database.dart';

class MmstockNormalizadoTable extends SupabaseTable<MmstockNormalizadoRow> {
  @override
  String get tableName => 'mmstock_normalizado';

  @override
  MmstockNormalizadoRow createRow(Map<String, dynamic> data) =>
      MmstockNormalizadoRow(data);
}

class MmstockNormalizadoRow extends SupabaseDataRow {
  MmstockNormalizadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MmstockNormalizadoTable();

  String? get codarti => getField<String>('codarti');
  set codarti(String? value) => setField<String>('codarti', value);

  String? get coddepo => getField<String>('coddepo');
  set coddepo(String? value) => setField<String>('coddepo', value);

  double? get cantstock => getField<double>('cantstock');
  set cantstock(double? value) => setField<double>('cantstock', value);

  DateTime? get fechaultact => getField<DateTime>('fechaultact');
  set fechaultact(DateTime? value) => setField<DateTime>('fechaultact', value);
}
