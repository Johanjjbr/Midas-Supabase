import '../database.dart';

class VistaSaldosClientesTable extends SupabaseTable<VistaSaldosClientesRow> {
  @override
  String get tableName => 'vista_saldos_clientes';

  @override
  VistaSaldosClientesRow createRow(Map<String, dynamic> data) =>
      VistaSaldosClientesRow(data);
}

class VistaSaldosClientesRow extends SupabaseDataRow {
  VistaSaldosClientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaSaldosClientesTable();

  String? get codcli => getField<String>('codcli');
  set codcli(String? value) => setField<String>('codcli', value);

  double? get saldoTotal => getField<double>('saldo_total');
  set saldoTotal(double? value) => setField<double>('saldo_total', value);

  DateTime? get ultimoVencimiento => getField<DateTime>('ultimo_vencimiento');
  set ultimoVencimiento(DateTime? value) =>
      setField<DateTime>('ultimo_vencimiento', value);
}
