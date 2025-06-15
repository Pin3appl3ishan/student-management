import 'package:student_management/core/network/hive_service.dart';
import 'package:student_management/features/batch/data/data_source/batch_data_source.dart';
import 'package:student_management/features/batch/data/model/batch_hive_model.dart';
import 'package:student_management/features/batch/domain/entity/batch_entity.dart';

class BatchLocalDatasource implements IBatchDataSource{
  final  HiveService _hiveService;
  BatchLocalDatasource(this._hiveService);

  @override
  Future<void> createBranch(BatchEntity batchEntity) async {
    try {
      final batchHiveModel = BatchHiveModel.fromEntity(batchEntity);
      await _hiveService.addBatch(batchHiveModel);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteBranch(String id) {
    try {
      return _hiveService.deleteBatch(id);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<BatchEntity>> getBatches() {
    try {
      return _hiveService.getAllBatches().then((batches) {
        return batches.map((batch) => batch.toEntity()).toList();
      });
    } catch (e) {
      throw Exception(e);
    }
  }
}
