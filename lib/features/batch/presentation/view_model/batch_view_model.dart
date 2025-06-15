import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management/features/batch/domain/use_case/create_batch_usecase.dart';
import 'package:student_management/features/batch/domain/use_case/delete_batch_usecase.dart';
import 'package:student_management/features/batch/domain/use_case/get_all_batch_usecase.dart';
import 'package:student_management/features/batch/presentation/view_model/batch_event.dart';
import 'package:student_management/features/batch/presentation/view_model/batch_state.dart';

class BatchViewModel extends Bloc<BatchEvent, BatchState> {
  final GetAllBatchUsecase getAllBatchUsecase;
  final CreateBatchUsecase createBatchUsecase;
  final DeleteBatchUsecase deleteBatchUsecase;

  BatchViewModel({
    required this.getAllBatchUsecase,
    required this.createBatchUsecase,
    required this.deleteBatchUsecase,
  }) : super(BatchState.initial()) {
    on<LoadBatchesEvent>(_onLoadBatches);
    on<CreateBatchEvent>(_onCreateBatch);
    on<DeleteBatchEvent>(_onDeleteBatch);

    add(LoadBatchesEvent());
  }
}

Future<void> _onDeleteBatch(
  DeleteBatchEvent event,
  Emitter<BatchState> emit,
) async {}

Future<void> _onCreateBatch(
  CreateBatchEvent event,
  Emitter<BatchState> emit,
) async {}

Future<void> _onLoadBatches(
  LoadBatchesEvent event,
  Emitter<BatchState> emit,
) async {}
