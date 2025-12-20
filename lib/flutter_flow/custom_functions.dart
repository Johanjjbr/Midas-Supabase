<<<<<<< HEAD
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
=======
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/auth/supabase_auth/auth_util.dart';
>>>>>>> 1ddf1af (ultimo realizado)

List<CartItemStruct>? actualizarListaItems(
  List<CartItemStruct>? listaActual,
  CartItemStruct? itemModificado,
  int? nuevaCantidad,
) {
// 1. Manejo de seguridad: Si la lista es nula, iniciamos una vacía.
  List<CartItemStruct> listaNueva = listaActual?.toList() ?? [];

<<<<<<< HEAD
  // Si no nos pasan un item para modificar, devolvemos la lista tal cual
=======
>>>>>>> 1ddf1af (ultimo realizado)
  if (itemModificado == null) {
    return listaNueva;
  }

<<<<<<< HEAD
  // Aseguramos que la cantidad tenga un valor (0 si es nula)
  int cantidadFinal = nuevaCantidad ?? 0;

  // 2. Buscamos si el artículo ya existe en la lista comparando su ID
  // Nota: FlutterFlow suele convertir el campo "ID" a la propiedad ".iD" en el código
  int index = listaNueva.indexWhere((item) => item.id == itemModificado.id);

  if (cantidadFinal <= 0) {
    // --- CASO: BORRAR (Cantidad 0 o menor) ---
    if (index != -1) {
      // Si existe en la lista, lo eliminamos
      listaNueva.removeAt(index);
    }
  } else {
    // --- CASO: AGREGAR O ACTUALIZAR (Cantidad > 0) ---

    // Calculamos el nuevo subtotal
    double nuevoSubtotal = cantidadFinal * (itemModificado.precioUnitario);

    // Creamos el objeto actualizado con TUS campos exactos
=======
  int cantidadFinal = nuevaCantidad ?? 0;

  // 2. Buscamos por ID (que ahora debería ser un String o Integer de Supabase/SQLite)
  int index = listaNueva.indexWhere((item) => item.id == itemModificado.id);

  if (cantidadFinal <= 0) {
    if (index != -1) {
      listaNueva.removeAt(index);
    }
  } else {
    // Calculamos el nuevo subtotal
    double nuevoSubtotal = cantidadFinal * (itemModificado.precioUnitario);

    // 3. Creamos el objeto actualizado.
    // He quitado o comentado 'productoRef' para que coincida con tu nuevo Struct.
    // Si lo cambiaste a 'productoId', asegúrate de usar ese nombre aquí.
>>>>>>> 1ddf1af (ultimo realizado)
    CartItemStruct itemActualizado = CartItemStruct(
      id: itemModificado.id,
      nombre: itemModificado.nombre,
      precioUnitario: itemModificado.precioUnitario,
      cantidad: cantidadFinal,
      subtotal: nuevoSubtotal,
<<<<<<< HEAD
      productoRef:
          itemModificado.productoRef, // Importante mantener la referencia
    );

    if (index != -1) {
      // YA EXISTE: Reemplazamos el item viejo por el nuevo actualizado
      listaNueva[index] = itemActualizado;
    } else {
      // NO EXISTE: Lo agregamos al final de la lista
=======
      // Si cambiaste el nombre en el Data Type, úsalo aquí:
      // productoId: itemModificado.productoId,
    );

    if (index != -1) {
      listaNueva[index] = itemActualizado;
    } else {
>>>>>>> 1ddf1af (ultimo realizado)
      listaNueva.add(itemActualizado);
    }
  }

  return listaNueva;
}

List<CartItemStruct>? agregarItemsAlCarritoGlobal(
  List<CartItemStruct> listaGlobalActual,
  List<CartItemStruct> listaNuevosItems,
) {
<<<<<<< HEAD
// 1. Preparamos la lista base (si estaba vacía, creamos una nueva)
  List<CartItemStruct> listaFinal = listaGlobalActual.toList() ?? [];

  // Si no hay nada nuevo que agregar, devolvemos la lista como estaba
  if (listaNuevosItems.isEmpty) {
=======
  // 1. Preparamos la lista base (manejo de nulos por seguridad)
  // Nota: Eliminamos el '?' innecesario si la firma asegura que no es nula
  List<CartItemStruct> listaFinal = List.from(listaGlobalActual ?? []);

  // Si no hay nada nuevo que agregar, devolvemos la lista actual
  if (listaNuevosItems == null || listaNuevosItems.isEmpty) {
>>>>>>> 1ddf1af (ultimo realizado)
    return listaFinal;
  }

  // 2. Recorremos los items NUEVOS uno por uno
  for (var nuevoItem in listaNuevosItems) {
<<<<<<< HEAD
    // Buscamos si este producto YA EXISTÍA en la lista global (por su ID)
    int index = listaFinal.indexWhere((item) => item.id == nuevoItem.id);

    if (index != -1) {
      // --- CASO A: EL ARTÍCULO YA ESTABA ---
      // Tenemos que decidir: ¿Sumamos la cantidad? ¿O la reemplazamos?
      // Lógica recomendada: SUMAR. (Si tenía 2 y agrego 5, ahora tengo 7).

=======
    // Buscamos si el producto YA EXISTÍA por su ID (Integer o String)
    int index = listaFinal.indexWhere((item) => item.id == nuevoItem.id);

    if (index != -1) {
      // --- CASO A: EL ARTÍCULO YA ESTABA (SUMAR) ---
>>>>>>> 1ddf1af (ultimo realizado)
      var itemExistente = listaFinal[index];
      int cantidadSumada = itemExistente.cantidad + nuevoItem.cantidad;
      double nuevoSubtotal = cantidadSumada * itemExistente.precioUnitario;

<<<<<<< HEAD
      // Actualizamos el item en la lista
=======
      // Actualizamos el item en la lista SIN usar productoRef
>>>>>>> 1ddf1af (ultimo realizado)
      listaFinal[index] = CartItemStruct(
        id: itemExistente.id,
        nombre: itemExistente.nombre,
        precioUnitario: itemExistente.precioUnitario,
<<<<<<< HEAD
        productoRef: itemExistente.productoRef,
        cantidad: cantidadSumada, // Cantidad Actualizada
        subtotal: nuevoSubtotal, // Subtotal Recalculado
      );
    } else {
      // --- CASO B: EL ARTÍCULO ES NUEVO ---
      // Simplemente lo agregamos al final de la lista
=======
        cantidad: cantidadSumada,
        subtotal: nuevoSubtotal,
        // Si en tu Data Type cambiaste productoRef por productoId, añádelo así:
        // productoId: itemExistente.productoId,
      );
    } else {
      // --- CASO B: EL ARTÍCULO ES NUEVO ---
>>>>>>> 1ddf1af (ultimo realizado)
      listaFinal.add(nuevoItem);
    }
  }

  return listaFinal;
}

/// Esta calcula solo lo que está en AppState (Tu "Total").
double calcularTotalSoloGlobal(List<CartItemStruct>? listaGlobal) {
  if (listaGlobal == null || listaGlobal.isEmpty) {
    return 0.0;
  }
<<<<<<< HEAD
  // Sumamos el campo 'subtotal' de cada item guardado
  return listaGlobal.fold(0.0, (sum, item) => sum + item.subtotal);
=======

  // 1. Sumamos los subtotales
  double total = listaGlobal.fold(0.0, (sum, item) => sum + item.subtotal);

  // 2. Redondeamos a 2 decimales para evitar el error de precisión
  // Usamos double.parse y toStringAsFixed para asegurar que el resultado sea un double limpio
  return double.parse(total.toStringAsFixed(2));
>>>>>>> 1ddf1af (ultimo realizado)
}

/// Esta calcula la suma de AppState + PageState (Tu "Subtotal").
double calcularSumaCombinada(
  List<CartItemStruct>? listaGlobal,
  List<CartItemStruct>? listaTemporal,
) {
  double sumaGlobal = 0.0;
  double sumaTemporal = 0.0;

  // 1. Sumar lo que ya tenías guardado (App State)
  if (listaGlobal != null) {
    for (var item in listaGlobal) {
      sumaGlobal += item.subtotal;
    }
  }

  // 2. Sumar lo que estás eligiendo ahora (Page State)
  if (listaTemporal != null) {
    for (var item in listaTemporal) {
      // Calculamos dinámicamente por seguridad (Cantidad * Precio)
      sumaTemporal += (item.cantidad * item.precioUnitario);
    }
  }

  // Retornar la suma de ambos mundos
  return sumaGlobal + sumaTemporal;
}

String? getOrderId() {
  DateTime now = DateTime.now();
  // Formato: AAAA MM DD HH MM SS
  // Ejemplo resultado: 20240520143055 (Pedido del 20/05/2024 a las 14:30:55)
  String id =
      "${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}${now.hour.toString().padLeft(2, '0')}${now.minute.toString().padLeft(2, '0')}${now.second.toString().padLeft(2, '0')}";
  return id;
}
<<<<<<< HEAD
=======

List<String> getUniquePriceLists(List<MclientesRow>? clientes) {
// 1. Si la lista es nula o vacía, devolvemos lista vacía para evitar errores
  if (clientes == null || clientes.isEmpty) {
    return [];
  }

  // 2. Mapeamos, filtramos nulos y convertimos a Set para eliminar duplicados
  final uniqueLists = clientes
      .map((e) => e.listaprec) // Extraemos el campo
      .where(
          (e) => e != null && e.trim().isNotEmpty) // Filtramos nulos o vacíos
      .map((e) => e!) // Aseguramos que es String no nulo
      .toSet() // El Set elimina automáticamente los duplicados
      .toList(); // Convertimos de nuevo a lista

  return uniqueLists;
}
>>>>>>> 1ddf1af (ultimo realizado)
