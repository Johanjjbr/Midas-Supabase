import '../database.dart';

class MlistacabeTable extends SupabaseTable<MlistacabeRow> {
  @override
  String get tableName => 'mlistacabe';

  @override
  MlistacabeRow createRow(Map<String, dynamic> data) => MlistacabeRow(data);
}

class MlistacabeRow extends SupabaseDataRow {
  MlistacabeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MlistacabeTable();

  String get codlista => getField<String>('codlista')!;
  set codlista(String value) => setField<String>('codlista', value);

  String? get listadescrip => getField<String>('listadescrip');
  set listadescrip(String? value) => setField<String>('listadescrip', value);

  String? get obslista => getField<String>('obslista');
  set obslista(String? value) => setField<String>('obslista', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  DateTime? get vigentedesde => getField<DateTime>('vigentedesde');
  set vigentedesde(DateTime? value) =>
      setField<DateTime>('vigentedesde', value);

  DateTime? get vigentehasta => getField<DateTime>('vigentehasta');
  set vigentehasta(DateTime? value) =>
      setField<DateTime>('vigentehasta', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
