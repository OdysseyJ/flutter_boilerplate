import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class PostEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PostLoadEvent extends PostEvent {}
