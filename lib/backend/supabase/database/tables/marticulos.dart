import '../database.dart';

class MarticulosTable extends SupabaseTable<MarticulosRow> {
  @override
  String get tableName => 'marticulos';

  @override
  MarticulosRow createRow(Map<String, dynamic> data) => MarticulosRow(data);
}

class MarticulosRow extends SupabaseDataRow {
  MarticulosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MarticulosTable();

  String get codarti => getField<String>('codarti')!;
  set codarti(String value) => setField<String>('codarti', value);

  String get artdescrip => getField<String>('artdescrip')!;
  set artdescrip(String value) => setField<String>('artdescrip', value);

  String? get codbarra => getField<String>('codbarra');
  set codbarra(String? value) => setField<String>('codbarra', value);

  String? get codgrupo => getField<String>('codgrupo');
  set codgrupo(String? value) => setField<String>('codgrupo', value);

  String? get codprov => getField<String>('codprov');
  set codprov(String? value) => setField<String>('codprov', value);

  double? get costo => getField<double>('costo');
  set costo(double? value) => setField<double>('costo', value);

  double? get precio1 => getField<double>('precio1');
  set precio1(double? value) => setField<double>('precio1', value);

  double? get precio2 => getField<double>('precio2');
  set precio2(double? value) => setField<double>('precio2', value);

  double? get precio3 => getField<double>('precio3');
  set precio3(double? value) => setField<double>('precio3', value);

  double? get impinterno => getField<double>('impinterno');
  set impinterno(double? value) => setField<double>('impinterno', value);

  String? get codalic => getField<String>('codalic');
  set codalic(String? value) => setField<String>('codalic', value);

  double? get impintfijo => getField<double>('impintfijo');
  set impintfijo(double? value) => setField<double>('impintfijo', value);

  String? get unimed => getField<String>('unimed');
  set unimed(String? value) => setField<String>('unimed', value);

  String? get artfoto => getField<String>('artfoto');
  set artfoto(String? value) => setField<String>('artfoto', value);

  String? get moneda => getField<String>('moneda');
  set moneda(String? value) => setField<String>('moneda', value);

  String get marca => getField<String>('marca')!;
  set marca(String value) => setField<String>('marca', value);

  String get caract => getField<String>('caract')!;
  set caract(String value) => setField<String>('caract', value);

  double? get impuestoFijo => getField<double>('impuesto_fijo');
  set impuestoFijo(double? value) => setField<double>('impuesto_fijo', value);

  String get codigoreferencia => getField<String>('codigoreferencia')!;
  set codigoreferencia(String value) =>
      setField<String>('codigoreferencia', value);

  double? get factorpuntos => getField<double>('factorpuntos');
  set factorpuntos(double? value) => setField<double>('factorpuntos', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
