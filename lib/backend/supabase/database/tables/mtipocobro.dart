import '../database.dart';

class MtipocobroTable extends SupabaseTable<MtipocobroRow> {
  @override
  String get tableName => 'mtipocobro';

  @override
  MtipocobroRow createRow(Map<String, dynamic> data) => MtipocobroRow(data);
}

class MtipocobroRow extends SupabaseDataRow {
  MtipocobroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MtipocobroTable();

  String get codtcobro => getField<String>('codtcobro')!;
  set codtcobro(String value) => setField<String>('codtcobro', value);

  String? get tcobrodescrip => getField<String>('tcobrodescrip');
  set tcobrodescrip(String? value) => setField<String>('tcobrodescrip', value);

  String? get habilitado => getField<String>('habilitado');
  set habilitado(String? value) => setField<String>('habilitado', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
