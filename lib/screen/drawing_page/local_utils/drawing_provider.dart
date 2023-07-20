import 'package:flutter/material.dart';
import 'package:study_flutter_12_dogfoot02_paint/model/dot_info.dart';

class DrawingProvider extends ChangeNotifier {
  final lines = <List<DotInfo>>[];

  double _size = 3;
  double get size => _size;
  set changeSize(double size) {
    _size = size;
    notifyListeners();
  }

  Color _color = Colors.black;
  Color get color => _color;
  set changeColor(Color color) {
    _color = color;
    notifyListeners();
  }

  bool _eraseMode = false;
  bool get eraseMode => _eraseMode;

  void changeEraseMode() {
    _eraseMode = !_eraseMode; // 토글
    notifyListeners();
  }

  void drawStart(Offset offset) {
    var oneLine = <DotInfo>[];
    oneLine.add(DotInfo(offset, size, color));
    lines.add(oneLine);
    notifyListeners();
  }

  void drawing(Offset offset) {
    lines.last.add(DotInfo(offset, size, color));
    notifyListeners();
  }

  void erase(Offset offset) {}
}
