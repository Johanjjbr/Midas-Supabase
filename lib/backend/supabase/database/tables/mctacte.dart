import '../database.dart';

class MctacteTable extends SupabaseTable<MctacteRow> {
  @override
  String get tableName => 'mctacte';

  @override
  MctacteRow createRow(Map<String, dynamic> data) => MctacteRow(data);
}

class MctacteRow extends SupabaseDataRow {
  MctacteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MctacteTable();

  String get codcli => getField<String>('codcli')!;
  set codcli(String value) => setField<String>('codcli', value);

  String? get razonsoc => getField<String>('razonsoc');
  set razonsoc(String? value) => setField<String>('razonsoc', value);

  String? get codalic => getField<String>('codalic');
  set codalic(String? value) => setField<String>('codalic', value);

  DateTime get fechaemi => getField<DateTime>('fechaemi')!;
  set fechaemi(DateTime value) => setField<DateTime>('fechaemi', value);

  int? get codvend => getField<int>('codvend');
  set codvend(int? value) => setField<int>('codvend', value);

  String get letra => getField<String>('letra')!;
  set letra(String value) => setField<String>('letra', value);

  int get prefijo => getField<int>('prefijo')!;
  set prefijo(int value) => setField<int>('prefijo', value);

  String get numcpbte => getField<String>('numcpbte')!;
  set numcpbte(String value) => setField<String>('numcpbte', value);

  String get cuota => getField<String>('cuota')!;
  set cuota(String value) => setField<String>('cuota', value);

  String get ndas => getField<String>('ndas')!;
  set ndas(String value) => setField<String>('ndas', value);

  String get recno => getField<String>('recno')!;
  set recno(String value) => setField<String>('recno', value);

  double? get imporig => getField<double>('imporig');
  set imporig(double? value) => setField<double>('imporig', value);

  double? get impocanc => getField<double>('impocanc');
  set impocanc(double? value) => setField<double>('impocanc', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  DateTime? get venc => getField<DateTime>('venc');
  set venc(DateTime? value) => setField<DateTime>('venc', value);

  String? get ccosto => getField<String>('ccosto');
  set ccosto(String? value) => setField<String>('ccosto', value);

  String? get codcvta => getField<String>('codcvta');
  set codcvta(String? value) => setField<String>('codcvta', value);

  String? get codmone => getField<String>('codmone');
  set codmone(String? value) => setField<String>('codmone', value);

  String? get tdndas => getField<String>('tdndas');
  set tdndas(String? value) => setField<String>('tdndas', value);

  String get codcom => getField<String>('codcom')!;
  set codcom(String value) => setField<String>('codcom', value);

  String get renglon => getField<String>('renglon')!;
  set renglon(String value) => setField<String>('renglon', value);

  String? get codsuc => getField<String>('codsuc');
  set codsuc(String? value) => setField<String>('codsuc', value);

  DateTime get fechaultact => getField<DateTime>('fechaultact')!;
  set fechaultact(DateTime value) => setField<DateTime>('fechaultact', value);
}
