import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedAgentIdProvider = StateProvider((ref) => 0);
final currentIndexMapsProvider = StateProvider<int>((ref) => 0);
