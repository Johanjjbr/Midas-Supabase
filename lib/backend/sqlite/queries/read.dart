import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETCLIENTES
Future<List<GetClientesRow>> performGetClientes(
  Database database,
) {
  final query = '''
SELECT * FROM mclientes LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetClientesRow(d));
}

class GetClientesRow extends SqliteRow {
  GetClientesRow(Map<String, dynamic> data) : super(data);

  String? get razonsoc => data['RAZONSOC'] as String?;
  String? get codcli => data['CODCLI'] as String?;
}

/// END GETCLIENTES

/// BEGIN GETARTICULOS
Future<List<GetArticulosRow>> performGetArticulos(
  Database database, {
  String? codGrupo,
}) {
  final query = '''
SELECT * FROM marticulos 
WHERE CODGRUPO = '${codGrupo}'
''';
  return _readQuery(database, query, (d) => GetArticulosRow(d));
}

class GetArticulosRow extends SqliteRow {
  GetArticulosRow(Map<String, dynamic> data) : super(data);

  String? get codarti => data['CODARTI'] as String?;
  String? get artdescrip => data['ARTDESCRIP'] as String?;
  double? get costo => data['COSTO'] as double?;
  double? get precio1 => data['PRECIO1'] as double?;
  double? get precio2 => data['PRECIO2'] as double?;
  double? get precio3 => data['PRECIO3'] as double?;
  double? get impinterno => data['IMPINTERNO'] as double?;
  String? get codalic => data['CODALIC'] as String?;
  double? get impintfijo => data['IMPINTFIJO'] as double?;
  String? get moneda => data['MONEDA'] as String?;
  String? get marca => data['MARCA'] as String?;
  String? get caract => data['CARACT'] as String?;
  String? get unimed => data['UNIMED'] as String?;
}

/// END GETARTICULOS

/// BEGIN GETLISTADEPRECIOS
Future<List<GetListadePreciosRow>> performGetListadePrecios(
  Database database,
) {
  final query = '''
SELECT * FROM mlistasprecios LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetListadePreciosRow(d));
}

class GetListadePreciosRow extends SqliteRow {
  GetListadePreciosRow(Map<String, dynamic> data) : super(data);

  String? get codlista => data['CODLISTA'] as String?;
  String? get codarti => data['CODARTI'] as String?;
  String? get descripart => data['DESCRIPART'] as String?;
}

/// END GETLISTADEPRECIOS

/// BEGIN GETLISTADEENCABEZADOS
Future<List<GetListadeEncabezadosRow>> performGetListadeEncabezados(
  Database database,
) {
  final query = '''
SELECT * FROM mlistacabe LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetListadeEncabezadosRow(d));
}

class GetListadeEncabezadosRow extends SqliteRow {
  GetListadeEncabezadosRow(Map<String, dynamic> data) : super(data);

  String? get codlista => data['CODLISTA'] as String?;
  String? get listadescrip => data['LISTADESCRIP'] as String?;
  String? get obslista => data['OBSLISTA'] as String?;
}

/// END GETLISTADEENCABEZADOS

/// BEGIN GETLISTADESTOCK
Future<List<GetListadeStockRow>> performGetListadeStock(
  Database database,
) {
  final query = '''
SELECT * FROM mmstock LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetListadeStockRow(d));
}

class GetListadeStockRow extends SqliteRow {
  GetListadeStockRow(Map<String, dynamic> data) : super(data);

  String? get codarti => data['CODARTI'] as String?;
  String? get coddepo => data['CODDEPO'] as String?;
}

/// END GETLISTADESTOCK

/// BEGIN GETMARCAS
Future<List<GetMarcasRow>> performGetMarcas(
  Database database,
) {
  final query = '''
SELECT * FROM mmarcas LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetMarcasRow(d));
}

class GetMarcasRow extends SqliteRow {
  GetMarcasRow(Map<String, dynamic> data) : super(data);

  String? get codmarca => data['CODMARCA'] as String?;
  String? get descripmarca => data['DESCRIPMARCA'] as String?;
}

/// END GETMARCAS

/// BEGIN GETGRUPOS
Future<List<GetGruposRow>> performGetGrupos(
  Database database,
) {
  final query = '''
SELECT * FROM mgrupos LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetGruposRow(d));
}

class GetGruposRow extends SqliteRow {
  GetGruposRow(Map<String, dynamic> data) : super(data);

  String? get codgrupo => data['CODGRUPO'] as String?;
  String? get grupdesc => data['GRUPDESC'] as String?;
}

/// END GETGRUPOS

/// BEGIN GETARTICULOSYSTOCK
Future<List<GetArticulosyStockRow>> performGetArticulosyStock(
  Database database, {
  String? codGrupo,
  String? codDepo,
}) {
  final query = '''
SELECT 
  T1.*, 
  COALESCE(T2.CANTSTOCK, 0.0) as STOCK_ACTUAL
FROM marticulos T1
LEFT JOIN mmstock T2 
  ON T1.CODARTI = T2.CODARTI 
  AND T2.CODDEPO = '${codDepo}'
WHERE T1.CODGRUPO = '${codGrupo}'
''';
  return _readQuery(database, query, (d) => GetArticulosyStockRow(d));
}

class GetArticulosyStockRow extends SqliteRow {
  GetArticulosyStockRow(Map<String, dynamic> data) : super(data);

  String? get codarti => data['CODARTI'] as String?;
  String? get artdescrip => data['ARTDESCRIP'] as String?;
  double? get costo => data['COSTO'] as double?;
  double? get precio1 => data['PRECIO1'] as double?;
  double? get precio2 => data['PRECIO2'] as double?;
  double? get precio3 => data['PRECIO3'] as double?;
  double? get impinterno => data['IMPINTERNO'] as double?;
  String? get codalic => data['CODALIC'] as String?;
  double? get impintfijo => data['IMPINTFIJO'] as double?;
  String? get moneda => data['MONEDA'] as String?;
  String? get marca => data['MARCA'] as String?;
  String? get caract => data['CARACT'] as String?;
  String? get unimed => data['UNIMED'] as String?;
  double? get stockActual => data['STOCK_ACTUAL'] as double?;
}

/// END GETARTICULOSYSTOCK

/// BEGIN GETGRUPOSCONFILTROS
Future<List<GetGruposconFiltrosRow>> performGetGruposconFiltros(
  Database database, {
  String? searchTerm,
}) {
  final query = '''
SELECT * FROM mgrupos 
WHERE (CODGRUPO LIKE '%${searchTerm}%' OR GRUPDESC LIKE '%${searchTerm}%')
-- LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetGruposconFiltrosRow(d));
}

class GetGruposconFiltrosRow extends SqliteRow {
  GetGruposconFiltrosRow(Map<String, dynamic> data) : super(data);

  String? get codgrupo => data['CODGRUPO'] as String?;
  String? get grupdesc => data['GRUPDESC'] as String?;
}

/// END GETGRUPOSCONFILTROS

/// BEGIN GETCLIENTESCONFILTRO
Future<List<GetClientesConFiltroRow>> performGetClientesConFiltro(
  Database database, {
  String? searchTerm,
}) {
  final query = '''
SELECT * FROM mclientes
WHERE (
  CODCLI LIKE '%${searchTerm}%' OR 
  RAZONSOC LIKE '%${searchTerm}%' OR 
  DOMICILIO LIKE '%${searchTerm}%' OR 
  CUIT LIKE '%${searchTerm}%'
)
LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetClientesConFiltroRow(d));
}

class GetClientesConFiltroRow extends SqliteRow {
  GetClientesConFiltroRow(Map<String, dynamic> data) : super(data);

  String? get razonsoc => data['RAZONSOC'] as String?;
  String? get codcli => data['CODCLI'] as String?;
  String? get domicilio => data['DOMICILIO'] as String?;
  String? get localidad => data['LOCALIDAD'] as String?;
  int? get pcia => data['PCIA'] as int?;
  String? get codpostal => data['CODPOSTAL'] as String?;
  String? get telefono => data['TELEFONO'] as String?;
  String? get email => data['EMAIL'] as String?;
  String? get resptrib => data['RESPTRIB'] as String?;
  String? get cuit => data['CUIT'] as String?;
  String? get preciodefault => data['PRECIODEFAULT'] as String?;
  double? get limite => data['LIMITE'] as double?;
  String? get zona => data['ZONA'] as String?;
  String? get txtnota => data['TXTNOTA'] as String?;
  String? get codcvta => data['CODCVTA'] as String?;
  String? get cateCli => data['CATE_CLI'] as String?;
  String? get inactivo => data['INACTIVO'] as String?;
  String? get barrio => data['BARRIO'] as String?;
  String? get pais => data['PAIS'] as String?;
  String? get coddesc => data['CODDESC'] as String?;
  String? get listaprec => data['LISTAPREC'] as String?;
  String? get cobrador => data['COBRADOR'] as String?;
  String? get hojaruta => data['HOJARUTA'] as String?;
  String? get ordenruta => data['ORDENRUTA'] as String?;
  String? get diavisita => data['DIAVISITA'] as String?;
}

/// END GETCLIENTESCONFILTRO

/// BEGIN GETCLIENTESCONFILTROYORDEN
Future<List<GetClientesConFiltroyOrdenRow>> performGetClientesConFiltroyOrden(
  Database database, {
  String? searchTerm,
  String? filterBy,
  String? sortBy,
}) {
  final query = '''
SELECT * FROM mclientes
WHERE 
  -- 1. Buscador (Texto)
  (CODCLI LIKE '%${searchTerm}%' OR RAZONSOC LIKE '%${searchTerm}%')
  
  AND 
  
  -- 2. Filtros (Logic Gate)
  (
    ('${filterBy}' = 'TODOS') -- Si es TODOS, pasa siempre
    OR 
    ('${filterBy}' = 'VISITADOS' AND FECHAULTACT = date('now')) -- Ejemplo: Visitados hoy
    OR 
    ('${filterBy}' = 'DEUDORES' AND LIMITE > 0) -- ⚠️ OJO: Usa tu campo de DEUDA real aquí
  )

ORDER BY 
  -- 3. Ordenamiento Dinámico
  CASE WHEN '${sortBy}' = 'ALFA' THEN RAZONSOC END ASC,
  CASE WHEN '${sortBy}' = 'CODIGO' THEN CODCLI END ASC,
  CASE WHEN '${sortBy}' = 'DEUDA' THEN LIMITE END DESC -- ⚠️ Usa tu campo de DEUDA
''';
  return _readQuery(database, query, (d) => GetClientesConFiltroyOrdenRow(d));
}

class GetClientesConFiltroyOrdenRow extends SqliteRow {
  GetClientesConFiltroyOrdenRow(Map<String, dynamic> data) : super(data);

  String? get razonsoc => data['RAZONSOC'] as String?;
  String? get codcli => data['CODCLI'] as String?;
  String? get domicilio => data['DOMICILIO'] as String?;
  String? get localidad => data['LOCALIDAD'] as String?;
  int? get pcia => data['PCIA'] as int?;
  String? get codpostal => data['CODPOSTAL'] as String?;
  String? get telefono => data['TELEFONO'] as String?;
  String? get email => data['EMAIL'] as String?;
  String? get resptrib => data['RESPTRIB'] as String?;
  String? get cuit => data['CUIT'] as String?;
  String? get preciodefault => data['PRECIODEFAULT'] as String?;
  double? get limite => data['LIMITE'] as double?;
  String? get zona => data['ZONA'] as String?;
  String? get txtnota => data['TXTNOTA'] as String?;
  String? get codcvta => data['CODCVTA'] as String?;
  String? get cateCli => data['CATE_CLI'] as String?;
  String? get inactivo => data['INACTIVO'] as String?;
  String? get barrio => data['BARRIO'] as String?;
  String? get pais => data['PAIS'] as String?;
  String? get coddesc => data['CODDESC'] as String?;
  String? get listaprec => data['LISTAPREC'] as String?;
  String? get cobrador => data['COBRADOR'] as String?;
  String? get hojaruta => data['HOJARUTA'] as String?;
  String? get ordenruta => data['ORDENRUTA'] as String?;
  String? get diavisita => data['DIAVISITA'] as String?;
}

/// END GETCLIENTESCONFILTROYORDEN

/// BEGIN GETCLIENTESVISITASSALDOSCONFILTROYORDEN
Future<List<GetClientesVisitasSaldosConFiltroyOrdenRow>>
    performGetClientesVisitasSaldosConFiltroyOrden(
  Database database, {
  String? searchTerm,
  String? filterBy,
  String? sortBy,
}) {
  final query = '''
SELECT 
  T1.*, 
  -- 1. Traemos la Deuda Real Calculada
  COALESCE(Deuda.saldo_total, 0) AS SALDO_REAL,
  
  -- 2. Traemos datos de la Última Visita
  Visita.FECHA AS ULT_VISITA_FECHA,
  Visita.HORA AS ULT_VISITA_HORA,
  Visita.OBSERVACIONES AS ULT_VISITA_OBS

FROM mclientes T1

-- JOIN PARA CALCULAR DEUDA (Simula tu vista de saldos)
LEFT JOIN (
  SELECT CODCLI, SUM(TOTAL) AS saldo_total
  FROM mctacte
  GROUP BY CODCLI
) AS Deuda ON T1.CODCLI = Deuda.CODCLI

-- JOIN PARA ÚLTIMA VISITA (Simula tu vista con DISTINCT ON)
LEFT JOIN (
  SELECT m1.CODCLI, m1.FECHA, m1.HORA, m1.OBSERVACIONES
  FROM mvisitas m1
  -- Aquí buscamos la visita más reciente comparando fecha y hora
  WHERE (m1.FECHA || m1.HORA) = (
    SELECT MAX(m2.FECHA || m2.HORA)
    FROM mvisitas m2
    WHERE m2.CODCLI = m1.CODCLI
  )
  GROUP BY m1.CODCLI -- Aseguramos una sola fila por cliente
) AS Visita ON T1.CODCLI = Visita.CODCLI

WHERE 
  -- 3. Buscador (Igual que antes)
  (T1.CODCLI LIKE '%${searchTerm}%' OR T1.RAZONSOC LIKE '%${searchTerm}%')
  
  AND 
  
  -- 4. Filtros (Logic Gate Actualizado)
  (
    ('${filterBy}' = 'TODOS') 
    OR 
    ('${filterBy}' = 'VISITADOS' AND T1.FECHAULTACT = date('now')) 
    OR 
    -- ⚠️ AHORA FILTRAMOS POR LA DEUDA REAL CALCULADA
    ('${filterBy}' = 'DEUDORES' AND COALESCE(Deuda.saldo_total, 0) > 0) 
  )

ORDER BY 
  -- 5. Ordenamiento Dinámico
  CASE WHEN '${sortBy}' = 'ALFA' THEN T1.RAZONSOC END ASC,
  CASE WHEN '${sortBy}' = 'CODIGO' THEN T1.CODCLI END ASC,
  -- ⚠️ ORDENAMOS POR LA DEUDA REAL
  CASE WHEN '${sortBy}' = 'DEUDA' THEN COALESCE(Deuda.saldo_total, 0) END DESC,
  -- Opcional: Ordenar por última visita
  CASE WHEN '${sortBy}' = 'VISITA' THEN Visita.FECHA END DESC
''';
  return _readQuery(
      database, query, (d) => GetClientesVisitasSaldosConFiltroyOrdenRow(d));
}

class GetClientesVisitasSaldosConFiltroyOrdenRow extends SqliteRow {
  GetClientesVisitasSaldosConFiltroyOrdenRow(Map<String, dynamic> data)
      : super(data);

  String? get razonsoc => data['RAZONSOC'] as String?;
  String? get codcli => data['CODCLI'] as String?;
  String? get domicilio => data['DOMICILIO'] as String?;
  String? get localidad => data['LOCALIDAD'] as String?;
  int? get pcia => data['PCIA'] as int?;
  String? get codpostal => data['CODPOSTAL'] as String?;
  String? get telefono => data['TELEFONO'] as String?;
  String? get email => data['EMAIL'] as String?;
  String? get resptrib => data['RESPTRIB'] as String?;
  String? get cuit => data['CUIT'] as String?;
  String? get preciodefault => data['PRECIODEFAULT'] as String?;
  double? get limite => data['LIMITE'] as double?;
  String? get zona => data['ZONA'] as String?;
  String? get txtnota => data['TXTNOTA'] as String?;
  String? get codcvta => data['CODCVTA'] as String?;
  String? get cateCli => data['CATE_CLI'] as String?;
  String? get inactivo => data['INACTIVO'] as String?;
  String? get barrio => data['BARRIO'] as String?;
  String? get pais => data['PAIS'] as String?;
  String? get coddesc => data['CODDESC'] as String?;
  String? get listaprec => data['LISTAPREC'] as String?;
  String? get cobrador => data['COBRADOR'] as String?;
  String? get hojaruta => data['HOJARUTA'] as String?;
  String? get ordenruta => data['ORDENRUTA'] as String?;
  String? get diavisita => data['DIAVISITA'] as String?;
  double? get saldoReal => data['SALDO_REAL'] as double?;
  String? get ultVisitaFecha => data['ULT_VISITA_FECHA'] as String?;
  String? get ultVisitaObs => data['ULT_VISITA_OBS'] as String?;
}

/// END GETCLIENTESVISITASSALDOSCONFILTROYORDEN

/// BEGIN GETCUENTASCORRIENTES
Future<List<GetCuentasCorrientesRow>> performGetCuentasCorrientes(
  Database database,
) {
  final query = '''
SELECT * FROM mctacte LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetCuentasCorrientesRow(d));
}

class GetCuentasCorrientesRow extends SqliteRow {
  GetCuentasCorrientesRow(Map<String, dynamic> data) : super(data);

  String? get razonsoc => data['RAZONSOC'] as String?;
  String? get codcli => data['CODCLI'] as String?;
}

/// END GETCUENTASCORRIENTES

/// BEGIN GETMVISITAS
Future<List<GetmvisitasRow>> performGetmvisitas(
  Database database,
) {
  final query = '''
SELECT * FROM mvisitas LIMIT 50;
''';
  return _readQuery(database, query, (d) => GetmvisitasRow(d));
}

class GetmvisitasRow extends SqliteRow {
  GetmvisitasRow(Map<String, dynamic> data) : super(data);

  String? get visitasid => data['VISITASID'] as String?;
  String? get codcli => data['CODCLI'] as String?;
}

/// END GETMVISITAS

/// BEGIN GETTIMELINEACTIVITY
Future<List<GetTimelineActivityRow>> performGetTimelineActivity(
  Database database,
) {
  final query = '''
SELECT 
  'PEDIDO' AS TIPO,
  P.NOTAPEDID AS ID_UNICO,
  P.CODCLIE AS CODIGO_CLIENTE,
  IFNULL(C.RAZONSOC, 'Cliente Desconocido') AS NOMBRE_CLIENTE,
  P.HINICIO AS HORA_MOSTRAR,
  P.FINICIO AS FECHA_ORDEN,
  CAST(P.ITEMS AS TEXT) || ' items - ' || CAST(P.TOTAL AS TEXT) AS DETALLE_PRINCIPAL,
  CASE 
    WHEN (P.MTSRECNO IS NOT NULL AND P.MTSRECNO <> '') THEN 1 
    ELSE 0 
  END AS ES_SINCRONIZADO
FROM mnotapedcab P
LEFT JOIN mclientes C ON P.CODCLIE = C.CODCLI
WHERE date(P.FINICIO) = date('now', 'localtime')

UNION ALL

SELECT 
  'VISITA' AS TIPO,
  V.VISITASID AS ID_UNICO,
  V.CODCLI AS CODIGO_CLIENTE,
  IFNULL(C.RAZONSOC, 'Cliente Desconocido') AS NOMBRE_CLIENTE,
  V.HORA AS HORA_MOSTRAR,
  V.FECHA AS FECHA_ORDEN,
  IFNULL(V.OBSERVACIONES, 'Visita realizada') AS DETALLE_PRINCIPAL,
  CASE 
    WHEN (V.FECULTACT IS NOT NULL AND V.FECULTACT <> '') THEN 1 
    ELSE 0 
  END AS ES_SINCRONIZADO
FROM mvisitas V
LEFT JOIN mclientes C ON V.CODCLI = C.CODCLI
WHERE (V.CODNOCPRA IS NULL OR V.CODNOCPRA = '') 
  AND date(V.FECHA) = date('now', 'localtime')

UNION ALL

SELECT 
  'NO_COMPRA' AS TIPO,
  V.VISITASID AS ID_UNICO,
  V.CODCLI AS CODIGO_CLIENTE,
  IFNULL(C.RAZONSOC, 'Cliente Desconocido') AS NOMBRE_CLIENTE,
  V.HORA AS HORA_MOSTRAR,
  V.FECHA AS FECHA_ORDEN,
  'Motivo No Compra: ' || V.CODNOCPRA AS DETALLE_PRINCIPAL,
  CASE 
    WHEN (V.FECULTACT IS NOT NULL AND V.FECULTACT <> '') THEN 1 
    ELSE 0 
  END AS ES_SINCRONIZADO
FROM mvisitas V
LEFT JOIN mclientes C ON V.CODCLI = C.CODCLI
WHERE (V.CODNOCPRA IS NOT NULL AND V.CODNOCPRA <> '') 
  AND date(V.FECHA) = date('now', 'localtime')

ORDER BY FECHA_ORDEN DESC, HORA_MOSTRAR DESC;

''';
  return _readQuery(database, query, (d) => GetTimelineActivityRow(d));
}

class GetTimelineActivityRow extends SqliteRow {
  GetTimelineActivityRow(Map<String, dynamic> data) : super(data);

  String? get tipo => data['TIPO'] as String?;
  String? get idUnico => data['ID_UNICO'] as String?;
  String? get codigoCliente => data['CODIGO_CLIENTE'] as String?;
  String? get nombreCliente => data['NOMBRE_CLIENTE'] as String?;
  String? get horaMostrar => data['HORA_MOSTRAR'] as String?;
  String? get fechaOrden => data['FECHA_ORDEN'] as String?;
  String? get detallePrincipal => data['DETALLE_PRINCIPAL'] as String?;
  String? get esSincronizado => data['ES_SINCRONIZADO'] as String?;
}

/// END GETTIMELINEACTIVITY

/// BEGIN GETARTICULOSCONFILTRO
Future<List<GetArticulosConFiltroRow>> performGetArticulosConFiltro(
  Database database, {
  String? searchTerm,
  String? codDepo,
}) {
  final query = '''
SELECT 
  Filtered.*, 
  COALESCE(T2.CANTSTOCK, 0.0) AS STOCK_ACTUAL
FROM (
  SELECT * FROM marticulos 
  WHERE CODGRUPO LIKE '%${searchTerm}%' 
     OR ARTDESCRIP LIKE '%${searchTerm}%' 
     OR CODARTI LIKE '%${searchTerm}%'
  LIMIT 50
) AS Filtered
LEFT JOIN mmstock T2 
  ON Filtered.CODARTI = T2.CODARTI 
  AND T2.CODDEPO = '${codDepo}';
''';
  return _readQuery(database, query, (d) => GetArticulosConFiltroRow(d));
}

class GetArticulosConFiltroRow extends SqliteRow {
  GetArticulosConFiltroRow(Map<String, dynamic> data) : super(data);

  String? get codarti => data['CODARTI'] as String?;
  String? get artdescrip => data['ARTDESCRIP'] as String?;
  double? get costo => data['COSTO'] as double?;
  double? get precio1 => data['PRECIO1'] as double?;
  double? get precio2 => data['PRECIO2'] as double?;
  double? get precio3 => data['PRECIO3'] as double?;
  double? get impinterno => data['IMPINTERNO'] as double?;
  String? get codalic => data['CODALIC'] as String?;
  double? get impintfijo => data['IMPINTFIJO'] as double?;
  String? get moneda => data['MONEDA'] as String?;
  String? get marca => data['MARCA'] as String?;
  String? get caract => data['CARACT'] as String?;
  String? get unimed => data['UNIMED'] as String?;
  double? get stockActual => data['STOCK_ACTUAL'] as double?;
}

/// END GETARTICULOSCONFILTRO

/// BEGIN GETITEMSBORRADOR
Future<List<GetItemsBorradorRow>> performGetItemsBorrador(
  Database database, {
  String? notaPedId,
}) {
  final query = '''
SELECT * FROM mnotapedite
WHERE NOTAPEDID = '${notaPedId}';
''';
  return _readQuery(database, query, (d) => GetItemsBorradorRow(d));
}

class GetItemsBorradorRow extends SqliteRow {
  GetItemsBorradorRow(Map<String, dynamic> data) : super(data);

  String? get notapedid => data['NOTAPEDID'] as String?;
  int? get renglon => data['RENGLON'] as int?;
  int? get numpedido => data['NUMPEDIDO'] as int?;
  String? get codclie => data['CODCLIE'] as String?;
  String? get codarti => data['CODARTI'] as String?;
  int? get cantidad => data['CANTIDAD'] as int?;
  double? get impuniorig => data['IMPUNIORIG'] as double?;
  double? get impounitario => data['IMPOUNITARIO'] as double?;
  double? get bonificacion => data['BONIFICACION'] as double?;
  double? get impobonifica => data['IMPOBONIFICA'] as double?;
  double? get alicuotaiva => data['ALICUOTAIVA'] as double?;
  double? get listprec => data['LISTPREC'] as double?;
  String? get fecultact => data['FECULTACT'] as String?;
  String? get abm => data['ABM'] as String?;
}

/// END GETITEMSBORRADOR

/// BEGIN CHECKBORRADORCLIENTE
Future<List<CheckBorradorClienteRow>> performCheckBorradorCliente(
  Database database, {
  String? codClie,
}) {
  final query = '''
SELECT * FROM mnotapedcab
WHERE 
  CODCLIE = '${codClie}' 
AND (FFIN IS NULL OR FFIN = '' OR FFIN = '0')
ORDER BY FINICIO DESC, HINICIO DESC
LIMIT 1;
''';
  return _readQuery(database, query, (d) => CheckBorradorClienteRow(d));
}

class CheckBorradorClienteRow extends SqliteRow {
  CheckBorradorClienteRow(Map<String, dynamic> data) : super(data);

  String? get notapedid => data['NOTAPEDID'] as String?;
  int? get numpedido => data['NUMPEDIDO'] as int?;
  String? get codclie => data['CODCLIE'] as String?;
  String? get finicio => data['FINICIO'] as String?;
  String? get hinicio => data['HINICIO'] as String?;
  String? get ffin => data['FFIN'] as String?;
  String? get hfin => data['HFIN'] as String?;
  String? get fentrega => data['FENTREGA'] as String?;
  int? get codvend => data['CODVEND'] as int?;
  String? get codcvta => data['CODCVTA'] as String?;
  double? get total => data['TOTAL'] as double?;
  double? get neto => data['NETO'] as double?;
  int? get items => data['ITEMS'] as int?;
  double? get bonificacion => data['BONIFICACION'] as double?;
  String? get observaciones => data['OBSERVACIONES'] as String?;
  String? get mtsrecno => data['MTSRECNO'] as String?;
  double? get latitud => data['LATITUD'] as double?;
  double? get longitud => data['LONGITUD'] as double?;
}

/// END CHECKBORRADORCLIENTE

/// BEGIN GETALLPEDIDOS
Future<List<GetAllPedidosRow>> performGetAllPedidos(
  Database database,
) {
  final query = '''
SELECT 
   NOTAPEDID, 
   CODCLIE, 
   FINICIO, 
   TOTAL, 
   ITEMS,
   FFIN  -- Importante para ver si está cerrado o es borrador
FROM mnotapedcab 
ORDER BY FINICIO DESC, HINICIO DESC;
''';
  return _readQuery(database, query, (d) => GetAllPedidosRow(d));
}

class GetAllPedidosRow extends SqliteRow {
  GetAllPedidosRow(Map<String, dynamic> data) : super(data);

  String? get notapedid => data['NOTAPEDID'] as String?;
  String? get codclie => data['CODCLIE'] as String?;
  String? get finicio => data['FINICIO'] as String?;
  String? get total => data['TOTAL'] as String?;
  String? get items => data['ITEMS'] as String?;
  String? get ffin => data['FFIN'] as String?;
}

/// END GETALLPEDIDOS

/// BEGIN GETALLPEDIDOSITEM
Future<List<GetAllPedidositemRow>> performGetAllPedidositem(
  Database database,
) {
  final query = '''
SELECT 
   NOTAPEDID, 
   RENGLON, 
   NUMPEDIDO, 
   CODCLIE, 
   CODARTI,
   FECULTACT  -- Importante para ver si está cerrado o es borrador
FROM mnotapedite;
''';
  return _readQuery(database, query, (d) => GetAllPedidositemRow(d));
}

class GetAllPedidositemRow extends SqliteRow {
  GetAllPedidositemRow(Map<String, dynamic> data) : super(data);

  String? get notapedid => data['NOTAPEDID'] as String?;
  String? get renglon => data['RENGLON'] as String?;
  String? get numpedido => data['NUMPEDIDO'] as String?;
  String? get codclie => data['CODCLIE'] as String?;
  String? get codarti => data['CODARTI'] as String?;
  String? get fecultact => data['FECULTACT'] as String?;
}

/// END GETALLPEDIDOSITEM
