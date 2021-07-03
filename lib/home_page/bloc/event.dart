import 'dart:io';

import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeBlocEvent {
  HomeBlocEvent();

  @override
  // ignore: override_on_non_overriding_member
  List<Object> get props => [];
}

class HomeBlocSuccessEvent extends HomeBlocEvent {

  HomeBlocSuccessEvent();

  @override
  List<Object> get props => [];
}

