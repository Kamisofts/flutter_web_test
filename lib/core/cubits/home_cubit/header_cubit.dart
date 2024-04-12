import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit_header_state.dart';

class HeaderCubit extends Cubit<CubitHeaderStates> {
  ScrollController scrollController = ScrollController();

  HeaderCubit() : super(HeaderVisible()) {
    scrollController.addListener(initial);
  }

  initial() {

      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (CubitHeaderStates is !HeaderInVisible) {
          emit(HeaderInVisible());
        }

      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (CubitHeaderStates is !HeaderVisible) {
          emit(HeaderVisible());
        }
      }

  }

  @override
  Future<void> close() {
    scrollController.removeListener(initial);
    scrollController.dispose();
    return super.close();
  }
}
