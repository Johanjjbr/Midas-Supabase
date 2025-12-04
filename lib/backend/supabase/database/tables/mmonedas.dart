import '../database.dart';

class MmonedasTable extends SupabaseTable<MmonedasRow> {
  @override
  String get tableName => 'mmonedas';

  @override
  MmonedasRow createRow(Map<String, dynamic> data) => MmonedasRow(data);
}

class MmonedasRow extends SupabaseDataRow {
  MmonedasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MmonedasTable();

  String get codmone => getField<String>('codmone')!;
  set codmone(String value) => setField<String>('codmone', value);

  String? get monedescrip => getField<String>('monedescrip');
  set monedescrip(String? value) => setField<String>('monedescrip', value);

  double? get valmone => getField<double>('valmone');
  set valmone(double? value) => setField<double>('valmone', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
