import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'budget_event.dart';
part 'budget_state.dart';

class BudgetBloc extends Bloc<BudgetEvent, BudgetState> {
  BudgetBloc()
      : super(const BudgetIsLoaded('На ваше усмотрение (Стандарт)', ''));

  List<String> get budgets => [
        'До 50 тыс. руб',
        'До 100 тыс. руб',
        'До 200 тыс. руб',
        'До 300 тыс. руб',
        'На ваше усмотрение (Эконом)',
        'На ваше усмотрение (Стандарт)',
        'На ваше усмотрение (Премиум)',
        'Другое',
      ];

  @override
  Stream<BudgetState> mapEventToState(
    BudgetEvent event,
  ) async* {
    if (event is ChangeBudget) {
      yield* _changeBudgetToState(event);
    } else if (event is ChangeOtherBudget) {
      yield* _changeOtherBudgetToState(event);
    }
  }

  Stream<BudgetState> _changeBudgetToState(ChangeBudget event) async* {
    if (state is BudgetIsLoaded) {
      final String newBudget = event.budget;
      yield BudgetIsLoaded(newBudget, '');
    }
  }

  Stream<BudgetState> _changeOtherBudgetToState(
      ChangeOtherBudget event) async* {
    if (state is BudgetIsLoaded) {
      final String newOtherBudget = event.otherBudget;
      yield BudgetIsLoaded((state as BudgetIsLoaded).budget, newOtherBudget);
    }
  }
}
