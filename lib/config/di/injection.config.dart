// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sqflite/sqflite.dart' as _i779;

import '../../core/connectivity/connectivity_check_bloc.dart' as _i986;
import '../../features/summary/domain/usecases/create_summary.dart' as _i615;
import '../../features/summary/presentation/cubit/summary_cubit.dart' as _i705;
import '../../features/to_do/data/repository/generate_content_repository_impl.dart'
    as _i527;
import '../../features/to_do/data/repository/to_do_repository_impl.dart'
    as _i164;
import '../../features/to_do/data/service/gemini_gen_content_service.dart'
    as _i295;
import '../../features/to_do/data/source/gemini_gen_content.dart' as _i558;
import '../../features/to_do/data/source/generate_content_source.dart' as _i499;
import '../../features/to_do/data/source/local_to_do_source.dart' as _i186;
import '../../features/to_do/data/source/to_do_data_source.dart' as _i422;
import '../../features/to_do/domain/repository/generate_content_repository.dart'
    as _i966;
import '../../features/to_do/domain/repository/to_do_repository.dart' as _i157;
import '../../features/to_do/domain/usecases/add_to_do.dart' as _i350;
import '../../features/to_do/domain/usecases/complete_to_do.dart' as _i646;
import '../../features/to_do/domain/usecases/delete_to_do.dart' as _i783;
import '../../features/to_do/domain/usecases/edit_to_do.dart' as _i450;
import '../../features/to_do/domain/usecases/generate_description.dart'
    as _i946;
import '../../features/to_do/domain/usecases/get_completed_to_dos.dart'
    as _i732;
import '../../features/to_do/domain/usecases/get_pending_to_dos.dart' as _i475;
import '../../features/to_do/presentation/bloc/to_do_bloc.dart' as _i771;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i986.ConnectivityCheckBloc>(
      () => _i986.ConnectivityCheckBloc(),
    );
    await gh.factoryAsync<_i779.Database>(
      () => registerModule.getTodosDatabase(),
      instanceName: 'todosDatabase',
      preResolve: true,
    );
    gh.factory<_i361.Dio>(
      () => registerModule.getGeminiAIClient(),
      instanceName: 'geminiAIClient',
    );
    gh.factory<_i422.ToDoDataSource>(
      () => _i186.LocalToDoSource(
        gh<_i779.Database>(instanceName: 'todosDatabase'),
      ),
      instanceName: 'toDoLocalSource',
    );
    gh.factory<_i295.GeminiGenContentService>(
      () => _i295.GeminiGenContentService(
        gh<_i361.Dio>(instanceName: 'geminiAIClient'),
      ),
    );
    gh.singleton<_i157.ToDoRepository>(
      () => _i164.ToDoRepositoryImpl(
        gh<_i422.ToDoDataSource>(instanceName: 'toDoLocalSource'),
      ),
    );
    gh.factory<_i499.GenerateContentSource>(
      () => _i558.GeminiGenContent(gh<_i295.GeminiGenContentService>()),
      instanceName: 'geminiContentSource',
    );
    gh.factory<_i450.EditToDo>(
      () => _i450.EditToDo(gh<_i157.ToDoRepository>()),
    );
    gh.factory<_i350.AddToDo>(() => _i350.AddToDo(gh<_i157.ToDoRepository>()));
    gh.factory<_i475.GetPendingToDos>(
      () => _i475.GetPendingToDos(gh<_i157.ToDoRepository>()),
    );
    gh.factory<_i732.GetCompletedToDos>(
      () => _i732.GetCompletedToDos(gh<_i157.ToDoRepository>()),
    );
    gh.factory<_i783.DeleteToDo>(
      () => _i783.DeleteToDo(gh<_i157.ToDoRepository>()),
    );
    gh.factory<_i615.CreateSummary>(
      () => _i615.CreateSummary(gh<_i157.ToDoRepository>()),
    );
    gh.factory<_i966.GenerateContentRepository>(
      () => _i527.GenerateContentRepositoryImpl(
        gh<_i499.GenerateContentSource>(instanceName: 'geminiContentSource'),
      ),
    );
    gh.factory<_i946.GenerateDescription>(
      () => _i946.GenerateDescription(gh<_i966.GenerateContentRepository>()),
    );
    gh.factory<_i646.CompleteToDo>(
      () => _i646.CompleteToDo(gh<_i450.EditToDo>()),
    );
    gh.lazySingleton<_i771.ToDoBloc>(
      () => _i771.ToDoBloc(
        gh<_i350.AddToDo>(),
        gh<_i475.GetPendingToDos>(),
        gh<_i732.GetCompletedToDos>(),
        gh<_i646.CompleteToDo>(),
        gh<_i783.DeleteToDo>(),
        gh<_i450.EditToDo>(),
        gh<_i946.GenerateDescription>(),
      ),
    );
    gh.lazySingleton<_i705.SummaryCubit>(
      () => _i705.SummaryCubit(gh<_i615.CreateSummary>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
