// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemStruct extends FFFirebaseStruct {
  CartItemStruct({
    String? id,
    String? nombre,
    double? precioUnitario,
    int? cantidad,
    double? subtotal,
<<<<<<< HEAD
    DocumentReference? productoRef,
=======
>>>>>>> 1ddf1af (ultimo realizado)
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nombre = nombre,
        _precioUnitario = precioUnitario,
        _cantidad = cantidad,
        _subtotal = subtotal,
<<<<<<< HEAD
        _productoRef = productoRef,
        super(firestoreUtilData);

  // "ID" field.
=======
        super(firestoreUtilData);

  // "id" field.
>>>>>>> 1ddf1af (ultimo realizado)
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "precioUnitario" field.
  double? _precioUnitario;
  double get precioUnitario => _precioUnitario ?? 0.0;
  set precioUnitario(double? val) => _precioUnitario = val;

  void incrementPrecioUnitario(double amount) =>
      precioUnitario = precioUnitario + amount;

  bool hasPrecioUnitario() => _precioUnitario != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  set cantidad(int? val) => _cantidad = val;

  void incrementCantidad(int amount) => cantidad = cantidad + amount;

  bool hasCantidad() => _cantidad != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;

  void incrementSubtotal(double amount) => subtotal = subtotal + amount;

  bool hasSubtotal() => _subtotal != null;

<<<<<<< HEAD
  // "productoRef" field.
  DocumentReference? _productoRef;
  DocumentReference? get productoRef => _productoRef;
  set productoRef(DocumentReference? val) => _productoRef = val;

  bool hasProductoRef() => _productoRef != null;

  static CartItemStruct fromMap(Map<String, dynamic> data) => CartItemStruct(
        id: data['ID'] as String?,
=======
  static CartItemStruct fromMap(Map<String, dynamic> data) => CartItemStruct(
        id: data['id'] as String?,
>>>>>>> 1ddf1af (ultimo realizado)
        nombre: data['nombre'] as String?,
        precioUnitario: castToType<double>(data['precioUnitario']),
        cantidad: castToType<int>(data['cantidad']),
        subtotal: castToType<double>(data['subtotal']),
<<<<<<< HEAD
        productoRef: data['productoRef'] as DocumentReference?,
=======
>>>>>>> 1ddf1af (ultimo realizado)
      );

  static CartItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
<<<<<<< HEAD
        'ID': _id,
=======
        'id': _id,
>>>>>>> 1ddf1af (ultimo realizado)
        'nombre': _nombre,
        'precioUnitario': _precioUnitario,
        'cantidad': _cantidad,
        'subtotal': _subtotal,
<<<<<<< HEAD
        'productoRef': _productoRef,
=======
>>>>>>> 1ddf1af (ultimo realizado)
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
<<<<<<< HEAD
        'ID': serializeParam(
=======
        'id': serializeParam(
>>>>>>> 1ddf1af (ultimo realizado)
          _id,
          ParamType.String,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'precioUnitario': serializeParam(
          _precioUnitario,
          ParamType.double,
        ),
        'cantidad': serializeParam(
          _cantidad,
          ParamType.int,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
<<<<<<< HEAD
        'productoRef': serializeParam(
          _productoRef,
          ParamType.DocumentReference,
        ),
=======
>>>>>>> 1ddf1af (ultimo realizado)
      }.withoutNulls;

  static CartItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemStruct(
        id: deserializeParam(
<<<<<<< HEAD
          data['ID'],
=======
          data['id'],
>>>>>>> 1ddf1af (ultimo realizado)
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        precioUnitario: deserializeParam(
          data['precioUnitario'],
          ParamType.double,
          false,
        ),
        cantidad: deserializeParam(
          data['cantidad'],
          ParamType.int,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
<<<<<<< HEAD
        productoRef: deserializeParam(
          data['productoRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['marticulos'],
        ),
=======
>>>>>>> 1ddf1af (ultimo realizado)
      );

  @override
  String toString() => 'CartItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemStruct &&
        id == other.id &&
        nombre == other.nombre &&
        precioUnitario == other.precioUnitario &&
        cantidad == other.cantidad &&
<<<<<<< HEAD
        subtotal == other.subtotal &&
        productoRef == other.productoRef;
=======
        subtotal == other.subtotal;
>>>>>>> 1ddf1af (ultimo realizado)
  }

  @override
  int get hashCode => const ListEquality()
<<<<<<< HEAD
      .hash([id, nombre, precioUnitario, cantidad, subtotal, productoRef]);
=======
      .hash([id, nombre, precioUnitario, cantidad, subtotal]);
>>>>>>> 1ddf1af (ultimo realizado)
}

CartItemStruct createCartItemStruct({
  String? id,
  String? nombre,
  double? precioUnitario,
  int? cantidad,
  double? subtotal,
<<<<<<< HEAD
  DocumentReference? productoRef,
=======
>>>>>>> 1ddf1af (ultimo realizado)
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartItemStruct(
      id: id,
      nombre: nombre,
      precioUnitario: precioUnitario,
      cantidad: cantidad,
      subtotal: subtotal,
<<<<<<< HEAD
      productoRef: productoRef,
=======
>>>>>>> 1ddf1af (ultimo realizado)
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartItemStruct? updateCartItemStruct(
  CartItemStruct? cartItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartItemStructData(
  Map<String, dynamic> firestoreData,
  CartItemStruct? cartItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartItem == null) {
    return;
  }
  if (cartItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartItemData = getCartItemFirestoreData(cartItem, forFieldValue);
  final nestedData = cartItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartItemFirestoreData(
  CartItemStruct? cartItem, [
  bool forFieldValue = false,
]) {
  if (cartItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartItem.toMap());

  // Add any Firestore field values
  cartItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartItemListFirestoreData(
  List<CartItemStruct>? cartItems,
) =>
    cartItems?.map((e) => getCartItemFirestoreData(e, true)).toList() ?? [];
