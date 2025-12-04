import 'package:cloud_firestore/cloud_firestore.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/malicuotas_record.dart';
import 'schema/mcatecli_record.dart';
import 'schema/mcondvta_record.dart';
import 'schema/mctacte_record.dart';
import 'schema/mdeposito_record.dart';
import 'schema/mgrupos_record.dart';
import 'schema/mjerarquia_record.dart';
import 'schema/mlistacabe_record.dart';
import 'schema/mlistasprecios_record.dart';
import 'schema/mmarcas_record.dart';
import 'schema/mmonedas_record.dart';
import 'schema/mmotivonocpra_record.dart';
import 'schema/mmstock_record.dart';
import 'schema/mprovincia_record.dart';
import 'schema/mresptrib_record.dart';
import 'schema/msql_temp1_record.dart';
import 'schema/msql_temp2_record.dart';
import 'schema/msql_temp3_record.dart';
import 'schema/msql_temp99_record.dart';
import 'schema/mtipocobro_record.dart';
import 'schema/mvendedor_record.dart';
import 'schema/mzonas_record.dart';
import 'schema/mnotapedcab_record.dart';
import 'schema/marticulos_record.dart';
import 'schema/mclientes_record.dart';
import 'schema/mexpercli_record.dart';
import 'schema/mnotapedite_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/malicuotas_record.dart';
export 'schema/mcatecli_record.dart';
export 'schema/mcondvta_record.dart';
export 'schema/mctacte_record.dart';
export 'schema/mdeposito_record.dart';
export 'schema/mgrupos_record.dart';
export 'schema/mjerarquia_record.dart';
export 'schema/mlistacabe_record.dart';
export 'schema/mlistasprecios_record.dart';
export 'schema/mmarcas_record.dart';
export 'schema/mmonedas_record.dart';
export 'schema/mmotivonocpra_record.dart';
export 'schema/mmstock_record.dart';
export 'schema/mprovincia_record.dart';
export 'schema/mresptrib_record.dart';
export 'schema/msql_temp1_record.dart';
export 'schema/msql_temp2_record.dart';
export 'schema/msql_temp3_record.dart';
export 'schema/msql_temp99_record.dart';
export 'schema/mtipocobro_record.dart';
export 'schema/mvendedor_record.dart';
export 'schema/mzonas_record.dart';
export 'schema/mnotapedcab_record.dart';
export 'schema/marticulos_record.dart';
export 'schema/mclientes_record.dart';
export 'schema/mexpercli_record.dart';
export 'schema/mnotapedite_record.dart';

/// Functions to query MalicuotasRecords (as a Stream and as a Future).
Future<int> queryMalicuotasRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MalicuotasRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MalicuotasRecord>> queryMalicuotasRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MalicuotasRecord.collection,
      MalicuotasRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MalicuotasRecord>> queryMalicuotasRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MalicuotasRecord.collection,
      MalicuotasRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query McatecliRecords (as a Stream and as a Future).
Future<int> queryMcatecliRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      McatecliRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<McatecliRecord>> queryMcatecliRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      McatecliRecord.collection,
      McatecliRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<McatecliRecord>> queryMcatecliRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      McatecliRecord.collection,
      McatecliRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query McondvtaRecords (as a Stream and as a Future).
Future<int> queryMcondvtaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      McondvtaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<McondvtaRecord>> queryMcondvtaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      McondvtaRecord.collection,
      McondvtaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<McondvtaRecord>> queryMcondvtaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      McondvtaRecord.collection,
      McondvtaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MctacteRecords (as a Stream and as a Future).
Future<int> queryMctacteRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MctacteRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MctacteRecord>> queryMctacteRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MctacteRecord.collection,
      MctacteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MctacteRecord>> queryMctacteRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MctacteRecord.collection,
      MctacteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MdepositoRecords (as a Stream and as a Future).
Future<int> queryMdepositoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MdepositoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MdepositoRecord>> queryMdepositoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MdepositoRecord.collection,
      MdepositoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MdepositoRecord>> queryMdepositoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MdepositoRecord.collection,
      MdepositoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MgruposRecords (as a Stream and as a Future).
Future<int> queryMgruposRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MgruposRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MgruposRecord>> queryMgruposRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MgruposRecord.collection,
      MgruposRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MgruposRecord>> queryMgruposRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MgruposRecord.collection,
      MgruposRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MjerarquiaRecords (as a Stream and as a Future).
Future<int> queryMjerarquiaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MjerarquiaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MjerarquiaRecord>> queryMjerarquiaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MjerarquiaRecord.collection,
      MjerarquiaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MjerarquiaRecord>> queryMjerarquiaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MjerarquiaRecord.collection,
      MjerarquiaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MlistacabeRecords (as a Stream and as a Future).
Future<int> queryMlistacabeRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MlistacabeRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MlistacabeRecord>> queryMlistacabeRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MlistacabeRecord.collection,
      MlistacabeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MlistacabeRecord>> queryMlistacabeRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MlistacabeRecord.collection,
      MlistacabeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MlistaspreciosRecords (as a Stream and as a Future).
Future<int> queryMlistaspreciosRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MlistaspreciosRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MlistaspreciosRecord>> queryMlistaspreciosRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MlistaspreciosRecord.collection,
      MlistaspreciosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MlistaspreciosRecord>> queryMlistaspreciosRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MlistaspreciosRecord.collection,
      MlistaspreciosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MmarcasRecords (as a Stream and as a Future).
Future<int> queryMmarcasRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MmarcasRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MmarcasRecord>> queryMmarcasRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MmarcasRecord.collection,
      MmarcasRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MmarcasRecord>> queryMmarcasRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MmarcasRecord.collection,
      MmarcasRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MmonedasRecords (as a Stream and as a Future).
Future<int> queryMmonedasRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MmonedasRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MmonedasRecord>> queryMmonedasRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MmonedasRecord.collection,
      MmonedasRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MmonedasRecord>> queryMmonedasRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MmonedasRecord.collection,
      MmonedasRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MmotivonocpraRecords (as a Stream and as a Future).
Future<int> queryMmotivonocpraRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MmotivonocpraRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MmotivonocpraRecord>> queryMmotivonocpraRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MmotivonocpraRecord.collection,
      MmotivonocpraRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MmotivonocpraRecord>> queryMmotivonocpraRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MmotivonocpraRecord.collection,
      MmotivonocpraRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MmstockRecords (as a Stream and as a Future).
Future<int> queryMmstockRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MmstockRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MmstockRecord>> queryMmstockRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MmstockRecord.collection,
      MmstockRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MmstockRecord>> queryMmstockRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MmstockRecord.collection,
      MmstockRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MprovinciaRecords (as a Stream and as a Future).
Future<int> queryMprovinciaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MprovinciaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MprovinciaRecord>> queryMprovinciaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MprovinciaRecord.collection,
      MprovinciaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MprovinciaRecord>> queryMprovinciaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MprovinciaRecord.collection,
      MprovinciaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MresptribRecords (as a Stream and as a Future).
Future<int> queryMresptribRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MresptribRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MresptribRecord>> queryMresptribRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MresptribRecord.collection,
      MresptribRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MresptribRecord>> queryMresptribRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MresptribRecord.collection,
      MresptribRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MsqlTemp1Records (as a Stream and as a Future).
Future<int> queryMsqlTemp1RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MsqlTemp1Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MsqlTemp1Record>> queryMsqlTemp1Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MsqlTemp1Record.collection,
      MsqlTemp1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MsqlTemp1Record>> queryMsqlTemp1RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MsqlTemp1Record.collection,
      MsqlTemp1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MsqlTemp2Records (as a Stream and as a Future).
Future<int> queryMsqlTemp2RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MsqlTemp2Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MsqlTemp2Record>> queryMsqlTemp2Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MsqlTemp2Record.collection,
      MsqlTemp2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MsqlTemp2Record>> queryMsqlTemp2RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MsqlTemp2Record.collection,
      MsqlTemp2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MsqlTemp3Records (as a Stream and as a Future).
Future<int> queryMsqlTemp3RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MsqlTemp3Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MsqlTemp3Record>> queryMsqlTemp3Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MsqlTemp3Record.collection,
      MsqlTemp3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MsqlTemp3Record>> queryMsqlTemp3RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MsqlTemp3Record.collection,
      MsqlTemp3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MsqlTemp99Records (as a Stream and as a Future).
Future<int> queryMsqlTemp99RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MsqlTemp99Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MsqlTemp99Record>> queryMsqlTemp99Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MsqlTemp99Record.collection,
      MsqlTemp99Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MsqlTemp99Record>> queryMsqlTemp99RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MsqlTemp99Record.collection,
      MsqlTemp99Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MtipocobroRecords (as a Stream and as a Future).
Future<int> queryMtipocobroRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MtipocobroRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MtipocobroRecord>> queryMtipocobroRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MtipocobroRecord.collection,
      MtipocobroRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MtipocobroRecord>> queryMtipocobroRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MtipocobroRecord.collection,
      MtipocobroRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MvendedorRecords (as a Stream and as a Future).
Future<int> queryMvendedorRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MvendedorRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MvendedorRecord>> queryMvendedorRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MvendedorRecord.collection,
      MvendedorRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MvendedorRecord>> queryMvendedorRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MvendedorRecord.collection,
      MvendedorRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MzonasRecords (as a Stream and as a Future).
Future<int> queryMzonasRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MzonasRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MzonasRecord>> queryMzonasRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MzonasRecord.collection,
      MzonasRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MzonasRecord>> queryMzonasRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MzonasRecord.collection,
      MzonasRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MnotapedcabRecords (as a Stream and as a Future).
Future<int> queryMnotapedcabRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MnotapedcabRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MnotapedcabRecord>> queryMnotapedcabRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MnotapedcabRecord.collection,
      MnotapedcabRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MnotapedcabRecord>> queryMnotapedcabRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MnotapedcabRecord.collection,
      MnotapedcabRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MarticulosRecords (as a Stream and as a Future).
Future<int> queryMarticulosRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MarticulosRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MarticulosRecord>> queryMarticulosRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MarticulosRecord.collection,
      MarticulosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MarticulosRecord>> queryMarticulosRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MarticulosRecord.collection,
      MarticulosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MclientesRecords (as a Stream and as a Future).
Future<int> queryMclientesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MclientesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MclientesRecord>> queryMclientesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MclientesRecord.collection,
      MclientesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MclientesRecord>> queryMclientesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MclientesRecord.collection,
      MclientesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MexpercliRecords (as a Stream and as a Future).
Future<int> queryMexpercliRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MexpercliRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MexpercliRecord>> queryMexpercliRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MexpercliRecord.collection,
      MexpercliRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MexpercliRecord>> queryMexpercliRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MexpercliRecord.collection,
      MexpercliRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MnotapediteRecords (as a Stream and as a Future).
Future<int> queryMnotapediteRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MnotapediteRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MnotapediteRecord>> queryMnotapediteRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MnotapediteRecord.collection,
      MnotapediteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MnotapediteRecord>> queryMnotapediteRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MnotapediteRecord.collection,
      MnotapediteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}
