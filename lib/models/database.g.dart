// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $RecipeTable extends Recipe with TableInfo<$RecipeTable, RecipeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _prepTimeMeta =
      const VerificationMeta('prepTime');
  @override
  late final GeneratedColumn<int> prepTime = GeneratedColumn<int>(
      'prep_time', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cookTimeMeta =
      const VerificationMeta('cookTime');
  @override
  late final GeneratedColumn<int> cookTime = GeneratedColumn<int>(
      'cook_time', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _servingsMeta =
      const VerificationMeta('servings');
  @override
  late final GeneratedColumn<int> servings = GeneratedColumn<int>(
      'servings', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, description, prepTime, cookTime, servings];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipe';
  @override
  VerificationContext validateIntegrity(Insertable<RecipeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('prep_time')) {
      context.handle(_prepTimeMeta,
          prepTime.isAcceptableOrUnknown(data['prep_time']!, _prepTimeMeta));
    }
    if (data.containsKey('cook_time')) {
      context.handle(_cookTimeMeta,
          cookTime.isAcceptableOrUnknown(data['cook_time']!, _cookTimeMeta));
    }
    if (data.containsKey('servings')) {
      context.handle(_servingsMeta,
          servings.isAcceptableOrUnknown(data['servings']!, _servingsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecipeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecipeData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      prepTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}prep_time']),
      cookTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cook_time']),
      servings: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}servings']),
    );
  }

  @override
  $RecipeTable createAlias(String alias) {
    return $RecipeTable(attachedDatabase, alias);
  }
}

class RecipeData extends DataClass implements Insertable<RecipeData> {
  final int id;
  final String name;
  final String? description;
  final int? prepTime;
  final int? cookTime;
  final int? servings;
  const RecipeData(
      {required this.id,
      required this.name,
      this.description,
      this.prepTime,
      this.cookTime,
      this.servings});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || prepTime != null) {
      map['prep_time'] = Variable<int>(prepTime);
    }
    if (!nullToAbsent || cookTime != null) {
      map['cook_time'] = Variable<int>(cookTime);
    }
    if (!nullToAbsent || servings != null) {
      map['servings'] = Variable<int>(servings);
    }
    return map;
  }

  RecipeCompanion toCompanion(bool nullToAbsent) {
    return RecipeCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      prepTime: prepTime == null && nullToAbsent
          ? const Value.absent()
          : Value(prepTime),
      cookTime: cookTime == null && nullToAbsent
          ? const Value.absent()
          : Value(cookTime),
      servings: servings == null && nullToAbsent
          ? const Value.absent()
          : Value(servings),
    );
  }

  factory RecipeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecipeData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      prepTime: serializer.fromJson<int?>(json['prepTime']),
      cookTime: serializer.fromJson<int?>(json['cookTime']),
      servings: serializer.fromJson<int?>(json['servings']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'prepTime': serializer.toJson<int?>(prepTime),
      'cookTime': serializer.toJson<int?>(cookTime),
      'servings': serializer.toJson<int?>(servings),
    };
  }

  RecipeData copyWith(
          {int? id,
          String? name,
          Value<String?> description = const Value.absent(),
          Value<int?> prepTime = const Value.absent(),
          Value<int?> cookTime = const Value.absent(),
          Value<int?> servings = const Value.absent()}) =>
      RecipeData(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description.present ? description.value : this.description,
        prepTime: prepTime.present ? prepTime.value : this.prepTime,
        cookTime: cookTime.present ? cookTime.value : this.cookTime,
        servings: servings.present ? servings.value : this.servings,
      );
  RecipeData copyWithCompanion(RecipeCompanion data) {
    return RecipeData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
      prepTime: data.prepTime.present ? data.prepTime.value : this.prepTime,
      cookTime: data.cookTime.present ? data.cookTime.value : this.cookTime,
      servings: data.servings.present ? data.servings.value : this.servings,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecipeData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('prepTime: $prepTime, ')
          ..write('cookTime: $cookTime, ')
          ..write('servings: $servings')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, description, prepTime, cookTime, servings);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecipeData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.prepTime == this.prepTime &&
          other.cookTime == this.cookTime &&
          other.servings == this.servings);
}

class RecipeCompanion extends UpdateCompanion<RecipeData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<int?> prepTime;
  final Value<int?> cookTime;
  final Value<int?> servings;
  const RecipeCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.prepTime = const Value.absent(),
    this.cookTime = const Value.absent(),
    this.servings = const Value.absent(),
  });
  RecipeCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.description = const Value.absent(),
    this.prepTime = const Value.absent(),
    this.cookTime = const Value.absent(),
    this.servings = const Value.absent(),
  }) : name = Value(name);
  static Insertable<RecipeData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<int>? prepTime,
    Expression<int>? cookTime,
    Expression<int>? servings,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (prepTime != null) 'prep_time': prepTime,
      if (cookTime != null) 'cook_time': cookTime,
      if (servings != null) 'servings': servings,
    });
  }

  RecipeCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? description,
      Value<int?>? prepTime,
      Value<int?>? cookTime,
      Value<int?>? servings}) {
    return RecipeCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      prepTime: prepTime ?? this.prepTime,
      cookTime: cookTime ?? this.cookTime,
      servings: servings ?? this.servings,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (prepTime.present) {
      map['prep_time'] = Variable<int>(prepTime.value);
    }
    if (cookTime.present) {
      map['cook_time'] = Variable<int>(cookTime.value);
    }
    if (servings.present) {
      map['servings'] = Variable<int>(servings.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipeCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('prepTime: $prepTime, ')
          ..write('cookTime: $cookTime, ')
          ..write('servings: $servings')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $RecipeTable recipe = $RecipeTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [recipe];
}

typedef $$RecipeTableCreateCompanionBuilder = RecipeCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> description,
  Value<int?> prepTime,
  Value<int?> cookTime,
  Value<int?> servings,
});
typedef $$RecipeTableUpdateCompanionBuilder = RecipeCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> description,
  Value<int?> prepTime,
  Value<int?> cookTime,
  Value<int?> servings,
});

class $$RecipeTableFilterComposer
    extends Composer<_$AppDatabase, $RecipeTable> {
  $$RecipeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get prepTime => $composableBuilder(
      column: $table.prepTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get cookTime => $composableBuilder(
      column: $table.cookTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get servings => $composableBuilder(
      column: $table.servings, builder: (column) => ColumnFilters(column));
}

class $$RecipeTableOrderingComposer
    extends Composer<_$AppDatabase, $RecipeTable> {
  $$RecipeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get prepTime => $composableBuilder(
      column: $table.prepTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get cookTime => $composableBuilder(
      column: $table.cookTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get servings => $composableBuilder(
      column: $table.servings, builder: (column) => ColumnOrderings(column));
}

class $$RecipeTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecipeTable> {
  $$RecipeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<int> get prepTime =>
      $composableBuilder(column: $table.prepTime, builder: (column) => column);

  GeneratedColumn<int> get cookTime =>
      $composableBuilder(column: $table.cookTime, builder: (column) => column);

  GeneratedColumn<int> get servings =>
      $composableBuilder(column: $table.servings, builder: (column) => column);
}

class $$RecipeTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RecipeTable,
    RecipeData,
    $$RecipeTableFilterComposer,
    $$RecipeTableOrderingComposer,
    $$RecipeTableAnnotationComposer,
    $$RecipeTableCreateCompanionBuilder,
    $$RecipeTableUpdateCompanionBuilder,
    (RecipeData, BaseReferences<_$AppDatabase, $RecipeTable, RecipeData>),
    RecipeData,
    PrefetchHooks Function()> {
  $$RecipeTableTableManager(_$AppDatabase db, $RecipeTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecipeTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecipeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecipeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<int?> prepTime = const Value.absent(),
            Value<int?> cookTime = const Value.absent(),
            Value<int?> servings = const Value.absent(),
          }) =>
              RecipeCompanion(
            id: id,
            name: name,
            description: description,
            prepTime: prepTime,
            cookTime: cookTime,
            servings: servings,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> description = const Value.absent(),
            Value<int?> prepTime = const Value.absent(),
            Value<int?> cookTime = const Value.absent(),
            Value<int?> servings = const Value.absent(),
          }) =>
              RecipeCompanion.insert(
            id: id,
            name: name,
            description: description,
            prepTime: prepTime,
            cookTime: cookTime,
            servings: servings,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RecipeTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RecipeTable,
    RecipeData,
    $$RecipeTableFilterComposer,
    $$RecipeTableOrderingComposer,
    $$RecipeTableAnnotationComposer,
    $$RecipeTableCreateCompanionBuilder,
    $$RecipeTableUpdateCompanionBuilder,
    (RecipeData, BaseReferences<_$AppDatabase, $RecipeTable, RecipeData>),
    RecipeData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$RecipeTableTableManager get recipe =>
      $$RecipeTableTableManager(_db, _db.recipe);
}
