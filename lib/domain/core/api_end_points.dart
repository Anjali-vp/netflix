import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoint {
  static const downloads = "$KBaseUrl/trending/all/day?api_key=$apiKey";
}
