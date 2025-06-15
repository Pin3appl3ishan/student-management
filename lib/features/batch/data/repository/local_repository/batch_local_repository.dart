import 'package:dartz/dartz.dart';
import 'package:student_management/core/error/failure.dart';
import 'package:student_management/features/batch/data/data_source/local_datasource/batch_local_datasource.dart';
import 'package:student_management/features/batch/domain/entity/batch_entity.dart';
import 'package:student_management/features/batch/domain/repository/batch_repository.dart';

class BatchLocalRepository implements IBatchRepository {
  final BatchLocalDatasource _batchLocalDatasource;

  BatchLocalRepository({required BatchLocalDatasource batchLocalDatasource})
    : _batchLocalDatasource = batchLocalDatasource;

  @override
  Future<Either<Failure, void>> createBatch(BatchEntity batch) {
    try {
      _batchLocalDatasource.createBranch(batch);
      return Future.value(Right(null)); 
    } catch (e) {
      return Future.value(Left(LocalDatabseFailure(message: e.toString())));
    }
  }
  
  @override
  Future<Either<Failure, void>> deleteBatch(String id) {
    try {
      _batchLocalDatasource.deleteBranch(id);
      return Future.value(Right(null));
    } catch (e) {
      return Future.value(Left(LocalDatabseFailure(message: e.toString())));
    }
  }
  
  @override
  Future<Either<Failure, List<BatchEntity>>> getBatches() {
    try {
      return _batchLocalDatasource.getBatches().then((batches) {
        return Right(batches);
      });
    } catch (e) {
      return Future.value(Left(LocalDatabseFailure(message: e.toString())));
    }
  }


}
