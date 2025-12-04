import '../database.dart';

class MjerarquiaTable extends SupabaseTable<MjerarquiaRow> {
  @override
  String get tableName => 'mjerarquia';

  @override
  MjerarquiaRow createRow(Map<String, dynamic> data) => MjerarquiaRow(data);
}

class MjerarquiaRow extends SupabaseDataRow {
  MjerarquiaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MjerarquiaTable();

  int get codigopadre => getField<int>('codigopadre')!;
  set codigopadre(int value) => setField<int>('codigopadre', value);

  int? get nivel => getField<int>('nivel');
  set nivel(int? value) => setField<int>('nivel', value);

  int get codigohijo => getField<int>('codigohijo')!;
  set codigohijo(int value) => setField<int>('codigohijo', value);

  DateTime? get fechaultact => getField<DateTime>('fechaultact');
  set fechaultact(DateTime? value) => setField<DateTime>('fechaultact', value);
}
