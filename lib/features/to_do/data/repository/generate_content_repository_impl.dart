import 'package:abstracta_to_dos/features/to_do/data/source/generate_content_source.dart';
import 'package:abstracta_to_dos/features/to_do/domain/repository/generate_content_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GenerateContentRepository)
class GenerateContentRepositoryImpl implements GenerateContentRepository {
  final GenerateContentSource _generateContentSource;

  GenerateContentRepositoryImpl(@Named('geminiContentSource') this._generateContentSource);

  @override
  Future<String> generateDescription(String prompt) {
    return _generateContentSource.generateDescription(prompt);
  }
}
