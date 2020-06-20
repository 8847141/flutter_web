import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'controller_event.dart';
part 'controller_state.dart';

class ControllerBloc extends Bloc<ControllerEvent, ControllerState> {
  List<String> get controllerTypes => ['Внутренний', 'Внешний', 'Не нужен'];

  @override
  ControllerState get initialState => const ControllerIsLoaded(
        controllerType: 'Внутренний',
        controllerWitfWiFi: false,
      );

  @override
  Stream<ControllerState> mapEventToState(
    ControllerEvent event,
  ) async* {
    if (event is ChangeControllerType) {
      yield* _changeControllerTypeToState(event);
    } else if (event is ChangeControllerWitfWiFi) {
      yield* _changeControllerWitfWiFiToState(event);
    }
  }

  Stream<ControllerState> _changeControllerTypeToState(
      ChangeControllerType event) async* {
    if (state is ControllerIsLoaded) {
      final String newControllerType = event.controllerType;
      yield ControllerIsLoaded(
        controllerType: newControllerType,
        controllerWitfWiFi: (state as ControllerIsLoaded).controllerWitfWiFi,
      );
    }
  }

  Stream<ControllerState> _changeControllerWitfWiFiToState(
      ChangeControllerWitfWiFi event) async* {
    if (state is ControllerIsLoaded) {
      final bool controllerWitfWiFi = event.controllerWitfWiFi;
      yield ControllerIsLoaded(
        controllerType: (state as ControllerIsLoaded).controllerType,
        controllerWitfWiFi: controllerWitfWiFi,
      );
    }
  }
}
