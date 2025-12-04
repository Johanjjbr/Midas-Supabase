import '../database.dart';

class MalicuotasTable extends SupabaseTable<MalicuotasRow> {
  @override
  String get tableName => 'malicuotas';

  @override
  MalicuotasRow createRow(Map<String, dynamic> data) => MalicuotasRow(data);
}

class MalicuotasRow extends SupabaseDataRow {
  MalicuotasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MalicuotasTable();

  String get codalic => getField<String>('codalic')!;
  set codalic(String value) => setField<String>('codalic', value);

  String? get alicdesc => getField<String>('alicdesc');
  set alicdesc(String? value) => setField<String>('alicdesc', value);

  String get resptrib => getField<String>('resptrib')!;
  set resptrib(String value) => setField<String>('resptrib', value);

  String? get descrtrib => getField<String>('descrtrib');
  set descrtrib(String? value) => setField<String>('descrtrib', value);

  double? get iva1 => getField<double>('iva1');
  set iva1(double? value) => setField<double>('iva1', value);

  double? get iva2 => getField<double>('iva2');
  set iva2(double? value) => setField<double>('iva2', value);
}
