import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_2/models/models.dart';
import 'package:bloc/bloc.dart';

part 'swipe_event.dart';
part 'swipe_state.dart';

// ignore: depend_on_referenced_packages

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(SwipeLoading()) {
    on<LoadUsers>(_onLoadUsers);
    on<SwipeLeft>(_onSwipeLeft);
    on<SwipeRight>(_onSwipeRight);
  }

  void _onLoadUsers(
    LoadUsers event,
    Emitter<SwipeState> emit,
  ) {
    emit(SwipeLoaded(users: event.users));
  }

  void _onSwipeLeft(
    SwipeLeft event,
    Emitter<SwipeState> emit,
  ) {
    if (state is SwipeLoaded) {
      final state = this.state as SwipeLoaded;
      try {
        emit(SwipeLoaded(users: List.from(state.users)..remove(event.user)));
      } catch (_) {}
    }
  }

  void _onSwipeRight(
    SwipeRight event,
    Emitter<SwipeState> emit,
  ) {
    if (state is SwipeLoaded) {
      final state = this.state as SwipeLoaded;
      try {
        emit(SwipeLoaded(users: List.from(state.users)..remove(event.user)));
      } catch (_) {}
    }
  }
}
