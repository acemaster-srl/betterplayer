import 'package:better_player/src/hls/hls_parser/hls_track_metadata_entry.dart';
import 'package:collection/collection.dart';

class Metadata {
  Metadata(this.list);

  final List<HlsTrackMetadataEntry> list;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == runtimeType
        && other is Metadata
        && const ListEquality<HlsTrackMetadataEntry>()
            .equals(other.list, list);
  }

  @override
  int get hashCode => list.hashCode;
}
