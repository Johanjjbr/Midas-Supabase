import '../database.dart';

class MnotapedcabTable extends SupabaseTable<MnotapedcabRow> {
  @override
  String get tableName => 'mnotapedcab';

  @override
  MnotapedcabRow createRow(Map<String, dynamic> data) => MnotapedcabRow(data);
}

class MnotapedcabRow extends SupabaseDataRow {
  MnotapedcabRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MnotapedcabTable();

  String get notapedid => getField<String>('notapedid')!;
  set notapedid(String value) => setField<String>('notapedid', value);

  int get numpedido => getField<int>('numpedido')!;
  set numpedido(int value) => setField<int>('numpedido', value);

  String get codclie => getField<String>('codclie')!;
  set codclie(String value) => setField<String>('codclie', value);

  DateTime get finicio => getField<DateTime>('finicio')!;
  set finicio(DateTime value) => setField<DateTime>('finicio', value);

  PostgresTime get hinicio => getField<PostgresTime>('hinicio')!;
  set hinicio(PostgresTime value) => setField<PostgresTime>('hinicio', value);

  DateTime get ffin => getField<DateTime>('ffin')!;
  set ffin(DateTime value) => setField<DateTime>('ffin', value);

  PostgresTime get hfin => getField<PostgresTime>('hfin')!;
  set hfin(PostgresTime value) => setField<PostgresTime>('hfin', value);

  DateTime get fentrega => getField<DateTime>('fentrega')!;
  set fentrega(DateTime value) => setField<DateTime>('fentrega', value);

  int get codvend => getField<int>('codvend')!;
  set codvend(int value) => setField<int>('codvend', value);

  String get codcvta => getField<String>('codcvta')!;
  set codcvta(String value) => setField<String>('codcvta', value);

  double get total => getField<double>('total')!;
  set total(double value) => setField<double>('total', value);

  double get neto => getField<double>('neto')!;
  set neto(double value) => setField<double>('neto', value);

  int get items => getField<int>('items')!;
  set items(int value) => setField<int>('items', value);

  double get bonificacion => getField<double>('bonificacion')!;
  set bonificacion(double value) => setField<double>('bonificacion', value);

  String get observaciones => getField<String>('observaciones')!;
  set observaciones(String value) => setField<String>('observaciones', value);

  String get mtsrecno => getField<String>('mtsrecno')!;
  set mtsrecno(String value) => setField<String>('mtsrecno', value);

  double? get latitud => getField<double>('latitud');
  set latitud(double? value) => setField<double>('latitud', value);

  double? get longitud => getField<double>('longitud');
  set longitud(double? value) => setField<double>('longitud', value);
}
