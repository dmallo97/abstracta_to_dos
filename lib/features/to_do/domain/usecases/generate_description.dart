import 'package:abstracta_to_dos/features/to_do/domain/repository/generate_content_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GenerateDescription {
  final GenerateContentRepository repository;
  GenerateDescription(this.repository);

  Future<String> call(String prompt) async {
    return repository.generateDescription(prompt);
  }
}
