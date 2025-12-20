import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'midasdb',
      'mclientes.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<GetClientesRow>> getClientes() => performGetClientes(
        _database,
      );

  Future<List<GetArticulosRow>> getArticulos({
    String? codGrupo,
  }) =>
      performGetArticulos(
        _database,
        codGrupo: codGrupo,
      );

  Future<List<GetListadePreciosRow>> getListadePrecios() =>
      performGetListadePrecios(
        _database,
      );

  Future<List<GetListadeEncabezadosRow>> getListadeEncabezados() =>
      performGetListadeEncabezados(
        _database,
      );

  Future<List<GetListadeStockRow>> getListadeStock() => performGetListadeStock(
        _database,
      );

  Future<List<GetMarcasRow>> getMarcas() => performGetMarcas(
        _database,
      );

  Future<List<GetGruposRow>> getGrupos() => performGetGrupos(
        _database,
      );

  Future<List<GetArticulosyStockRow>> getArticulosyStock({
    String? codGrupo,
    String? codDepo,
  }) =>
      performGetArticulosyStock(
        _database,
        codGrupo: codGrupo,
        codDepo: codDepo,
      );

  Future<List<GetGruposconFiltrosRow>> getGruposconFiltros({
    String? searchTerm,
  }) =>
      performGetGruposconFiltros(
        _database,
        searchTerm: searchTerm,
      );

  Future<List<GetClientesConFiltroRow>> getClientesConFiltro({
    String? searchTerm,
  }) =>
      performGetClientesConFiltro(
        _database,
        searchTerm: searchTerm,
      );

  Future<List<GetClientesConFiltroyOrdenRow>> getClientesConFiltroyOrden({
    String? searchTerm,
    String? filterBy,
    String? sortBy,
  }) =>
      performGetClientesConFiltroyOrden(
        _database,
        searchTerm: searchTerm,
        filterBy: filterBy,
        sortBy: sortBy,
      );

  Future<List<GetClientesVisitasSaldosConFiltroyOrdenRow>>
      getClientesVisitasSaldosConFiltroyOrden({
    String? searchTerm,
    String? filterBy,
    String? sortBy,
  }) =>
          performGetClientesVisitasSaldosConFiltroyOrden(
            _database,
            searchTerm: searchTerm,
            filterBy: filterBy,
            sortBy: sortBy,
          );

  Future<List<GetCuentasCorrientesRow>> getCuentasCorrientes() =>
      performGetCuentasCorrientes(
        _database,
      );

  Future<List<GetmvisitasRow>> getmvisitas() => performGetmvisitas(
        _database,
      );

  Future<List<GetTimelineActivityRow>> getTimelineActivity() =>
      performGetTimelineActivity(
        _database,
      );

  Future<List<GetArticulosConFiltroRow>> getArticulosConFiltro({
    String? searchTerm,
    String? codDepo,
  }) =>
      performGetArticulosConFiltro(
        _database,
        searchTerm: searchTerm,
        codDepo: codDepo,
      );

  Future<List<GetItemsBorradorRow>> getItemsBorrador({
    String? notaPedId,
  }) =>
      performGetItemsBorrador(
        _database,
        notaPedId: notaPedId,
      );

  Future<List<CheckBorradorClienteRow>> checkBorradorCliente({
    String? codClie,
  }) =>
      performCheckBorradorCliente(
        _database,
        codClie: codClie,
      );

  Future<List<GetAllPedidosRow>> getAllPedidos() => performGetAllPedidos(
        _database,
      );

  Future<List<GetAllPedidositemRow>> getAllPedidositem() =>
      performGetAllPedidositem(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future cleanClientes() => performCleanClientes(
        _database,
      );

  Future insertarSaldo({
    String? codcli,
    double? vsaldo,
    String? vvencimiento,
  }) =>
      performInsertarSaldo(
        _database,
        codcli: codcli,
        vsaldo: vsaldo,
        vvencimiento: vvencimiento,
      );

  Future cleanArticulos() => performCleanArticulos(
        _database,
      );

  Future cleanListaCabe() => performCleanListaCabe(
        _database,
      );

  Future cleanListaPrecios() => performCleanListaPrecios(
        _database,
      );

  Future cleanListStokc() => performCleanListStokc(
        _database,
      );

  Future cleanMarcas() => performCleanMarcas(
        _database,
      );

  Future cleanMonedas() => performCleanMonedas(
        _database,
      );

  Future cleanGrupos() => performCleanGrupos(
        _database,
      );

  Future insertarEncabezadoPedido({
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
  }) =>
      performInsertarEncabezadoPedido(
        _database,
        notaPedId: notaPedId,
        numPedido: numPedido,
        codClie: codClie,
        fInicio: fInicio,
        hInicio: hInicio,
        fFin: fFin,
        hFin: hFin,
        fEntrega: fEntrega,
        codVend: codVend,
        codCvta: codCvta,
        total: total,
        neto: neto,
        totalItems: totalItems,
        bonificacion: bonificacion,
        observaciones: observaciones,
        latitud: latitud,
        longitud: longitud,
      );

  Future actualizarCierrePedido({
    String? notaPedId,
    String? fFin,
    String? hFin,
    double? total,
    double? neto,
    int? totalItems,
    String? observaciones,
  }) =>
      performActualizarCierrePedido(
        _database,
        notaPedId: notaPedId,
        fFin: fFin,
        hFin: hFin,
        total: total,
        neto: neto,
        totalItems: totalItems,
        observaciones: observaciones,
      );

  Future notaPedId({
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
  }) =>
      performNotaPedId(
        _database,
        notaPedId: notaPedId,
        renglon: renglon,
        numPedido: numPedido,
        codClie: codClie,
        codArti: codArti,
        cantidad: cantidad,
        importeori: importeori,
        importeuni: importeuni,
        bonifPorc: bonifPorc,
        bonifMonto: bonifMonto,
        iva: iva,
        listaPrec: listaPrec,
        fecha: fecha,
        abm: abm,
      );

  Future limpiarItemsPedido({
    String? notaPedId,
  }) =>
      performLimpiarItemsPedido(
        _database,
        notaPedId: notaPedId,
      );

  Future eliminarBorrador({
    String? notaPedId,
  }) =>
      performEliminarBorrador(
        _database,
        notaPedId: notaPedId,
      );

  /// END UPDATE QUERY CALLS
}
