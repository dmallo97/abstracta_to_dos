import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'connectivity_check_bloc.freezed.dart';
part 'connectivity_check_event.dart';
part 'connectivity_check_state.dart';

@lazySingleton
class ConnectivityCheckBloc extends Bloc<ConnectivityCheckEvent, ConnectivityCheckState> {
  late Connectivity _connectivity;
  ConnectivityCheckBloc() : super(const LoadingConnectivityCheckState()) {
    _connectivity = Connectivity();
    
    _connectivity.onConnectivityChanged.listen(
      (List<ConnectivityResult> connectivityResults) {
        add(_UpdateConnectivity(connectivityResults.last));
      },
    );

    on<_UpdateConnectivity>((event, emit) {
      if (event.connectivityResult == ConnectivityResult.wifi ||
          event.connectivityResult == ConnectivityResult.mobile) {
        emit(const ConnectedConnectivityCheckState());
      } else {
        emit(const NotConnectedConnectivityCheckState());
      }
    });

    on<_CheckConnectivity>((event, emit) async {
      emit(const LoadingConnectivityCheckState());
      final connectivityResults = await _connectivity.checkConnectivity();
      if (connectivityResults.last == ConnectivityResult.wifi ||
          connectivityResults.last == ConnectivityResult.mobile) {
        emit(const ConnectedConnectivityCheckState());
      } else {
        emit(const NotConnectedConnectivityCheckState());
      }
    });
  }
}
