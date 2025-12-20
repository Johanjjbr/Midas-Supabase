import 'package:collection/collection.dart';

enum PruebadeEnums {
  Lunes,
  Martes,
  Miercoles,
}

<<<<<<< HEAD
=======
enum Sincronizacion {
  loading,
  done,
}

enum PageControl {
  pagina1,
  pagina2,
  pagina3,
}

enum OrdenarCLientes {
  ALFA,
  CODE,
  DEUDA,
}

enum TIPOhistorial {
  NO_COMPRA,
  VISITA,
  PEDIDO,
}

>>>>>>> 1ddf1af (ultimo realizado)
extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (PruebadeEnums):
      return PruebadeEnums.values.deserialize(value) as T?;
<<<<<<< HEAD
=======
    case (Sincronizacion):
      return Sincronizacion.values.deserialize(value) as T?;
    case (PageControl):
      return PageControl.values.deserialize(value) as T?;
    case (OrdenarCLientes):
      return OrdenarCLientes.values.deserialize(value) as T?;
    case (TIPOhistorial):
      return TIPOhistorial.values.deserialize(value) as T?;
>>>>>>> 1ddf1af (ultimo realizado)
    default:
      return null;
  }
}
