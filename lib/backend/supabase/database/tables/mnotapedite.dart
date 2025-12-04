import '../database.dart';

class MnotapediteTable extends SupabaseTable<MnotapediteRow> {
  @override
  String get tableName => 'mnotapedite';

  @override
  MnotapediteRow createRow(Map<String, dynamic> data) => MnotapediteRow(data);
}

class MnotapediteRow extends SupabaseDataRow {
  MnotapediteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MnotapediteTable();

  String get notapedid => getField<String>('notapedid')!;
  set notapedid(String value) => setField<String>('notapedid', value);

  int get renglon => getField<int>('renglon')!;
  set renglon(int value) => setField<int>('renglon', value);

  int get numpedido => getField<int>('numpedido')!;
  set numpedido(int value) => setField<int>('numpedido', value);

  String get codclie => getField<String>('codclie')!;
  set codclie(String value) => setField<String>('codclie', value);

  String get codarti => getField<String>('codarti')!;
  set codarti(String value) => setField<String>('codarti', value);

  double get cantidad => getField<double>('cantidad')!;
  set cantidad(double value) => setField<double>('cantidad', value);

  double get impuniorig => getField<double>('impuniorig')!;
  set impuniorig(double value) => setField<double>('impuniorig', value);

  double get impounitario => getField<double>('impounitario')!;
  set impounitario(double value) => setField<double>('impounitario', value);

  double get bonificacion => getField<double>('bonificacion')!;
  set bonificacion(double value) => setField<double>('bonificacion', value);

  double get impobonifica => getField<double>('impobonifica')!;
  set impobonifica(double value) => setField<double>('impobonifica', value);

  double get alicuotaiva => getField<double>('alicuotaiva')!;
  set alicuotaiva(double value) => setField<double>('alicuotaiva', value);

  String get listprec => getField<String>('listprec')!;
  set listprec(String value) => setField<String>('listprec', value);

  DateTime get fecultact => getField<DateTime>('fecultact')!;
  set fecultact(DateTime value) => setField<DateTime>('fecultact', value);

  String get abm => getField<String>('abm')!;
  set abm(String value) => setField<String>('abm', value);
}
