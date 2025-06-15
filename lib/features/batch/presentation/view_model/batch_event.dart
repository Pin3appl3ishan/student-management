import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
sealed class BatchEvent extends Equatable {
  const BatchEvent();

  @override
  List<Object> get props => [];
}

final class LoadBatchesEvent extends BatchEvent {}

final class CreateBatchEvent extends BatchEvent {
  final String batchName;
  const CreateBatchEvent(this.batchName);

  @override
  List<Object> get props => [batchName];
}

final class DeleteBatchEvent extends BatchEvent {
  final String batchId;
  const DeleteBatchEvent(this.batchId);

  @override
  List<Object> get props => [batchId];
}
