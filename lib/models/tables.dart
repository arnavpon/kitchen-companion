import 'package:drift/drift.dart';

class Recipe extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get description => text().nullable()();
  IntColumn get prepTime => integer().nullable()();
  IntColumn get cookTime => integer().nullable()();
  IntColumn get servings => integer().nullable()();
}
