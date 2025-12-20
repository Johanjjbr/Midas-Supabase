import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
<<<<<<< HEAD

=======
import '/backend/sqlite/queries/sqlite_row.dart';
import '/backend/sqlite/queries/read.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '../../flutter_flow/lat_lng.dart';
import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

const _kDocIdDelimeter = '|';
String _serializeDocumentReference(DocumentReference ref) {
  final docIds = <String>[];
  DocumentReference? currentRef = ref;
  while (currentRef != null) {
    docIds.add(currentRef.id);
    // Get the parent document (catching any errors that arise).
    currentRef = safeGet<DocumentReference?>(() => currentRef?.parent.parent);
  }
  // Reverse the list to get the correct ordering.
  return docIds.reversed.join(_kDocIdDelimeter);
}

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);
      case ParamType.DocumentReference:
        data = _serializeDocumentReference(param as DocumentReference);
      case ParamType.Document:
        final reference = (param as FirestoreRecord).reference;
        data = _serializeDocumentReference(reference);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.Enum:
        data = (param is Enum) ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

<<<<<<< HEAD
=======
      case ParamType.SqliteRow:
        return json.encode((param as SqliteRow).data);

>>>>>>> 1ddf1af (ultimo realizado)
      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

DocumentReference _deserializeDocumentReference(
  String refStr,
  List<String> collectionNamePath,
) {
  var path = '';
  final docIds = refStr.split(_kDocIdDelimeter);
  for (int i = 0; i < docIds.length && i < collectionNamePath.length; i++) {
    path += '/${collectionNamePath[i]}/${docIds[i]}';
  }
  return FirebaseFirestore.instance.doc(path);
}

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  Document,
  DocumentReference,
  DataStruct,
  Enum,
  SupabaseRow,
<<<<<<< HEAD
=======
  SqliteRow,
>>>>>>> 1ddf1af (ultimo realizado)
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  List<String>? collectionNamePath,
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .where((p) => p is String)
          .map((p) => p as String)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                collectionNamePath: collectionNamePath,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);
      case ParamType.DocumentReference:
        return _deserializeDocumentReference(param, collectionNamePath ?? []);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case MgruposRow:
            return MgruposRow(data);
<<<<<<< HEAD
=======
          case MmstockNormalizadoRow:
            return MmstockNormalizadoRow(data);
>>>>>>> 1ddf1af (ultimo realizado)
          case MlistacabeRow:
            return MlistacabeRow(data);
          case MresptribRow:
            return MresptribRow(data);
          case MlistaspreciosRow:
            return MlistaspreciosRow(data);
          case MctacteRow:
            return MctacteRow(data);
          case MexpercliRow:
            return MexpercliRow(data);
<<<<<<< HEAD
=======
          case VistaMisClientesRow:
            return VistaMisClientesRow(data);
>>>>>>> 1ddf1af (ultimo realizado)
          case MproveedRow:
            return MproveedRow(data);
          case MtipocobroRow:
            return MtipocobroRow(data);
          case MjerarquiaRow:
            return MjerarquiaRow(data);
          case MvendedorRow:
            return MvendedorRow(data);
<<<<<<< HEAD
=======
          case VistaMisPreciosRow:
            return VistaMisPreciosRow(data);
          case VistaArticulosIvaRow:
            return VistaArticulosIvaRow(data);
>>>>>>> 1ddf1af (ultimo realizado)
          case MnotapedcabRow:
            return MnotapedcabRow(data);
          case MmarcasRow:
            return MmarcasRow(data);
          case MmotivonocpraRow:
            return MmotivonocpraRow(data);
          case MarticulosRow:
            return MarticulosRow(data);
          case MclientesRow:
            return MclientesRow(data);
          case McondvtaRow:
            return McondvtaRow(data);
          case MalicuotasRow:
            return MalicuotasRow(data);
<<<<<<< HEAD
=======
          case VistaUltimaVisitaRow:
            return VistaUltimaVisitaRow(data);
>>>>>>> 1ddf1af (ultimo realizado)
          case McatecliRow:
            return McatecliRow(data);
          case MdepositoRow:
            return MdepositoRow(data);
          case MprovinciaRow:
            return MprovinciaRow(data);
          case MnotapediteRow:
            return MnotapediteRow(data);
          case MmonedasRow:
            return MmonedasRow(data);
          case MzonasRow:
            return MzonasRow(data);
          case MmstockRow:
            return MmstockRow(data);
<<<<<<< HEAD
=======
          case VistaSaldosClientesRow:
            return VistaSaldosClientesRow(data);
>>>>>>> 1ddf1af (ultimo realizado)
          case MvisitasRow:
            return MvisitasRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      case ParamType.Enum:
        return deserializeEnum<T>(param);

<<<<<<< HEAD
=======
      case ParamType.SqliteRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case GetClientesRow:
            return GetClientesRow(data);
          case GetArticulosRow:
            return GetArticulosRow(data);
          case GetListadePreciosRow:
            return GetListadePreciosRow(data);
          case GetListadeEncabezadosRow:
            return GetListadeEncabezadosRow(data);
          case GetListadeStockRow:
            return GetListadeStockRow(data);
          case GetMarcasRow:
            return GetMarcasRow(data);
          case GetGruposRow:
            return GetGruposRow(data);
          case GetArticulosyStockRow:
            return GetArticulosyStockRow(data);
          case GetGruposconFiltrosRow:
            return GetGruposconFiltrosRow(data);
          case GetClientesConFiltroRow:
            return GetClientesConFiltroRow(data);
          case GetClientesConFiltroyOrdenRow:
            return GetClientesConFiltroyOrdenRow(data);
          case GetClientesVisitasSaldosConFiltroyOrdenRow:
            return GetClientesVisitasSaldosConFiltroyOrdenRow(data);
          case GetCuentasCorrientesRow:
            return GetCuentasCorrientesRow(data);
          case GetmvisitasRow:
            return GetmvisitasRow(data);
          case GetTimelineActivityRow:
            return GetTimelineActivityRow(data);
          case GetArticulosConFiltroRow:
            return GetArticulosConFiltroRow(data);
          case GetItemsBorradorRow:
            return GetItemsBorradorRow(data);
          case CheckBorradorClienteRow:
            return CheckBorradorClienteRow(data);
          case GetAllPedidosRow:
            return GetAllPedidosRow(data);
          case GetAllPedidositemRow:
            return GetAllPedidositemRow(data);
          default:
            return null;
        }

>>>>>>> 1ddf1af (ultimo realizado)
      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}

Future<dynamic> Function(String) getDoc(
  List<String> collectionNamePath,
  RecordBuilder recordBuilder,
) {
  return (String ids) => _deserializeDocumentReference(ids, collectionNamePath)
      .get()
      .then((s) => recordBuilder(s));
}

Future<List<T>> Function(String) getDocList<T>(
  List<String> collectionNamePath,
  RecordBuilder<T> recordBuilder,
) {
  return (String idsList) {
    List<String> docIds = [];
    try {
      final ids = json.decode(idsList) as Iterable;
      docIds = ids.where((d) => d is String).map((d) => d as String).toList();
    } catch (_) {}
    return Future.wait(
      docIds.map(
        (ids) => _deserializeDocumentReference(ids, collectionNamePath)
            .get()
            .then((s) => recordBuilder(s)),
      ),
    ).then((docs) => docs.where((d) => d != null).map((d) => d!).toList());
  };
}
