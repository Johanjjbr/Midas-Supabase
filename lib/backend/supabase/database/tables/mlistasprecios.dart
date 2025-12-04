import '../database.dart';

class MlistaspreciosTable extends SupabaseTable<MlistaspreciosRow> {
  @override
  String get tableName => 'mlistasprecios';

  @override
  MlistaspreciosRow createRow(Map<String, dynamic> data) =>
      MlistaspreciosRow(data);
}

class MlistaspreciosRow extends SupabaseDataRow {
  MlistaspreciosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MlistaspreciosTable();

  String get codlista => getField<String>('codlista')!;
  set codlista(String value) => setField<String>('codlista', value);

  String? get codarti => getField<String>('codarti');
  set codarti(String? value) => setField<String>('codarti', value);

  String? get descripart => getField<String>('descripart');
  set descripart(String? value) => setField<String>('descripart', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);

  double? get importe => getField<double>('importe');
  set importe(double? value) => setField<double>('importe', value);

  double? get iva => getField<double>('iva');
  set iva(double? value) => setField<double>('iva', value);
}
