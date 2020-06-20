import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/budget_bloc/budget_bloc.dart';
import '../constants.dart';

class Budget extends StatelessWidget {
  Budget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Предполагаемый бюджет',
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        Align(
          alignment: Alignment.topLeft,
          child: BlocBuilder<BudgetBloc, BudgetState>(
            builder: (context, bloc) {
              if (bloc is BudgetIsLoaded) {
                return Column(
                  children: [
                    DecoratedBox(
                      decoration: answerDecoration,
                      child: DropdownButton<String>(
                        value: bloc.budget,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 30.0,
                        itemHeight: 56.0,
                        isExpanded: true,
                        style: secondaryTextStyle,
                        underline: const SizedBox.shrink(),
                        iconEnabledColor: mainColor,
                        onChanged: (budget) => context
                            .bloc<BudgetBloc>()
                            .add(ChangeBudget(budget)),
                        items: context
                            .bloc<BudgetBloc>()
                            .budgets
                            .map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  25.0, 0.0, 25.0, 0.0),
                              child: Text(value),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    questionIndent,
                    bloc.budget == context.bloc<BudgetBloc>().budgets.last
                        ? Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 25.0),
                                child: Text(
                                  'Ваш вариант, руб:',
                                  style: secondaryTextStyle,
                                ),
                              ),
                              questionIndent,
                              Flexible(
                                child: SizedBox(
                                  height: 56.0,
                                  child: TextField(
                                    onChanged: (value) => context
                                        .bloc<BudgetBloc>()
                                        .add(ChangeOtherBudget(value)),
                                    cursorColor: mainColor,
                                    maxLines: 1,
                                    minLines: 1,
                                    decoration: textFormInputDecoration,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : const SizedBox(),
                  ],
                );
              } else {
                return null;
              }
            },
          ),
        ),
      ],
    );
  }
}
