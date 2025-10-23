import 'package:collection/collection.dart';

import 'scheme_data.dart';

class DrmInitData {
  DrmInitData({this.schemeType, this.schemeData = const []});

  final List<SchemeData> schemeData;
  final String? schemeType;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == runtimeType
        && other is DrmInitData
        && schemeType == other.schemeType
        && const ListEquality<SchemeData>().equals(other.schemeData, schemeData);
  }

  @override
  int get hashCode => Object.hash(schemeType, schemeData);
}
