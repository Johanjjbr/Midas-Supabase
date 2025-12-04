import '../database.dart';

class McondvtaTable extends SupabaseTable<McondvtaRow> {
  @override
  String get tableName => 'mcondvta';

  @override
  McondvtaRow createRow(Map<String, dynamic> data) => McondvtaRow(data);
}

class McondvtaRow extends SupabaseDataRow {
  McondvtaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => McondvtaTable();

  String get codcvta => getField<String>('codcvta')!;
  set codcvta(String value) => setField<String>('codcvta', value);

  String get cvtadescrip => getField<String>('cvtadescrip')!;
  set cvtadescrip(String value) => setField<String>('cvtadescrip', value);

  String? get codtcobroasoc => getField<String>('codtcobroasoc');
  set codtcobroasoc(String? value) => setField<String>('codtcobroasoc', value);

  String get inactiva => getField<String>('inactiva')!;
  set inactiva(String value) => setField<String>('inactiva', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
