import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'connection_type_event.dart';
part 'connection_type_state.dart';

class ConnectionTypeBloc
    extends Bloc<ConnectionTypeEvent, ConnectionTypeState> {
  List<String> get connectionTypes => [
        'Емкость (своя)',
        'Магистраль',
        'Колодец',
        'Скважина',
        'Водоем',
        'Другое'
      ];
  @override
  ConnectionTypeState get initialState => const ConnectionTypeIsLoaded(
        connectionType: 'Магистраль',
        otherConnectionType: '',
      );

  @override
  Stream<ConnectionTypeState> mapEventToState(
    ConnectionTypeEvent event,
  ) async* {
    if (event is ChangeConnectionType) {
      yield* _changeConnectionTypeToState(event);
    } else if (event is ChangeOtherConnectionType) {
      yield* _changeOtherConnectionTypeToState(event);
    }
  }

  Stream<ConnectionTypeState> _changeConnectionTypeToState(
      ChangeConnectionType event) async* {
    if (state is ConnectionTypeIsLoaded) {
      final String newConnectionType = event.connectionType;
      yield ConnectionTypeIsLoaded(
        connectionType: newConnectionType,
        otherConnectionType: '',
      );
    }
  }

  Stream<ConnectionTypeState> _changeOtherConnectionTypeToState(
      ChangeOtherConnectionType event) async* {
    if (state is ConnectionTypeIsLoaded) {
      final String newOtherConnectionType = event.otherConnectionType;
      yield ConnectionTypeIsLoaded(
        connectionType: (state as ConnectionTypeIsLoaded).connectionType,
        otherConnectionType: newOtherConnectionType,
      );
    }
  }
}
