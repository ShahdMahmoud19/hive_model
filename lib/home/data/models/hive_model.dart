import 'package:hive/hive.dart';
import 'package:hive_model/home/data/models/model.dart';
import 'package:path_provider/path_provider.dart';

class HiveModel {
  static final HiveModel _hiveModel = HiveModel._internal();
  HiveModel._internal();
  factory HiveModel() => _hiveModel;
  Box? box;
  Future<Box> init() async {
    if (!Hive.isBoxOpen('myBox')) {
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);
    }
    box = await Hive.openBox('myBox');
    return box!;
  }

  void addData(Model model) {
    box!.add(model.toMap());
  }
  List<Model> getData() {
    final data = box?.values.map((e) => Model.fromMap(Map<String, dynamic>.from(e))).toList()??[];
    return data;
  }
  void deleteData(int index) {
    box!.deleteAt(index);
  }
  void updateData(int index, Model model) {
    box!.putAt(index, model.toMap());
  }
}
