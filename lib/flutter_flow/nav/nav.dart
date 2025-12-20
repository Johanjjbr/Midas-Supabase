import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
<<<<<<< HEAD

=======
import '/backend/sqlite/sqlite_manager.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
<<<<<<< HEAD
          appStateNotifier.loggedIn ? NavBarPage() : Authentication1Widget(),
=======
          appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
>>>>>>> 1ddf1af (ultimo realizado)
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
<<<<<<< HEAD
          builder: (context, _) => appStateNotifier.loggedIn
              ? NavBarPage()
              : Authentication1Widget(),
=======
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
>>>>>>> 1ddf1af (ultimo realizado)
        ),
        FFRoute(
          name: ActividadWidget.routeName,
          path: ActividadWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Actividad')
              : ActividadWidget(),
        ),
        FFRoute(
          name: ProfileSettingsWidget.routeName,
          path: ProfileSettingsWidget.routePath,
          builder: (context, params) => ProfileSettingsWidget(),
        ),
        FFRoute(
          name: ProfileChangePasswordWidget.routeName,
          path: ProfileChangePasswordWidget.routePath,
          builder: (context, params) => ProfileChangePasswordWidget(),
        ),
        FFRoute(
<<<<<<< HEAD
          name: Authentication1Widget.routeName,
          path: Authentication1Widget.routePath,
          builder: (context, params) => Authentication1Widget(),
=======
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
>>>>>>> 1ddf1af (ultimo realizado)
        ),
        FFRoute(
          name: ProfileEditWidget.routeName,
          path: ProfileEditWidget.routePath,
          builder: (context, params) => ProfileEditWidget(),
        ),
        FFRoute(
          name: ProfileCreateWidget.routeName,
          path: ProfileCreateWidget.routePath,
          builder: (context, params) => ProfileCreateWidget(),
        ),
        FFRoute(
          name: LoadPageifLoginWidget.routeName,
          path: LoadPageifLoginWidget.routePath,
          builder: (context, params) => LoadPageifLoginWidget(
            code: params.getParam(
              'code',
              ParamType.int,
            ),
<<<<<<< HEAD
            clave: params.getParam(
              'clave',
              ParamType.String,
            ),
=======
>>>>>>> 1ddf1af (ultimo realizado)
          ),
        ),
        FFRoute(
          name: Dashboard1Widget.routeName,
          path: Dashboard1Widget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Dashboard1')
              : Dashboard1Widget(),
        ),
        FFRoute(
          name: CatalogoWidget.routeName,
          path: CatalogoWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Catalogo')
              : CatalogoWidget(),
        ),
        FFRoute(
          name: Catalogo2Widget.routeName,
          path: Catalogo2Widget.routePath,
          builder: (context, params) => Catalogo2Widget(
<<<<<<< HEAD
            grupdescReferencia: params.getParam(
              'grupdescReferencia',
              ParamType.String,
            ),
=======
>>>>>>> 1ddf1af (ultimo realizado)
            grupoDEs: params.getParam(
              'grupoDEs',
              ParamType.String,
            ),
<<<<<<< HEAD
=======
            grupoCode: params.getParam(
              'grupoCode',
              ParamType.String,
            ),
>>>>>>> 1ddf1af (ultimo realizado)
          ),
        ),
        FFRoute(
          name: Catalogo3Widget.routeName,
          path: Catalogo3Widget.routePath,
<<<<<<< HEAD
          asyncParams: {
            'refDocument':
                getDoc(['marticulos'], MarticulosRecord.fromSnapshot),
          },
          builder: (context, params) => Catalogo3Widget(
            ref: params.getParam(
              'ref',
              ParamType.String,
            ),
            refDocument: params.getParam(
              'refDocument',
              ParamType.Document,
=======
          builder: (context, params) => Catalogo3Widget(
            refDocument: params.getParam<GetArticulosyStockRow>(
              'refDocument',
              ParamType.SqliteRow,
>>>>>>> 1ddf1af (ultimo realizado)
            ),
          ),
        ),
        FFRoute(
<<<<<<< HEAD
          name: ClienteWidget.routeName,
          path: ClienteWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Cliente')
              : ClienteWidget(),
        ),
        FFRoute(
=======
>>>>>>> 1ddf1af (ultimo realizado)
          name: EstadisticasWidget.routeName,
          path: EstadisticasWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Estadisticas')
              : EstadisticasWidget(),
        ),
        FFRoute(
          name: ClienteDashboardWidget.routeName,
          path: ClienteDashboardWidget.routePath,
<<<<<<< HEAD
          asyncParams: {
            'refCliente': getDoc(['mclientes'], MclientesRecord.fromSnapshot),
          },
          builder: (context, params) => ClienteDashboardWidget(
            refCliente: params.getParam(
              'refCliente',
              ParamType.Document,
=======
          builder: (context, params) => ClienteDashboardWidget(
            refCliente: params.getParam<GetClientesConFiltroyOrdenRow>(
              'refCliente',
              ParamType.SqliteRow,
>>>>>>> 1ddf1af (ultimo realizado)
            ),
          ),
        ),
        FFRoute(
          name: MediosdepagoWidget.routeName,
          path: MediosdepagoWidget.routePath,
          builder: (context, params) => MediosdepagoWidget(),
        ),
        FFRoute(
          name: MediosdepagoConfirmarWidget.routeName,
          path: MediosdepagoConfirmarWidget.routePath,
          builder: (context, params) => MediosdepagoConfirmarWidget(),
        ),
        FFRoute(
          name: MediosdepagoCHEQUEWidget.routeName,
          path: MediosdepagoCHEQUEWidget.routePath,
          builder: (context, params) => MediosdepagoCHEQUEWidget(),
        ),
        FFRoute(
          name: ClienteNoCompraWidget.routeName,
          path: ClienteNoCompraWidget.routePath,
          builder: (context, params) => ClienteNoCompraWidget(
<<<<<<< HEAD
            refDocumentReferencia: params.getParam(
              'refDocumentReferencia',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['mclientes'],
=======
            refDocumentReferencia:
                params.getParam<GetClientesConFiltroyOrdenRow>(
              'refDocumentReferencia',
              ParamType.SqliteRow,
>>>>>>> 1ddf1af (ultimo realizado)
            ),
          ),
        ),
        FFRoute(
          name: ClienteFormularioWidget.routeName,
          path: ClienteFormularioWidget.routePath,
          builder: (context, params) => ClienteFormularioWidget(),
        ),
        FFRoute(
<<<<<<< HEAD
          name: ClientesPedidosWidget.routeName,
          path: ClientesPedidosWidget.routePath,
          builder: (context, params) => ClientesPedidosWidget(),
        ),
        FFRoute(
          name: ClientesPedidosDetallesWidget.routeName,
          path: ClientesPedidosDetallesWidget.routePath,
          builder: (context, params) => ClientesPedidosDetallesWidget(),
        ),
        FFRoute(
          name: ClientesPedidosConfirmadoWidget.routeName,
          path: ClientesPedidosConfirmadoWidget.routePath,
          asyncParams: {
            'refUsuario': getDoc(['mclientes'], MclientesRecord.fromSnapshot),
          },
          builder: (context, params) => ClientesPedidosConfirmadoWidget(
            refUsuario: params.getParam(
              'refUsuario',
              ParamType.Document,
=======
          name: ClientesPedidosConfirmadoWidget.routeName,
          path: ClientesPedidosConfirmadoWidget.routePath,
          builder: (context, params) => ClientesPedidosConfirmadoWidget(
            refUsuario: params.getParam<GetClientesConFiltroyOrdenRow>(
              'refUsuario',
              ParamType.SqliteRow,
            ),
            observaciones: params.getParam(
              'observaciones',
              ParamType.String,
>>>>>>> 1ddf1af (ultimo realizado)
            ),
          ),
        ),
        FFRoute(
          name: NuevoPedidoWidget.routeName,
          path: NuevoPedidoWidget.routePath,
<<<<<<< HEAD
          asyncParams: {
            'refCliente': getDoc(['mclientes'], MclientesRecord.fromSnapshot),
          },
          builder: (context, params) => NuevoPedidoWidget(
            refCliente: params.getParam(
              'refCliente',
              ParamType.Document,
=======
          builder: (context, params) => NuevoPedidoWidget(
            refCliente: params.getParam<GetClientesConFiltroyOrdenRow>(
              'refCliente',
              ParamType.SqliteRow,
>>>>>>> 1ddf1af (ultimo realizado)
            ),
          ),
        ),
        FFRoute(
          name: PedidosNuevoAgregaItemsWidget.routeName,
          path: PedidosNuevoAgregaItemsWidget.routePath,
<<<<<<< HEAD
          builder: (context, params) => PedidosNuevoAgregaItemsWidget(),
=======
          builder: (context, params) => PedidosNuevoAgregaItemsWidget(
            notapediencabezado: params.getParam(
              'notapediencabezado',
              ParamType.int,
            ),
            refCliente: params.getParam<GetClientesConFiltroyOrdenRow>(
              'refCliente',
              ParamType.SqliteRow,
            ),
            bonif: params.getParam(
              'bonif',
              ParamType.double,
            ),
          ),
>>>>>>> 1ddf1af (ultimo realizado)
        ),
        FFRoute(
          name: PaginaDeCargaWidget.routeName,
          path: PaginaDeCargaWidget.routePath,
          builder: (context, params) => PaginaDeCargaWidget(),
<<<<<<< HEAD
=======
        ),
        FFRoute(
          name: PruebadesincronizacionWidget.routeName,
          path: PruebadesincronizacionWidget.routePath,
          builder: (context, params) => PruebadesincronizacionWidget(),
        ),
        FFRoute(
          name: ClienteCopyWidget.routeName,
          path: ClienteCopyWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'ClienteCopy')
              : ClienteCopyWidget(),
        ),
        FFRoute(
          name: ClientesPedidosObservacionesWidget.routeName,
          path: ClientesPedidosObservacionesWidget.routePath,
          builder: (context, params) => ClientesPedidosObservacionesWidget(
            referencia: params.getParam<GetClientesConFiltroyOrdenRow>(
              'referencia',
              ParamType.SqliteRow,
            ),
          ),
        ),
        FFRoute(
          name: DebugPedidosWidget.routeName,
          path: DebugPedidosWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'DebugPedidos')
              : DebugPedidosWidget(),
>>>>>>> 1ddf1af (ultimo realizado)
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
<<<<<<< HEAD
            return '/authentication1';
=======
            return '/login';
>>>>>>> 1ddf1af (ultimo realizado)
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Midas_App.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
