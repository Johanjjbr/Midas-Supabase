import 'package:sqflite/sqflite.dart';

/// BEGIN CLEANCLIENTES
Future performCleanClientes(
  Database database,
) {
  final query = '''
DELETE FROM mclientes;
''';
  return database.rawQuery(query);
}

/// END CLEANCLIENTES

/// BEGIN INSERTARSALDO
Future performInsertarSaldo(
  Database database, {
  String? codcli,
  double? vsaldo,
  String? vvencimiento,
}) {
  final query = '''
INSERT OR REPLACE INTO local_saldos 
(codcli, saldo_total, ultimo_vencimiento) 
VALUES 
(?, ?, ?);
''';
  return database.rawQuery(query);
}

/// END INSERTARSALDO

/// BEGIN CLEANARTICULOS
Future performCleanArticulos(
  Database database,
) {
  final query = '''
DELETE FROM marticulos;
''';
  return database.rawQuery(query);
}

/// END CLEANARTICULOS

/// BEGIN CLEANLISTACABE
Future performCleanListaCabe(
  Database database,
) {
  final query = '''
DELETE FROM mlistacabe;

''';
  return database.rawQuery(query);
}

/// END CLEANLISTACABE

/// BEGIN CLEANLISTAPRECIOS
Future performCleanListaPrecios(
  Database database,
) {
  final query = '''
DELETE FROM mlistasprecios;

''';
  return database.rawQuery(query);
}

/// END CLEANLISTAPRECIOS

/// BEGIN CLEANLISTSTOKC
Future performCleanListStokc(
  Database database,
) {
  final query = '''
DELETE FROM mmstock;

''';
  return database.rawQuery(query);
}

/// END CLEANLISTSTOKC

/// BEGIN CLEANMARCAS
Future performCleanMarcas(
  Database database,
) {
  final query = '''
DELETE FROM mmarcas;
''';
  return database.rawQuery(query);
}

/// END CLEANMARCAS

/// BEGIN CLEANMONEDAS
Future performCleanMonedas(
  Database database,
) {
  final query = '''
DELETE FROM mmonedas;
''';
  return database.rawQuery(query);
}

/// END CLEANMONEDAS

/// BEGIN CLEANGRUPOS
Future performCleanGrupos(
  Database database,
) {
  final query = '''
DELETE FROM mgrupos;
''';
  return database.rawQuery(query);
}

/// END CLEANGRUPOS

/// BEGIN INSERTARENCABEZADOPEDIDO
Future performInsertarEncabezadoPedido(
  Database database, {
  String? notaPedId,
  int? numPedido,
  String? codClie,
  String? fInicio,
  String? hInicio,
  String? fFin,
  String? hFin,
  String? fEntrega,
  int? codVend,
  String? codCvta,
  double? total,
  double? neto,
  int? totalItems,
  double? bonificacion,
  String? observaciones,
  double? latitud,
  double? longitud,
}) {
  final query = '''
INSERT INTO mnotapedcab (
  NOTAPEDID, 
  NUMPEDIDO, 
  CODCLIE, 
  FINICIO, 
  HINICIO, 
  FFIN, 
  HFIN, 
  FENTREGA, 
  CODVEND, 
  CODCVTA, 
  TOTAL, 
  NETO, 
  ITEMS, 
  BONIFICACION, 
  OBSERVACIONES, 
  MTSRECNO, 
  LATITUD, 
  LONGITUD
) VALUES (
  '${notaPedId}', 
  ${numPedido}, 
  '${codClie}', 
  '${fInicio}', 
  '${hInicio}', 
  '${fFin}', 
  '${hFin}', 
  '${fEntrega}', 
  ${codVend}, 
  '${codCvta}', 
  ${total}, 
  ${neto}, 
  ${totalItems}, 
  ${bonificacion}, 
  '${observaciones}', 
  '0', 
  ${latitud}, 
  ${longitud}
);
''';
  return database.rawQuery(query);
}

/// END INSERTARENCABEZADOPEDIDO

/// BEGIN ACTUALIZARCIERREPEDIDO
Future performActualizarCierrePedido(
  Database database, {
  String? notaPedId,
  String? fFin,
  String? hFin,
  double? total,
  double? neto,
  int? totalItems,
  String? observaciones,
}) {
  final query = '''
UPDATE mnotapedcab
SET 
  FFIN = '${fFin}',
  HFIN = '${hFin}',
  TOTAL = ${total},
  NETO = ${neto},
  ITEMS = ${totalItems},
  OBSERVACIONES = '${observaciones}',
  -- Marcamos el registro para que sepa que fue modificado recientemente si usas sincronización
  MTSRECNO = '1' 
WHERE NOTAPEDID = '${notaPedId}';
''';
  return database.rawQuery(query);
}

/// END ACTUALIZARCIERREPEDIDO

/// BEGIN NOTAPEDID
Future performNotaPedId(
  Database database, {
  String? notaPedId,
  int? renglon,
  int? numPedido,
  String? codClie,
  String? codArti,
  double? cantidad,
  double? importeori,
  double? importeuni,
  double? bonifPorc,
  double? bonifMonto,
  double? iva,
  String? listaPrec,
  String? fecha,
  String? abm,
}) {
  final query = '''
INSERT INTO mnotapedite (
  NOTAPEDID, 
  RENGLON, 
  NUMPEDIDO, 
  CODCLIE, 
  CODARTI, 
  CANTIDAD, 
  IMPUNIORIG, 
  IMPOUNITARIO, 
  BONIFICACION, 
  IMPOBONIFICA, 
  ALICUOTAIVA, 
  LISTPREC, 
  FECULTACT, 
  ABM
) VALUES (
  '${notaPedId}',   -- String: UUID
  ${renglon},       -- Integer: Contador del Loop
  ${numPedido},     -- Integer: Nro Pedido
  '${codClie}',     -- String: ID Cliente
  '${codArti}',     -- String: ID Articulo
  ${cantidad},      -- Double
  ${importeori},        -- Double: IMPUNIORIG (Asumimos precio base igual al final si no hay desc.)
  ${importeuni},        -- Double: IMPOUNITARIO (Precio final)
  ${bonifPorc},     -- Double: % Bonificacion
  ${bonifMonto},    -- Double: Monto calculado de la bonif
  ${iva},           -- Double: Alicuota IVA
  '${listaPrec}',   -- String: Lista de Precios
  '${fecha}',       -- String: Fecha actual
  '${abm}'          -- String: Generalmente 'A'
);
''';
  return database.rawQuery(query);
}

/// END NOTAPEDID

/// BEGIN LIMPIARITEMSPEDIDO
Future performLimpiarItemsPedido(
  Database database, {
  String? notaPedId,
}) {
  final query = '''
DELETE FROM mnotapedite WHERE NOTAPEDID = '${notaPedId}';
''';
  return database.rawQuery(query);
}

/// END LIMPIARITEMSPEDIDO

/// BEGIN ELIMINARBORRADOR
Future performEliminarBorrador(
  Database database, {
  String? notaPedId,
}) {
  final query = '''
BEGIN TRANSACTION;
DELETE FROM mnotapedite WHERE NOTAPEDID = '${notaPedId}';
DELETE FROM mnotapedcab WHERE NOTAPEDID = '${notaPedId}';
COMMIT;
''';
  return database.rawQuery(query);
}

/// END ELIMINARBORRADOR
