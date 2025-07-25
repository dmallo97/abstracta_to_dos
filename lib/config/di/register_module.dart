import 'package:abstracta_to_dos/core/interceptors/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@module
abstract class RegisterModule {
  @preResolve
  @Named('todosDatabase')
  Future<Database> getTodosDatabase() {
    return openDatabase(
      'todos.db',
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE todos(id INTEGER PRIMARY KEY AUTOINCREMENT, otherId TEXT, title TEXT, description TEXT, dueDate TEXT, isCompleted INT, assignedTo TEXT, completedAt TEXT)',
        );
        await db.execute(
          'CREATE TABLE tags(id INTEGER PRIMARY KEY AUTOINCREMENT, todoId INTEGER, tag TEXT, FOREIGN KEY(todoId) REFERENCES todos(id) ON UPDATE CASCADE)',
        );
        debugPrint('Created todos database. Todos and Tags tables were also created.');
      },
      onOpen: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
        debugPrint('Database opened: $db');
      },
    );
  }

  @Named('geminiAIClient')
  Dio getGeminiAIClient() {
    final dio = Dio(
      BaseOptions(
        headers: {'Content-Type': 'application/json'},
        baseUrl: 'https://generativelanguage.googleapis.com/v1beta',
      ),
    );
    dio.interceptors.addAll([LogInterceptor(responseBody: true, requestBody: true), AuthInterceptor()]);
    return dio;
  }
}
