import '../database.dart';

class MdepositoTable extends SupabaseTable<MdepositoRow> {
  @override
  String get tableName => 'mdeposito';

  @override
  MdepositoRow createRow(Map<String, dynamic> data) => MdepositoRow(data);
}

class MdepositoRow extends SupabaseDataRow {
  MdepositoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MdepositoTable();

  String get coddepo => getField<String>('coddepo')!;
  set coddepo(String value) => setField<String>('coddepo', value);

  String? get depodescrip => getField<String>('depodescrip');
  set depodescrip(String? value) => setField<String>('depodescrip', value);

  String? get prefijo => getField<String>('prefijo');
  set prefijo(String? value) => setField<String>('prefijo', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
