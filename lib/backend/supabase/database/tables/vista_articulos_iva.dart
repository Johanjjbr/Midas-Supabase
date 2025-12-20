import '../database.dart';

class VistaArticulosIvaTable extends SupabaseTable<VistaArticulosIvaRow> {
  @override
  String get tableName => 'vista_articulos_iva';

  @override
  VistaArticulosIvaRow createRow(Map<String, dynamic> data) =>
      VistaArticulosIvaRow(data);
}

class VistaArticulosIvaRow extends SupabaseDataRow {
  VistaArticulosIvaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaArticulosIvaTable();

  String? get codarti => getField<String>('codarti');
  set codarti(String? value) => setField<String>('codarti', value);

  String? get artdescrip => getField<String>('artdescrip');
  set artdescrip(String? value) => setField<String>('artdescrip', value);

  double? get precio1 => getField<double>('precio1');
  set precio1(double? value) => setField<double>('precio1', value);

  String? get codalic => getField<String>('codalic');
  set codalic(String? value) => setField<String>('codalic', value);

  String? get resptrib => getField<String>('resptrib');
  set resptrib(String? value) => setField<String>('resptrib', value);

  double? get iva1 => getField<double>('iva1');
  set iva1(double? value) => setField<double>('iva1', value);
}
