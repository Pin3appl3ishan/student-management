import 'package:student_management/features/batch/domain/entity/batch_entity.dart';

abstract interface class IBatchDataSource {
  Future<List<BatchEntity>> getBatches();
  Future<void> createBranch(BatchEntity batch);
  Future<void> deleteBranch(String id);
}
