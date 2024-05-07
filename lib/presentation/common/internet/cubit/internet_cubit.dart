import 'dart:async' show Future, StreamSubscription;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  InternetCubit({required this.connectivity}) : super(InternetLoading()) {
    connectivitySubscription = connectivity.onConnectivityChanged.listen(
      monitorInternetConnectivity,
    );
  }
  final Connectivity connectivity;
  late StreamSubscription<List<ConnectivityResult>> connectivitySubscription;

  void monitorInternetConnectivity(
    List<ConnectivityResult> connectivityResult,
  ) {
    final connectionType = connectivityResult[0].name;
    if (connectionType == 'none') {
      emitInternetDisconnected();
    } else {
      emitInternetConnected(connectionType);
    }
  }

  void emitInternetConnected(String connectionType) {
    emit(InternetConnected(connectionType: connectionType));
  }

  void emitInternetDisconnected() {
    emit(InternetDisconnected());
  }

  @override
  Future<void> close() {
    connectivitySubscription.cancel();
    return super.close();
  }
}
