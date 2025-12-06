import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

List<CartItemStruct>? actualizarListaItems(
  List<CartItemStruct>? listaActual,
  CartItemStruct? itemModificado,
  int? nuevaCantidad,
) {
// 1. Manejo de seguridad: Si la lista es nula, iniciamos una vacía.
  List<CartItemStruct> listaNueva = listaActual?.toList() ?? [];

  // Si no nos pasan un item para modificar, devolvemos la lista tal cual
  if (itemModificado == null) {
    return listaNueva;
  }

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
    CartItemStruct itemActualizado = CartItemStruct(
      id: itemModificado.id,
      nombre: itemModificado.nombre,
      precioUnitario: itemModificado.precioUnitario,
      cantidad: cantidadFinal,
      subtotal: nuevoSubtotal,
      productoRef:
          itemModificado.productoRef, // Importante mantener la referencia
    );

    if (index != -1) {
      // YA EXISTE: Reemplazamos el item viejo por el nuevo actualizado
      listaNueva[index] = itemActualizado;
    } else {
      // NO EXISTE: Lo agregamos al final de la lista
      listaNueva.add(itemActualizado);
    }
  }

  return listaNueva;
}

List<CartItemStruct>? agregarItemsAlCarritoGlobal(
  List<CartItemStruct> listaGlobalActual,
  List<CartItemStruct> listaNuevosItems,
) {
// 1. Preparamos la lista base (si estaba vacía, creamos una nueva)
  List<CartItemStruct> listaFinal = listaGlobalActual.toList() ?? [];

  // Si no hay nada nuevo que agregar, devolvemos la lista como estaba
  if (listaNuevosItems.isEmpty) {
    return listaFinal;
  }

  // 2. Recorremos los items NUEVOS uno por uno
  for (var nuevoItem in listaNuevosItems) {
    // Buscamos si este producto YA EXISTÍA en la lista global (por su ID)
    int index = listaFinal.indexWhere((item) => item.id == nuevoItem.id);

    if (index != -1) {
      // --- CASO A: EL ARTÍCULO YA ESTABA ---
      // Tenemos que decidir: ¿Sumamos la cantidad? ¿O la reemplazamos?
      // Lógica recomendada: SUMAR. (Si tenía 2 y agrego 5, ahora tengo 7).

      var itemExistente = listaFinal[index];
      int cantidadSumada = itemExistente.cantidad + nuevoItem.cantidad;
      double nuevoSubtotal = cantidadSumada * itemExistente.precioUnitario;

      // Actualizamos el item en la lista
      listaFinal[index] = CartItemStruct(
        id: itemExistente.id,
        nombre: itemExistente.nombre,
        precioUnitario: itemExistente.precioUnitario,
        productoRef: itemExistente.productoRef,
        cantidad: cantidadSumada, // Cantidad Actualizada
        subtotal: nuevoSubtotal, // Subtotal Recalculado
      );
    } else {
      // --- CASO B: EL ARTÍCULO ES NUEVO ---
      // Simplemente lo agregamos al final de la lista
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
  // Sumamos el campo 'subtotal' de cada item guardado
  return listaGlobal.fold(0.0, (sum, item) => sum + item.subtotal);
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
