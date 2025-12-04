import '../database.dart';

class MproveedTable extends SupabaseTable<MproveedRow> {
  @override
  String get tableName => 'mproveed';

  @override
  MproveedRow createRow(Map<String, dynamic> data) => MproveedRow(data);
}

class MproveedRow extends SupabaseDataRow {
  MproveedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MproveedTable();

  String get codprovee => getField<String>('codprovee')!;
  set codprovee(String value) => setField<String>('codprovee', value);

  String? get razonsoc => getField<String>('razonsoc');
  set razonsoc(String? value) => setField<String>('razonsoc', value);

  DateTime? get fechaultact => getField<DateTime>('fechaultact');
  set fechaultact(DateTime? value) => setField<DateTime>('fechaultact', value);
}
