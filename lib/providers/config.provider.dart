import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Config {
  final String apiPath = env['API_PATH'] ?? '';
}

final configProvider = Provider<Config>((ref) {
  final config = Config();
  assert(config.apiPath != '', 'API path missing in .env');
  return Config();
});
