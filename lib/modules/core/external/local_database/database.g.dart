// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $FinnacesHeaderTableTable extends FinnacesHeaderTable
    with TableInfo<$FinnacesHeaderTableTable, FinnacesHeaderTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FinnacesHeaderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _monthMeta = const VerificationMeta('month');
  @override
  late final GeneratedColumn<String> month = GeneratedColumn<String>(
    'month',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalReceivedMeta = const VerificationMeta(
    'totalReceived',
  );
  @override
  late final GeneratedColumn<String> totalReceived = GeneratedColumn<String>(
    'total_received',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalSpentMeta = const VerificationMeta(
    'totalSpent',
  );
  @override
  late final GeneratedColumn<String> totalSpent = GeneratedColumn<String>(
    'total_spent',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    year,
    month,
    totalReceived,
    totalSpent,
    deletedAt,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'finnaces_header_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FinnacesHeaderTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('month')) {
      context.handle(
        _monthMeta,
        month.isAcceptableOrUnknown(data['month']!, _monthMeta),
      );
    } else if (isInserting) {
      context.missing(_monthMeta);
    }
    if (data.containsKey('total_received')) {
      context.handle(
        _totalReceivedMeta,
        totalReceived.isAcceptableOrUnknown(
          data['total_received']!,
          _totalReceivedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalReceivedMeta);
    }
    if (data.containsKey('total_spent')) {
      context.handle(
        _totalSpentMeta,
        totalSpent.isAcceptableOrUnknown(data['total_spent']!, _totalSpentMeta),
      );
    } else if (isInserting) {
      context.missing(_totalSpentMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FinnacesHeaderTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FinnacesHeaderTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}year'],
      )!,
      month: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}month'],
      )!,
      totalReceived: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}total_received'],
      )!,
      totalSpent: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}total_spent'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FinnacesHeaderTableTable createAlias(String alias) {
    return $FinnacesHeaderTableTable(attachedDatabase, alias);
  }
}

class FinnacesHeaderTableData extends DataClass
    implements Insertable<FinnacesHeaderTableData> {
  final String id;
  final int year;
  final String month;
  final String totalReceived;
  final String totalSpent;
  final DateTime? deletedAt;
  final DateTime createdAt;
  const FinnacesHeaderTableData({
    required this.id,
    required this.year,
    required this.month,
    required this.totalReceived,
    required this.totalSpent,
    this.deletedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['year'] = Variable<int>(year);
    map['month'] = Variable<String>(month);
    map['total_received'] = Variable<String>(totalReceived);
    map['total_spent'] = Variable<String>(totalSpent);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FinnacesHeaderTableCompanion toCompanion(bool nullToAbsent) {
    return FinnacesHeaderTableCompanion(
      id: Value(id),
      year: Value(year),
      month: Value(month),
      totalReceived: Value(totalReceived),
      totalSpent: Value(totalSpent),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      createdAt: Value(createdAt),
    );
  }

  factory FinnacesHeaderTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FinnacesHeaderTableData(
      id: serializer.fromJson<String>(json['id']),
      year: serializer.fromJson<int>(json['year']),
      month: serializer.fromJson<String>(json['month']),
      totalReceived: serializer.fromJson<String>(json['totalReceived']),
      totalSpent: serializer.fromJson<String>(json['totalSpent']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'year': serializer.toJson<int>(year),
      'month': serializer.toJson<String>(month),
      'totalReceived': serializer.toJson<String>(totalReceived),
      'totalSpent': serializer.toJson<String>(totalSpent),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FinnacesHeaderTableData copyWith({
    String? id,
    int? year,
    String? month,
    String? totalReceived,
    String? totalSpent,
    Value<DateTime?> deletedAt = const Value.absent(),
    DateTime? createdAt,
  }) => FinnacesHeaderTableData(
    id: id ?? this.id,
    year: year ?? this.year,
    month: month ?? this.month,
    totalReceived: totalReceived ?? this.totalReceived,
    totalSpent: totalSpent ?? this.totalSpent,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  FinnacesHeaderTableData copyWithCompanion(FinnacesHeaderTableCompanion data) {
    return FinnacesHeaderTableData(
      id: data.id.present ? data.id.value : this.id,
      year: data.year.present ? data.year.value : this.year,
      month: data.month.present ? data.month.value : this.month,
      totalReceived: data.totalReceived.present
          ? data.totalReceived.value
          : this.totalReceived,
      totalSpent: data.totalSpent.present
          ? data.totalSpent.value
          : this.totalSpent,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FinnacesHeaderTableData(')
          ..write('id: $id, ')
          ..write('year: $year, ')
          ..write('month: $month, ')
          ..write('totalReceived: $totalReceived, ')
          ..write('totalSpent: $totalSpent, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    year,
    month,
    totalReceived,
    totalSpent,
    deletedAt,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FinnacesHeaderTableData &&
          other.id == this.id &&
          other.year == this.year &&
          other.month == this.month &&
          other.totalReceived == this.totalReceived &&
          other.totalSpent == this.totalSpent &&
          other.deletedAt == this.deletedAt &&
          other.createdAt == this.createdAt);
}

class FinnacesHeaderTableCompanion
    extends UpdateCompanion<FinnacesHeaderTableData> {
  final Value<String> id;
  final Value<int> year;
  final Value<String> month;
  final Value<String> totalReceived;
  final Value<String> totalSpent;
  final Value<DateTime?> deletedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const FinnacesHeaderTableCompanion({
    this.id = const Value.absent(),
    this.year = const Value.absent(),
    this.month = const Value.absent(),
    this.totalReceived = const Value.absent(),
    this.totalSpent = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FinnacesHeaderTableCompanion.insert({
    required String id,
    required int year,
    required String month,
    required String totalReceived,
    required String totalSpent,
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       year = Value(year),
       month = Value(month),
       totalReceived = Value(totalReceived),
       totalSpent = Value(totalSpent);
  static Insertable<FinnacesHeaderTableData> custom({
    Expression<String>? id,
    Expression<int>? year,
    Expression<String>? month,
    Expression<String>? totalReceived,
    Expression<String>? totalSpent,
    Expression<DateTime>? deletedAt,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (year != null) 'year': year,
      if (month != null) 'month': month,
      if (totalReceived != null) 'total_received': totalReceived,
      if (totalSpent != null) 'total_spent': totalSpent,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FinnacesHeaderTableCompanion copyWith({
    Value<String>? id,
    Value<int>? year,
    Value<String>? month,
    Value<String>? totalReceived,
    Value<String>? totalSpent,
    Value<DateTime?>? deletedAt,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return FinnacesHeaderTableCompanion(
      id: id ?? this.id,
      year: year ?? this.year,
      month: month ?? this.month,
      totalReceived: totalReceived ?? this.totalReceived,
      totalSpent: totalSpent ?? this.totalSpent,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (month.present) {
      map['month'] = Variable<String>(month.value);
    }
    if (totalReceived.present) {
      map['total_received'] = Variable<String>(totalReceived.value);
    }
    if (totalSpent.present) {
      map['total_spent'] = Variable<String>(totalSpent.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FinnacesHeaderTableCompanion(')
          ..write('id: $id, ')
          ..write('year: $year, ')
          ..write('month: $month, ')
          ..write('totalReceived: $totalReceived, ')
          ..write('totalSpent: $totalSpent, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BooksNacionalityTableTable extends BooksNacionalityTable
    with TableInfo<$BooksNacionalityTableTable, BooksNacionalityTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksNacionalityTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [id, description, deletedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books_nacionality_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<BooksNacionalityTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BooksNacionalityTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BooksNacionalityTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $BooksNacionalityTableTable createAlias(String alias) {
    return $BooksNacionalityTableTable(attachedDatabase, alias);
  }
}

class BooksNacionalityTableData extends DataClass
    implements Insertable<BooksNacionalityTableData> {
  final String id;
  final String description;
  final DateTime? deletedAt;
  final DateTime createdAt;
  const BooksNacionalityTableData({
    required this.id,
    required this.description,
    this.deletedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BooksNacionalityTableCompanion toCompanion(bool nullToAbsent) {
    return BooksNacionalityTableCompanion(
      id: Value(id),
      description: Value(description),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      createdAt: Value(createdAt),
    );
  }

  factory BooksNacionalityTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BooksNacionalityTableData(
      id: serializer.fromJson<String>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'description': serializer.toJson<String>(description),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  BooksNacionalityTableData copyWith({
    String? id,
    String? description,
    Value<DateTime?> deletedAt = const Value.absent(),
    DateTime? createdAt,
  }) => BooksNacionalityTableData(
    id: id ?? this.id,
    description: description ?? this.description,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  BooksNacionalityTableData copyWithCompanion(
    BooksNacionalityTableCompanion data,
  ) {
    return BooksNacionalityTableData(
      id: data.id.present ? data.id.value : this.id,
      description: data.description.present
          ? data.description.value
          : this.description,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BooksNacionalityTableData(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, description, deletedAt, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BooksNacionalityTableData &&
          other.id == this.id &&
          other.description == this.description &&
          other.deletedAt == this.deletedAt &&
          other.createdAt == this.createdAt);
}

class BooksNacionalityTableCompanion
    extends UpdateCompanion<BooksNacionalityTableData> {
  final Value<String> id;
  final Value<String> description;
  final Value<DateTime?> deletedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const BooksNacionalityTableCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BooksNacionalityTableCompanion.insert({
    required String id,
    required String description,
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       description = Value(description);
  static Insertable<BooksNacionalityTableData> custom({
    Expression<String>? id,
    Expression<String>? description,
    Expression<DateTime>? deletedAt,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BooksNacionalityTableCompanion copyWith({
    Value<String>? id,
    Value<String>? description,
    Value<DateTime?>? deletedAt,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return BooksNacionalityTableCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksNacionalityTableCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BooksAuthorTableTable extends BooksAuthorTable
    with TableInfo<$BooksAuthorTableTable, BooksAuthorTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksAuthorTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fullNameMeta = const VerificationMeta(
    'fullName',
  );
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
    'full_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nacionalityMeta = const VerificationMeta(
    'nacionality',
  );
  @override
  late final GeneratedColumn<String> nacionality = GeneratedColumn<String>(
    'nacionality',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES books_nacionality_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    fullName,
    gender,
    nacionality,
    deletedAt,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books_author_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<BooksAuthorTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(
        _fullNameMeta,
        fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta),
      );
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    }
    if (data.containsKey('nacionality')) {
      context.handle(
        _nacionalityMeta,
        nacionality.isAcceptableOrUnknown(
          data['nacionality']!,
          _nacionalityMeta,
        ),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BooksAuthorTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BooksAuthorTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      fullName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}full_name'],
      )!,
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      ),
      nacionality: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nacionality'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $BooksAuthorTableTable createAlias(String alias) {
    return $BooksAuthorTableTable(attachedDatabase, alias);
  }
}

class BooksAuthorTableData extends DataClass
    implements Insertable<BooksAuthorTableData> {
  final String id;
  final String fullName;
  final String? gender;
  final String? nacionality;
  final DateTime? deletedAt;
  final DateTime createdAt;
  const BooksAuthorTableData({
    required this.id,
    required this.fullName,
    this.gender,
    this.nacionality,
    this.deletedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['full_name'] = Variable<String>(fullName);
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    if (!nullToAbsent || nacionality != null) {
      map['nacionality'] = Variable<String>(nacionality);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BooksAuthorTableCompanion toCompanion(bool nullToAbsent) {
    return BooksAuthorTableCompanion(
      id: Value(id),
      fullName: Value(fullName),
      gender: gender == null && nullToAbsent
          ? const Value.absent()
          : Value(gender),
      nacionality: nacionality == null && nullToAbsent
          ? const Value.absent()
          : Value(nacionality),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      createdAt: Value(createdAt),
    );
  }

  factory BooksAuthorTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BooksAuthorTableData(
      id: serializer.fromJson<String>(json['id']),
      fullName: serializer.fromJson<String>(json['fullName']),
      gender: serializer.fromJson<String?>(json['gender']),
      nacionality: serializer.fromJson<String?>(json['nacionality']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fullName': serializer.toJson<String>(fullName),
      'gender': serializer.toJson<String?>(gender),
      'nacionality': serializer.toJson<String?>(nacionality),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  BooksAuthorTableData copyWith({
    String? id,
    String? fullName,
    Value<String?> gender = const Value.absent(),
    Value<String?> nacionality = const Value.absent(),
    Value<DateTime?> deletedAt = const Value.absent(),
    DateTime? createdAt,
  }) => BooksAuthorTableData(
    id: id ?? this.id,
    fullName: fullName ?? this.fullName,
    gender: gender.present ? gender.value : this.gender,
    nacionality: nacionality.present ? nacionality.value : this.nacionality,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  BooksAuthorTableData copyWithCompanion(BooksAuthorTableCompanion data) {
    return BooksAuthorTableData(
      id: data.id.present ? data.id.value : this.id,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      gender: data.gender.present ? data.gender.value : this.gender,
      nacionality: data.nacionality.present
          ? data.nacionality.value
          : this.nacionality,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BooksAuthorTableData(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('gender: $gender, ')
          ..write('nacionality: $nacionality, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, fullName, gender, nacionality, deletedAt, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BooksAuthorTableData &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.gender == this.gender &&
          other.nacionality == this.nacionality &&
          other.deletedAt == this.deletedAt &&
          other.createdAt == this.createdAt);
}

class BooksAuthorTableCompanion extends UpdateCompanion<BooksAuthorTableData> {
  final Value<String> id;
  final Value<String> fullName;
  final Value<String?> gender;
  final Value<String?> nacionality;
  final Value<DateTime?> deletedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const BooksAuthorTableCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.gender = const Value.absent(),
    this.nacionality = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BooksAuthorTableCompanion.insert({
    required String id,
    required String fullName,
    this.gender = const Value.absent(),
    this.nacionality = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       fullName = Value(fullName);
  static Insertable<BooksAuthorTableData> custom({
    Expression<String>? id,
    Expression<String>? fullName,
    Expression<String>? gender,
    Expression<String>? nacionality,
    Expression<DateTime>? deletedAt,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (gender != null) 'gender': gender,
      if (nacionality != null) 'nacionality': nacionality,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BooksAuthorTableCompanion copyWith({
    Value<String>? id,
    Value<String>? fullName,
    Value<String?>? gender,
    Value<String?>? nacionality,
    Value<DateTime?>? deletedAt,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return BooksAuthorTableCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      gender: gender ?? this.gender,
      nacionality: nacionality ?? this.nacionality,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (nacionality.present) {
      map['nacionality'] = Variable<String>(nacionality.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksAuthorTableCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('gender: $gender, ')
          ..write('nacionality: $nacionality, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BooksGenderTableTable extends BooksGenderTable
    with TableInfo<$BooksGenderTableTable, BooksGenderTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksGenderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [id, description, deletedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books_gender_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<BooksGenderTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BooksGenderTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BooksGenderTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $BooksGenderTableTable createAlias(String alias) {
    return $BooksGenderTableTable(attachedDatabase, alias);
  }
}

class BooksGenderTableData extends DataClass
    implements Insertable<BooksGenderTableData> {
  final String id;
  final String description;
  final DateTime? deletedAt;
  final DateTime createdAt;
  const BooksGenderTableData({
    required this.id,
    required this.description,
    this.deletedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BooksGenderTableCompanion toCompanion(bool nullToAbsent) {
    return BooksGenderTableCompanion(
      id: Value(id),
      description: Value(description),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      createdAt: Value(createdAt),
    );
  }

  factory BooksGenderTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BooksGenderTableData(
      id: serializer.fromJson<String>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'description': serializer.toJson<String>(description),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  BooksGenderTableData copyWith({
    String? id,
    String? description,
    Value<DateTime?> deletedAt = const Value.absent(),
    DateTime? createdAt,
  }) => BooksGenderTableData(
    id: id ?? this.id,
    description: description ?? this.description,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  BooksGenderTableData copyWithCompanion(BooksGenderTableCompanion data) {
    return BooksGenderTableData(
      id: data.id.present ? data.id.value : this.id,
      description: data.description.present
          ? data.description.value
          : this.description,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BooksGenderTableData(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, description, deletedAt, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BooksGenderTableData &&
          other.id == this.id &&
          other.description == this.description &&
          other.deletedAt == this.deletedAt &&
          other.createdAt == this.createdAt);
}

class BooksGenderTableCompanion extends UpdateCompanion<BooksGenderTableData> {
  final Value<String> id;
  final Value<String> description;
  final Value<DateTime?> deletedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const BooksGenderTableCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BooksGenderTableCompanion.insert({
    required String id,
    required String description,
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       description = Value(description);
  static Insertable<BooksGenderTableData> custom({
    Expression<String>? id,
    Expression<String>? description,
    Expression<DateTime>? deletedAt,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BooksGenderTableCompanion copyWith({
    Value<String>? id,
    Value<String>? description,
    Value<DateTime?>? deletedAt,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return BooksGenderTableCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksGenderTableCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BooksPublishersTableTable extends BooksPublishersTable
    with TableInfo<$BooksPublishersTableTable, BooksPublishersTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksPublishersTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nacionalityIdMeta = const VerificationMeta(
    'nacionalityId',
  );
  @override
  late final GeneratedColumn<String> nacionalityId = GeneratedColumn<String>(
    'nacionality_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES books_nacionality_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    nacionalityId,
    deletedAt,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books_publishers_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<BooksPublishersTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('nacionality_id')) {
      context.handle(
        _nacionalityIdMeta,
        nacionalityId.isAcceptableOrUnknown(
          data['nacionality_id']!,
          _nacionalityIdMeta,
        ),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BooksPublishersTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BooksPublishersTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      nacionalityId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nacionality_id'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $BooksPublishersTableTable createAlias(String alias) {
    return $BooksPublishersTableTable(attachedDatabase, alias);
  }
}

class BooksPublishersTableData extends DataClass
    implements Insertable<BooksPublishersTableData> {
  final String id;
  final String name;
  final String? nacionalityId;
  final DateTime? deletedAt;
  final DateTime createdAt;
  const BooksPublishersTableData({
    required this.id,
    required this.name,
    this.nacionalityId,
    this.deletedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nacionalityId != null) {
      map['nacionality_id'] = Variable<String>(nacionalityId);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BooksPublishersTableCompanion toCompanion(bool nullToAbsent) {
    return BooksPublishersTableCompanion(
      id: Value(id),
      name: Value(name),
      nacionalityId: nacionalityId == null && nullToAbsent
          ? const Value.absent()
          : Value(nacionalityId),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      createdAt: Value(createdAt),
    );
  }

  factory BooksPublishersTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BooksPublishersTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nacionalityId: serializer.fromJson<String?>(json['nacionalityId']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'nacionalityId': serializer.toJson<String?>(nacionalityId),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  BooksPublishersTableData copyWith({
    String? id,
    String? name,
    Value<String?> nacionalityId = const Value.absent(),
    Value<DateTime?> deletedAt = const Value.absent(),
    DateTime? createdAt,
  }) => BooksPublishersTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    nacionalityId: nacionalityId.present
        ? nacionalityId.value
        : this.nacionalityId,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  BooksPublishersTableData copyWithCompanion(
    BooksPublishersTableCompanion data,
  ) {
    return BooksPublishersTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      nacionalityId: data.nacionalityId.present
          ? data.nacionalityId.value
          : this.nacionalityId,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BooksPublishersTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nacionalityId: $nacionalityId, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, nacionalityId, deletedAt, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BooksPublishersTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.nacionalityId == this.nacionalityId &&
          other.deletedAt == this.deletedAt &&
          other.createdAt == this.createdAt);
}

class BooksPublishersTableCompanion
    extends UpdateCompanion<BooksPublishersTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> nacionalityId;
  final Value<DateTime?> deletedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const BooksPublishersTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nacionalityId = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BooksPublishersTableCompanion.insert({
    required String id,
    required String name,
    this.nacionalityId = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<BooksPublishersTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? nacionalityId,
    Expression<DateTime>? deletedAt,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nacionalityId != null) 'nacionality_id': nacionalityId,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BooksPublishersTableCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? nacionalityId,
    Value<DateTime?>? deletedAt,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return BooksPublishersTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nacionalityId: nacionalityId ?? this.nacionalityId,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nacionalityId.present) {
      map['nacionality_id'] = Variable<String>(nacionalityId.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksPublishersTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nacionalityId: $nacionalityId, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CompletedReadTableTable extends CompletedReadTable
    with TableInfo<$CompletedReadTableTable, CompletedReadTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompletedReadTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bookNameMeta = const VerificationMeta(
    'bookName',
  );
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
    'book_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearOfReadingMeta = const VerificationMeta(
    'yearOfReading',
  );
  @override
  late final GeneratedColumn<String> yearOfReading = GeneratedColumn<String>(
    'year_of_reading',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nacionalityIdMeta = const VerificationMeta(
    'nacionalityId',
  );
  @override
  late final GeneratedColumn<String> nacionalityId = GeneratedColumn<String>(
    'nacionality_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES books_nacionality_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _publisherIdMeta = const VerificationMeta(
    'publisherId',
  );
  @override
  late final GeneratedColumn<String> publisherId = GeneratedColumn<String>(
    'publisher_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES books_publishers_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _totalNumberOfReadsMeta =
      const VerificationMeta('totalNumberOfReads');
  @override
  late final GeneratedColumn<int> totalNumberOfReads = GeneratedColumn<int>(
    'total_number_of_reads',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalPagesMeta = const VerificationMeta(
    'totalPages',
  );
  @override
  late final GeneratedColumn<int> totalPages = GeneratedColumn<int>(
    'total_pages',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    bookName,
    yearOfReading,
    nacionalityId,
    publisherId,
    totalNumberOfReads,
    totalPages,
    deletedAt,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'completed_read_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CompletedReadTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(
        _bookNameMeta,
        bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta),
      );
    } else if (isInserting) {
      context.missing(_bookNameMeta);
    }
    if (data.containsKey('year_of_reading')) {
      context.handle(
        _yearOfReadingMeta,
        yearOfReading.isAcceptableOrUnknown(
          data['year_of_reading']!,
          _yearOfReadingMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_yearOfReadingMeta);
    }
    if (data.containsKey('nacionality_id')) {
      context.handle(
        _nacionalityIdMeta,
        nacionalityId.isAcceptableOrUnknown(
          data['nacionality_id']!,
          _nacionalityIdMeta,
        ),
      );
    }
    if (data.containsKey('publisher_id')) {
      context.handle(
        _publisherIdMeta,
        publisherId.isAcceptableOrUnknown(
          data['publisher_id']!,
          _publisherIdMeta,
        ),
      );
    }
    if (data.containsKey('total_number_of_reads')) {
      context.handle(
        _totalNumberOfReadsMeta,
        totalNumberOfReads.isAcceptableOrUnknown(
          data['total_number_of_reads']!,
          _totalNumberOfReadsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalNumberOfReadsMeta);
    }
    if (data.containsKey('total_pages')) {
      context.handle(
        _totalPagesMeta,
        totalPages.isAcceptableOrUnknown(data['total_pages']!, _totalPagesMeta),
      );
    } else if (isInserting) {
      context.missing(_totalPagesMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompletedReadTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompletedReadTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      bookName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}book_name'],
      )!,
      yearOfReading: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year_of_reading'],
      )!,
      nacionalityId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nacionality_id'],
      ),
      publisherId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}publisher_id'],
      ),
      totalNumberOfReads: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_number_of_reads'],
      )!,
      totalPages: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_pages'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $CompletedReadTableTable createAlias(String alias) {
    return $CompletedReadTableTable(attachedDatabase, alias);
  }
}

class CompletedReadTableData extends DataClass
    implements Insertable<CompletedReadTableData> {
  final String id;
  final String bookName;
  final String yearOfReading;
  final String? nacionalityId;
  final String? publisherId;
  final int totalNumberOfReads;
  final int totalPages;
  final DateTime? deletedAt;
  final DateTime createdAt;
  const CompletedReadTableData({
    required this.id,
    required this.bookName,
    required this.yearOfReading,
    this.nacionalityId,
    this.publisherId,
    required this.totalNumberOfReads,
    required this.totalPages,
    this.deletedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['book_name'] = Variable<String>(bookName);
    map['year_of_reading'] = Variable<String>(yearOfReading);
    if (!nullToAbsent || nacionalityId != null) {
      map['nacionality_id'] = Variable<String>(nacionalityId);
    }
    if (!nullToAbsent || publisherId != null) {
      map['publisher_id'] = Variable<String>(publisherId);
    }
    map['total_number_of_reads'] = Variable<int>(totalNumberOfReads);
    map['total_pages'] = Variable<int>(totalPages);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CompletedReadTableCompanion toCompanion(bool nullToAbsent) {
    return CompletedReadTableCompanion(
      id: Value(id),
      bookName: Value(bookName),
      yearOfReading: Value(yearOfReading),
      nacionalityId: nacionalityId == null && nullToAbsent
          ? const Value.absent()
          : Value(nacionalityId),
      publisherId: publisherId == null && nullToAbsent
          ? const Value.absent()
          : Value(publisherId),
      totalNumberOfReads: Value(totalNumberOfReads),
      totalPages: Value(totalPages),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      createdAt: Value(createdAt),
    );
  }

  factory CompletedReadTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompletedReadTableData(
      id: serializer.fromJson<String>(json['id']),
      bookName: serializer.fromJson<String>(json['bookName']),
      yearOfReading: serializer.fromJson<String>(json['yearOfReading']),
      nacionalityId: serializer.fromJson<String?>(json['nacionalityId']),
      publisherId: serializer.fromJson<String?>(json['publisherId']),
      totalNumberOfReads: serializer.fromJson<int>(json['totalNumberOfReads']),
      totalPages: serializer.fromJson<int>(json['totalPages']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'bookName': serializer.toJson<String>(bookName),
      'yearOfReading': serializer.toJson<String>(yearOfReading),
      'nacionalityId': serializer.toJson<String?>(nacionalityId),
      'publisherId': serializer.toJson<String?>(publisherId),
      'totalNumberOfReads': serializer.toJson<int>(totalNumberOfReads),
      'totalPages': serializer.toJson<int>(totalPages),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  CompletedReadTableData copyWith({
    String? id,
    String? bookName,
    String? yearOfReading,
    Value<String?> nacionalityId = const Value.absent(),
    Value<String?> publisherId = const Value.absent(),
    int? totalNumberOfReads,
    int? totalPages,
    Value<DateTime?> deletedAt = const Value.absent(),
    DateTime? createdAt,
  }) => CompletedReadTableData(
    id: id ?? this.id,
    bookName: bookName ?? this.bookName,
    yearOfReading: yearOfReading ?? this.yearOfReading,
    nacionalityId: nacionalityId.present
        ? nacionalityId.value
        : this.nacionalityId,
    publisherId: publisherId.present ? publisherId.value : this.publisherId,
    totalNumberOfReads: totalNumberOfReads ?? this.totalNumberOfReads,
    totalPages: totalPages ?? this.totalPages,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  CompletedReadTableData copyWithCompanion(CompletedReadTableCompanion data) {
    return CompletedReadTableData(
      id: data.id.present ? data.id.value : this.id,
      bookName: data.bookName.present ? data.bookName.value : this.bookName,
      yearOfReading: data.yearOfReading.present
          ? data.yearOfReading.value
          : this.yearOfReading,
      nacionalityId: data.nacionalityId.present
          ? data.nacionalityId.value
          : this.nacionalityId,
      publisherId: data.publisherId.present
          ? data.publisherId.value
          : this.publisherId,
      totalNumberOfReads: data.totalNumberOfReads.present
          ? data.totalNumberOfReads.value
          : this.totalNumberOfReads,
      totalPages: data.totalPages.present
          ? data.totalPages.value
          : this.totalPages,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CompletedReadTableData(')
          ..write('id: $id, ')
          ..write('bookName: $bookName, ')
          ..write('yearOfReading: $yearOfReading, ')
          ..write('nacionalityId: $nacionalityId, ')
          ..write('publisherId: $publisherId, ')
          ..write('totalNumberOfReads: $totalNumberOfReads, ')
          ..write('totalPages: $totalPages, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    bookName,
    yearOfReading,
    nacionalityId,
    publisherId,
    totalNumberOfReads,
    totalPages,
    deletedAt,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompletedReadTableData &&
          other.id == this.id &&
          other.bookName == this.bookName &&
          other.yearOfReading == this.yearOfReading &&
          other.nacionalityId == this.nacionalityId &&
          other.publisherId == this.publisherId &&
          other.totalNumberOfReads == this.totalNumberOfReads &&
          other.totalPages == this.totalPages &&
          other.deletedAt == this.deletedAt &&
          other.createdAt == this.createdAt);
}

class CompletedReadTableCompanion
    extends UpdateCompanion<CompletedReadTableData> {
  final Value<String> id;
  final Value<String> bookName;
  final Value<String> yearOfReading;
  final Value<String?> nacionalityId;
  final Value<String?> publisherId;
  final Value<int> totalNumberOfReads;
  final Value<int> totalPages;
  final Value<DateTime?> deletedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const CompletedReadTableCompanion({
    this.id = const Value.absent(),
    this.bookName = const Value.absent(),
    this.yearOfReading = const Value.absent(),
    this.nacionalityId = const Value.absent(),
    this.publisherId = const Value.absent(),
    this.totalNumberOfReads = const Value.absent(),
    this.totalPages = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CompletedReadTableCompanion.insert({
    required String id,
    required String bookName,
    required String yearOfReading,
    this.nacionalityId = const Value.absent(),
    this.publisherId = const Value.absent(),
    required int totalNumberOfReads,
    required int totalPages,
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       bookName = Value(bookName),
       yearOfReading = Value(yearOfReading),
       totalNumberOfReads = Value(totalNumberOfReads),
       totalPages = Value(totalPages);
  static Insertable<CompletedReadTableData> custom({
    Expression<String>? id,
    Expression<String>? bookName,
    Expression<String>? yearOfReading,
    Expression<String>? nacionalityId,
    Expression<String>? publisherId,
    Expression<int>? totalNumberOfReads,
    Expression<int>? totalPages,
    Expression<DateTime>? deletedAt,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookName != null) 'book_name': bookName,
      if (yearOfReading != null) 'year_of_reading': yearOfReading,
      if (nacionalityId != null) 'nacionality_id': nacionalityId,
      if (publisherId != null) 'publisher_id': publisherId,
      if (totalNumberOfReads != null)
        'total_number_of_reads': totalNumberOfReads,
      if (totalPages != null) 'total_pages': totalPages,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CompletedReadTableCompanion copyWith({
    Value<String>? id,
    Value<String>? bookName,
    Value<String>? yearOfReading,
    Value<String?>? nacionalityId,
    Value<String?>? publisherId,
    Value<int>? totalNumberOfReads,
    Value<int>? totalPages,
    Value<DateTime?>? deletedAt,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return CompletedReadTableCompanion(
      id: id ?? this.id,
      bookName: bookName ?? this.bookName,
      yearOfReading: yearOfReading ?? this.yearOfReading,
      nacionalityId: nacionalityId ?? this.nacionalityId,
      publisherId: publisherId ?? this.publisherId,
      totalNumberOfReads: totalNumberOfReads ?? this.totalNumberOfReads,
      totalPages: totalPages ?? this.totalPages,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (yearOfReading.present) {
      map['year_of_reading'] = Variable<String>(yearOfReading.value);
    }
    if (nacionalityId.present) {
      map['nacionality_id'] = Variable<String>(nacionalityId.value);
    }
    if (publisherId.present) {
      map['publisher_id'] = Variable<String>(publisherId.value);
    }
    if (totalNumberOfReads.present) {
      map['total_number_of_reads'] = Variable<int>(totalNumberOfReads.value);
    }
    if (totalPages.present) {
      map['total_pages'] = Variable<int>(totalPages.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompletedReadTableCompanion(')
          ..write('id: $id, ')
          ..write('bookName: $bookName, ')
          ..write('yearOfReading: $yearOfReading, ')
          ..write('nacionalityId: $nacionalityId, ')
          ..write('publisherId: $publisherId, ')
          ..write('totalNumberOfReads: $totalNumberOfReads, ')
          ..write('totalPages: $totalPages, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FinnancesExpenseTableTable extends FinnancesExpenseTable
    with TableInfo<$FinnancesExpenseTableTable, FinnancesExpenseTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FinnancesExpenseTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _finnacesIdMeta = const VerificationMeta(
    'finnacesId',
  );
  @override
  late final GeneratedColumn<String> finnacesId = GeneratedColumn<String>(
    'finnaces_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES finnaces_header_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _tagMeta = const VerificationMeta('tag');
  @override
  late final GeneratedColumn<String> tag = GeneratedColumn<String>(
    'tag',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isCashInflowMeta = const VerificationMeta(
    'isCashInflow',
  );
  @override
  late final GeneratedColumn<bool> isCashInflow = GeneratedColumn<bool>(
    'is_cash_inflow',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_cash_inflow" IN (0, 1))',
    ),
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    finnacesId,
    tag,
    description,
    value,
    isCashInflow,
    deletedAt,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'finnances_expense_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FinnancesExpenseTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('finnaces_id')) {
      context.handle(
        _finnacesIdMeta,
        finnacesId.isAcceptableOrUnknown(data['finnaces_id']!, _finnacesIdMeta),
      );
    } else if (isInserting) {
      context.missing(_finnacesIdMeta);
    }
    if (data.containsKey('tag')) {
      context.handle(
        _tagMeta,
        tag.isAcceptableOrUnknown(data['tag']!, _tagMeta),
      );
    } else if (isInserting) {
      context.missing(_tagMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('is_cash_inflow')) {
      context.handle(
        _isCashInflowMeta,
        isCashInflow.isAcceptableOrUnknown(
          data['is_cash_inflow']!,
          _isCashInflowMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_isCashInflowMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FinnancesExpenseTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FinnancesExpenseTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      finnacesId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}finnaces_id'],
      )!,
      tag: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
      isCashInflow: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_cash_inflow'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FinnancesExpenseTableTable createAlias(String alias) {
    return $FinnancesExpenseTableTable(attachedDatabase, alias);
  }
}

class FinnancesExpenseTableData extends DataClass
    implements Insertable<FinnancesExpenseTableData> {
  final String id;
  final String finnacesId;
  final String tag;
  final String description;
  final String value;
  final bool isCashInflow;
  final DateTime? deletedAt;
  final DateTime createdAt;
  const FinnancesExpenseTableData({
    required this.id,
    required this.finnacesId,
    required this.tag,
    required this.description,
    required this.value,
    required this.isCashInflow,
    this.deletedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['finnaces_id'] = Variable<String>(finnacesId);
    map['tag'] = Variable<String>(tag);
    map['description'] = Variable<String>(description);
    map['value'] = Variable<String>(value);
    map['is_cash_inflow'] = Variable<bool>(isCashInflow);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FinnancesExpenseTableCompanion toCompanion(bool nullToAbsent) {
    return FinnancesExpenseTableCompanion(
      id: Value(id),
      finnacesId: Value(finnacesId),
      tag: Value(tag),
      description: Value(description),
      value: Value(value),
      isCashInflow: Value(isCashInflow),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      createdAt: Value(createdAt),
    );
  }

  factory FinnancesExpenseTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FinnancesExpenseTableData(
      id: serializer.fromJson<String>(json['id']),
      finnacesId: serializer.fromJson<String>(json['finnacesId']),
      tag: serializer.fromJson<String>(json['tag']),
      description: serializer.fromJson<String>(json['description']),
      value: serializer.fromJson<String>(json['value']),
      isCashInflow: serializer.fromJson<bool>(json['isCashInflow']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'finnacesId': serializer.toJson<String>(finnacesId),
      'tag': serializer.toJson<String>(tag),
      'description': serializer.toJson<String>(description),
      'value': serializer.toJson<String>(value),
      'isCashInflow': serializer.toJson<bool>(isCashInflow),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FinnancesExpenseTableData copyWith({
    String? id,
    String? finnacesId,
    String? tag,
    String? description,
    String? value,
    bool? isCashInflow,
    Value<DateTime?> deletedAt = const Value.absent(),
    DateTime? createdAt,
  }) => FinnancesExpenseTableData(
    id: id ?? this.id,
    finnacesId: finnacesId ?? this.finnacesId,
    tag: tag ?? this.tag,
    description: description ?? this.description,
    value: value ?? this.value,
    isCashInflow: isCashInflow ?? this.isCashInflow,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  FinnancesExpenseTableData copyWithCompanion(
    FinnancesExpenseTableCompanion data,
  ) {
    return FinnancesExpenseTableData(
      id: data.id.present ? data.id.value : this.id,
      finnacesId: data.finnacesId.present
          ? data.finnacesId.value
          : this.finnacesId,
      tag: data.tag.present ? data.tag.value : this.tag,
      description: data.description.present
          ? data.description.value
          : this.description,
      value: data.value.present ? data.value.value : this.value,
      isCashInflow: data.isCashInflow.present
          ? data.isCashInflow.value
          : this.isCashInflow,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FinnancesExpenseTableData(')
          ..write('id: $id, ')
          ..write('finnacesId: $finnacesId, ')
          ..write('tag: $tag, ')
          ..write('description: $description, ')
          ..write('value: $value, ')
          ..write('isCashInflow: $isCashInflow, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    finnacesId,
    tag,
    description,
    value,
    isCashInflow,
    deletedAt,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FinnancesExpenseTableData &&
          other.id == this.id &&
          other.finnacesId == this.finnacesId &&
          other.tag == this.tag &&
          other.description == this.description &&
          other.value == this.value &&
          other.isCashInflow == this.isCashInflow &&
          other.deletedAt == this.deletedAt &&
          other.createdAt == this.createdAt);
}

class FinnancesExpenseTableCompanion
    extends UpdateCompanion<FinnancesExpenseTableData> {
  final Value<String> id;
  final Value<String> finnacesId;
  final Value<String> tag;
  final Value<String> description;
  final Value<String> value;
  final Value<bool> isCashInflow;
  final Value<DateTime?> deletedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const FinnancesExpenseTableCompanion({
    this.id = const Value.absent(),
    this.finnacesId = const Value.absent(),
    this.tag = const Value.absent(),
    this.description = const Value.absent(),
    this.value = const Value.absent(),
    this.isCashInflow = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FinnancesExpenseTableCompanion.insert({
    required String id,
    required String finnacesId,
    required String tag,
    required String description,
    required String value,
    required bool isCashInflow,
    this.deletedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       finnacesId = Value(finnacesId),
       tag = Value(tag),
       description = Value(description),
       value = Value(value),
       isCashInflow = Value(isCashInflow);
  static Insertable<FinnancesExpenseTableData> custom({
    Expression<String>? id,
    Expression<String>? finnacesId,
    Expression<String>? tag,
    Expression<String>? description,
    Expression<String>? value,
    Expression<bool>? isCashInflow,
    Expression<DateTime>? deletedAt,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (finnacesId != null) 'finnaces_id': finnacesId,
      if (tag != null) 'tag': tag,
      if (description != null) 'description': description,
      if (value != null) 'value': value,
      if (isCashInflow != null) 'is_cash_inflow': isCashInflow,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FinnancesExpenseTableCompanion copyWith({
    Value<String>? id,
    Value<String>? finnacesId,
    Value<String>? tag,
    Value<String>? description,
    Value<String>? value,
    Value<bool>? isCashInflow,
    Value<DateTime?>? deletedAt,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return FinnancesExpenseTableCompanion(
      id: id ?? this.id,
      finnacesId: finnacesId ?? this.finnacesId,
      tag: tag ?? this.tag,
      description: description ?? this.description,
      value: value ?? this.value,
      isCashInflow: isCashInflow ?? this.isCashInflow,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (finnacesId.present) {
      map['finnaces_id'] = Variable<String>(finnacesId.value);
    }
    if (tag.present) {
      map['tag'] = Variable<String>(tag.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (isCashInflow.present) {
      map['is_cash_inflow'] = Variable<bool>(isCashInflow.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FinnancesExpenseTableCompanion(')
          ..write('id: $id, ')
          ..write('finnacesId: $finnacesId, ')
          ..write('tag: $tag, ')
          ..write('description: $description, ')
          ..write('value: $value, ')
          ..write('isCashInflow: $isCashInflow, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MenstrualCyclePredictionTable extends MenstrualCyclePrediction
    with
        TableInfo<
          $MenstrualCyclePredictionTable,
          MenstrualCyclePredictionData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MenstrualCyclePredictionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endDateMeta = const VerificationMeta(
    'endDate',
  );
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
    'end_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    startDate,
    endDate,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'menstrual_cycle_prediction';
  @override
  VerificationContext validateIntegrity(
    Insertable<MenstrualCyclePredictionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(
        _endDateMeta,
        endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MenstrualCyclePredictionData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MenstrualCyclePredictionData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      startDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_date'],
      )!,
      endDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_date'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $MenstrualCyclePredictionTable createAlias(String alias) {
    return $MenstrualCyclePredictionTable(attachedDatabase, alias);
  }
}

class MenstrualCyclePredictionData extends DataClass
    implements Insertable<MenstrualCyclePredictionData> {
  final String id;
  final DateTime startDate;
  final DateTime? endDate;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  const MenstrualCyclePredictionData({
    required this.id,
    required this.startDate,
    this.endDate,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  MenstrualCyclePredictionCompanion toCompanion(bool nullToAbsent) {
    return MenstrualCyclePredictionCompanion(
      id: Value(id),
      startDate: Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory MenstrualCyclePredictionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MenstrualCyclePredictionData(
      id: serializer.fromJson<String>(json['id']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  MenstrualCyclePredictionData copyWith({
    String? id,
    DateTime? startDate,
    Value<DateTime?> endDate = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => MenstrualCyclePredictionData(
    id: id ?? this.id,
    startDate: startDate ?? this.startDate,
    endDate: endDate.present ? endDate.value : this.endDate,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  MenstrualCyclePredictionData copyWithCompanion(
    MenstrualCyclePredictionCompanion data,
  ) {
    return MenstrualCyclePredictionData(
      id: data.id.present ? data.id.value : this.id,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MenstrualCyclePredictionData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, startDate, endDate, createdAt, updatedAt, deletedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MenstrualCyclePredictionData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class MenstrualCyclePredictionCompanion
    extends UpdateCompanion<MenstrualCyclePredictionData> {
  final Value<String> id;
  final Value<DateTime> startDate;
  final Value<DateTime?> endDate;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const MenstrualCyclePredictionCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MenstrualCyclePredictionCompanion.insert({
    required String id,
    required DateTime startDate,
    this.endDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       startDate = Value(startDate);
  static Insertable<MenstrualCyclePredictionData> custom({
    Expression<String>? id,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MenstrualCyclePredictionCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? startDate,
    Value<DateTime?>? endDate,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return MenstrualCyclePredictionCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MenstrualCyclePredictionCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MenstrualCycleTrackingTableTable extends MenstrualCycleTrackingTable
    with
        TableInfo<
          $MenstrualCycleTrackingTableTable,
          MenstrualCycleTrackingTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MenstrualCycleTrackingTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endDateMeta = const VerificationMeta(
    'endDate',
  );
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
    'end_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _daysDurationMeta = const VerificationMeta(
    'daysDuration',
  );
  @override
  late final GeneratedColumn<int> daysDuration = GeneratedColumn<int>(
    'days_duration',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _predictveMeta = const VerificationMeta(
    'predictve',
  );
  @override
  late final GeneratedColumn<bool> predictve = GeneratedColumn<bool>(
    'predictve',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("predictve" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    startDate,
    endDate,
    daysDuration,
    predictve,
    createdAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'menstrual_cycle_tracking_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MenstrualCycleTrackingTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(
        _endDateMeta,
        endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta),
      );
    }
    if (data.containsKey('days_duration')) {
      context.handle(
        _daysDurationMeta,
        daysDuration.isAcceptableOrUnknown(
          data['days_duration']!,
          _daysDurationMeta,
        ),
      );
    }
    if (data.containsKey('predictve')) {
      context.handle(
        _predictveMeta,
        predictve.isAcceptableOrUnknown(data['predictve']!, _predictveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MenstrualCycleTrackingTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MenstrualCycleTrackingTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      startDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_date'],
      )!,
      endDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_date'],
      ),
      daysDuration: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}days_duration'],
      ),
      predictve: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}predictve'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $MenstrualCycleTrackingTableTable createAlias(String alias) {
    return $MenstrualCycleTrackingTableTable(attachedDatabase, alias);
  }
}

class MenstrualCycleTrackingTableData extends DataClass
    implements Insertable<MenstrualCycleTrackingTableData> {
  final String id;
  final DateTime startDate;
  final DateTime? endDate;
  final int? daysDuration;
  final bool predictve;
  final DateTime createdAt;
  final DateTime? deletedAt;
  const MenstrualCycleTrackingTableData({
    required this.id,
    required this.startDate,
    this.endDate,
    this.daysDuration,
    required this.predictve,
    required this.createdAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || daysDuration != null) {
      map['days_duration'] = Variable<int>(daysDuration);
    }
    map['predictve'] = Variable<bool>(predictve);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  MenstrualCycleTrackingTableCompanion toCompanion(bool nullToAbsent) {
    return MenstrualCycleTrackingTableCompanion(
      id: Value(id),
      startDate: Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      daysDuration: daysDuration == null && nullToAbsent
          ? const Value.absent()
          : Value(daysDuration),
      predictve: Value(predictve),
      createdAt: Value(createdAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory MenstrualCycleTrackingTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MenstrualCycleTrackingTableData(
      id: serializer.fromJson<String>(json['id']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      daysDuration: serializer.fromJson<int?>(json['daysDuration']),
      predictve: serializer.fromJson<bool>(json['predictve']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'daysDuration': serializer.toJson<int?>(daysDuration),
      'predictve': serializer.toJson<bool>(predictve),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  MenstrualCycleTrackingTableData copyWith({
    String? id,
    DateTime? startDate,
    Value<DateTime?> endDate = const Value.absent(),
    Value<int?> daysDuration = const Value.absent(),
    bool? predictve,
    DateTime? createdAt,
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => MenstrualCycleTrackingTableData(
    id: id ?? this.id,
    startDate: startDate ?? this.startDate,
    endDate: endDate.present ? endDate.value : this.endDate,
    daysDuration: daysDuration.present ? daysDuration.value : this.daysDuration,
    predictve: predictve ?? this.predictve,
    createdAt: createdAt ?? this.createdAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  MenstrualCycleTrackingTableData copyWithCompanion(
    MenstrualCycleTrackingTableCompanion data,
  ) {
    return MenstrualCycleTrackingTableData(
      id: data.id.present ? data.id.value : this.id,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      daysDuration: data.daysDuration.present
          ? data.daysDuration.value
          : this.daysDuration,
      predictve: data.predictve.present ? data.predictve.value : this.predictve,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MenstrualCycleTrackingTableData(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('daysDuration: $daysDuration, ')
          ..write('predictve: $predictve, ')
          ..write('createdAt: $createdAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    startDate,
    endDate,
    daysDuration,
    predictve,
    createdAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MenstrualCycleTrackingTableData &&
          other.id == this.id &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.daysDuration == this.daysDuration &&
          other.predictve == this.predictve &&
          other.createdAt == this.createdAt &&
          other.deletedAt == this.deletedAt);
}

class MenstrualCycleTrackingTableCompanion
    extends UpdateCompanion<MenstrualCycleTrackingTableData> {
  final Value<String> id;
  final Value<DateTime> startDate;
  final Value<DateTime?> endDate;
  final Value<int?> daysDuration;
  final Value<bool> predictve;
  final Value<DateTime> createdAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const MenstrualCycleTrackingTableCompanion({
    this.id = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.daysDuration = const Value.absent(),
    this.predictve = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MenstrualCycleTrackingTableCompanion.insert({
    required String id,
    required DateTime startDate,
    this.endDate = const Value.absent(),
    this.daysDuration = const Value.absent(),
    this.predictve = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       startDate = Value(startDate);
  static Insertable<MenstrualCycleTrackingTableData> custom({
    Expression<String>? id,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<int>? daysDuration,
    Expression<bool>? predictve,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (daysDuration != null) 'days_duration': daysDuration,
      if (predictve != null) 'predictve': predictve,
      if (createdAt != null) 'created_at': createdAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MenstrualCycleTrackingTableCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? startDate,
    Value<DateTime?>? endDate,
    Value<int?>? daysDuration,
    Value<bool>? predictve,
    Value<DateTime>? createdAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return MenstrualCycleTrackingTableCompanion(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      daysDuration: daysDuration ?? this.daysDuration,
      predictve: predictve ?? this.predictve,
      createdAt: createdAt ?? this.createdAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (daysDuration.present) {
      map['days_duration'] = Variable<int>(daysDuration.value);
    }
    if (predictve.present) {
      map['predictve'] = Variable<bool>(predictve.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MenstrualCycleTrackingTableCompanion(')
          ..write('id: $id, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('daysDuration: $daysDuration, ')
          ..write('predictve: $predictve, ')
          ..write('createdAt: $createdAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MesnstrualCycleUserInfosTableTable extends MesnstrualCycleUserInfosTable
    with
        TableInfo<
          $MesnstrualCycleUserInfosTableTable,
          MesnstrualCycleUserInfosTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MesnstrualCycleUserInfosTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _averageCycleDurationMeta =
      const VerificationMeta('averageCycleDuration');
  @override
  late final GeneratedColumn<int> averageCycleDuration = GeneratedColumn<int>(
    'average_cycle_duration',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _durationMenstruationMeta =
      const VerificationMeta('durationMenstruation');
  @override
  late final GeneratedColumn<int> durationMenstruation = GeneratedColumn<int>(
    'duration_menstruation',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notificationsActiveMeta =
      const VerificationMeta('notificationsActive');
  @override
  late final GeneratedColumn<bool> notificationsActive = GeneratedColumn<bool>(
    'notifications_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("notifications_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _contraceptiveTypeMeta = const VerificationMeta(
    'contraceptiveType',
  );
  @override
  late final GeneratedColumn<String> contraceptiveType =
      GeneratedColumn<String>(
        'contraceptive_type',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _contraceptiveStartDateMeta =
      const VerificationMeta('contraceptiveStartDate');
  @override
  late final GeneratedColumn<DateTime> contraceptiveStartDate =
      GeneratedColumn<DateTime>(
        'contraceptive_start_date',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _posologiaMeta = const VerificationMeta(
    'posologia',
  );
  @override
  late final GeneratedColumn<int> posologia = GeneratedColumn<int>(
    'posologia',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _makePauseMeta = const VerificationMeta(
    'makePause',
  );
  @override
  late final GeneratedColumn<bool> makePause = GeneratedColumn<bool>(
    'make_pause',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("make_pause" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _daysPauseMeta = const VerificationMeta(
    'daysPause',
  );
  @override
  late final GeneratedColumn<int> daysPause = GeneratedColumn<int>(
    'days_pause',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(7),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    averageCycleDuration,
    durationMenstruation,
    notificationsActive,
    contraceptiveType,
    contraceptiveStartDate,
    posologia,
    makePause,
    daysPause,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mesnstrual_cycle_user_infos_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MesnstrualCycleUserInfosTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('average_cycle_duration')) {
      context.handle(
        _averageCycleDurationMeta,
        averageCycleDuration.isAcceptableOrUnknown(
          data['average_cycle_duration']!,
          _averageCycleDurationMeta,
        ),
      );
    }
    if (data.containsKey('duration_menstruation')) {
      context.handle(
        _durationMenstruationMeta,
        durationMenstruation.isAcceptableOrUnknown(
          data['duration_menstruation']!,
          _durationMenstruationMeta,
        ),
      );
    }
    if (data.containsKey('notifications_active')) {
      context.handle(
        _notificationsActiveMeta,
        notificationsActive.isAcceptableOrUnknown(
          data['notifications_active']!,
          _notificationsActiveMeta,
        ),
      );
    }
    if (data.containsKey('contraceptive_type')) {
      context.handle(
        _contraceptiveTypeMeta,
        contraceptiveType.isAcceptableOrUnknown(
          data['contraceptive_type']!,
          _contraceptiveTypeMeta,
        ),
      );
    }
    if (data.containsKey('contraceptive_start_date')) {
      context.handle(
        _contraceptiveStartDateMeta,
        contraceptiveStartDate.isAcceptableOrUnknown(
          data['contraceptive_start_date']!,
          _contraceptiveStartDateMeta,
        ),
      );
    }
    if (data.containsKey('posologia')) {
      context.handle(
        _posologiaMeta,
        posologia.isAcceptableOrUnknown(data['posologia']!, _posologiaMeta),
      );
    }
    if (data.containsKey('make_pause')) {
      context.handle(
        _makePauseMeta,
        makePause.isAcceptableOrUnknown(data['make_pause']!, _makePauseMeta),
      );
    }
    if (data.containsKey('days_pause')) {
      context.handle(
        _daysPauseMeta,
        daysPause.isAcceptableOrUnknown(data['days_pause']!, _daysPauseMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MesnstrualCycleUserInfosTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MesnstrualCycleUserInfosTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      averageCycleDuration: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}average_cycle_duration'],
      ),
      durationMenstruation: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration_menstruation'],
      ),
      notificationsActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}notifications_active'],
      )!,
      contraceptiveType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}contraceptive_type'],
      ),
      contraceptiveStartDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}contraceptive_start_date'],
      ),
      posologia: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}posologia'],
      ),
      makePause: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}make_pause'],
      )!,
      daysPause: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}days_pause'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $MesnstrualCycleUserInfosTableTable createAlias(String alias) {
    return $MesnstrualCycleUserInfosTableTable(attachedDatabase, alias);
  }
}

class MesnstrualCycleUserInfosTableData extends DataClass
    implements Insertable<MesnstrualCycleUserInfosTableData> {
  final String id;
  final String name;
  final int? averageCycleDuration;
  final int? durationMenstruation;
  final bool notificationsActive;
  final String? contraceptiveType;
  final DateTime? contraceptiveStartDate;
  final int? posologia;
  final bool makePause;
  final int daysPause;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  const MesnstrualCycleUserInfosTableData({
    required this.id,
    required this.name,
    this.averageCycleDuration,
    this.durationMenstruation,
    required this.notificationsActive,
    this.contraceptiveType,
    this.contraceptiveStartDate,
    this.posologia,
    required this.makePause,
    required this.daysPause,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || averageCycleDuration != null) {
      map['average_cycle_duration'] = Variable<int>(averageCycleDuration);
    }
    if (!nullToAbsent || durationMenstruation != null) {
      map['duration_menstruation'] = Variable<int>(durationMenstruation);
    }
    map['notifications_active'] = Variable<bool>(notificationsActive);
    if (!nullToAbsent || contraceptiveType != null) {
      map['contraceptive_type'] = Variable<String>(contraceptiveType);
    }
    if (!nullToAbsent || contraceptiveStartDate != null) {
      map['contraceptive_start_date'] = Variable<DateTime>(
        contraceptiveStartDate,
      );
    }
    if (!nullToAbsent || posologia != null) {
      map['posologia'] = Variable<int>(posologia);
    }
    map['make_pause'] = Variable<bool>(makePause);
    map['days_pause'] = Variable<int>(daysPause);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  MesnstrualCycleUserInfosTableCompanion toCompanion(bool nullToAbsent) {
    return MesnstrualCycleUserInfosTableCompanion(
      id: Value(id),
      name: Value(name),
      averageCycleDuration: averageCycleDuration == null && nullToAbsent
          ? const Value.absent()
          : Value(averageCycleDuration),
      durationMenstruation: durationMenstruation == null && nullToAbsent
          ? const Value.absent()
          : Value(durationMenstruation),
      notificationsActive: Value(notificationsActive),
      contraceptiveType: contraceptiveType == null && nullToAbsent
          ? const Value.absent()
          : Value(contraceptiveType),
      contraceptiveStartDate: contraceptiveStartDate == null && nullToAbsent
          ? const Value.absent()
          : Value(contraceptiveStartDate),
      posologia: posologia == null && nullToAbsent
          ? const Value.absent()
          : Value(posologia),
      makePause: Value(makePause),
      daysPause: Value(daysPause),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory MesnstrualCycleUserInfosTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MesnstrualCycleUserInfosTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      averageCycleDuration: serializer.fromJson<int?>(
        json['averageCycleDuration'],
      ),
      durationMenstruation: serializer.fromJson<int?>(
        json['durationMenstruation'],
      ),
      notificationsActive: serializer.fromJson<bool>(
        json['notificationsActive'],
      ),
      contraceptiveType: serializer.fromJson<String?>(
        json['contraceptiveType'],
      ),
      contraceptiveStartDate: serializer.fromJson<DateTime?>(
        json['contraceptiveStartDate'],
      ),
      posologia: serializer.fromJson<int?>(json['posologia']),
      makePause: serializer.fromJson<bool>(json['makePause']),
      daysPause: serializer.fromJson<int>(json['daysPause']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'averageCycleDuration': serializer.toJson<int?>(averageCycleDuration),
      'durationMenstruation': serializer.toJson<int?>(durationMenstruation),
      'notificationsActive': serializer.toJson<bool>(notificationsActive),
      'contraceptiveType': serializer.toJson<String?>(contraceptiveType),
      'contraceptiveStartDate': serializer.toJson<DateTime?>(
        contraceptiveStartDate,
      ),
      'posologia': serializer.toJson<int?>(posologia),
      'makePause': serializer.toJson<bool>(makePause),
      'daysPause': serializer.toJson<int>(daysPause),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  MesnstrualCycleUserInfosTableData copyWith({
    String? id,
    String? name,
    Value<int?> averageCycleDuration = const Value.absent(),
    Value<int?> durationMenstruation = const Value.absent(),
    bool? notificationsActive,
    Value<String?> contraceptiveType = const Value.absent(),
    Value<DateTime?> contraceptiveStartDate = const Value.absent(),
    Value<int?> posologia = const Value.absent(),
    bool? makePause,
    int? daysPause,
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => MesnstrualCycleUserInfosTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    averageCycleDuration: averageCycleDuration.present
        ? averageCycleDuration.value
        : this.averageCycleDuration,
    durationMenstruation: durationMenstruation.present
        ? durationMenstruation.value
        : this.durationMenstruation,
    notificationsActive: notificationsActive ?? this.notificationsActive,
    contraceptiveType: contraceptiveType.present
        ? contraceptiveType.value
        : this.contraceptiveType,
    contraceptiveStartDate: contraceptiveStartDate.present
        ? contraceptiveStartDate.value
        : this.contraceptiveStartDate,
    posologia: posologia.present ? posologia.value : this.posologia,
    makePause: makePause ?? this.makePause,
    daysPause: daysPause ?? this.daysPause,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  MesnstrualCycleUserInfosTableData copyWithCompanion(
    MesnstrualCycleUserInfosTableCompanion data,
  ) {
    return MesnstrualCycleUserInfosTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      averageCycleDuration: data.averageCycleDuration.present
          ? data.averageCycleDuration.value
          : this.averageCycleDuration,
      durationMenstruation: data.durationMenstruation.present
          ? data.durationMenstruation.value
          : this.durationMenstruation,
      notificationsActive: data.notificationsActive.present
          ? data.notificationsActive.value
          : this.notificationsActive,
      contraceptiveType: data.contraceptiveType.present
          ? data.contraceptiveType.value
          : this.contraceptiveType,
      contraceptiveStartDate: data.contraceptiveStartDate.present
          ? data.contraceptiveStartDate.value
          : this.contraceptiveStartDate,
      posologia: data.posologia.present ? data.posologia.value : this.posologia,
      makePause: data.makePause.present ? data.makePause.value : this.makePause,
      daysPause: data.daysPause.present ? data.daysPause.value : this.daysPause,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MesnstrualCycleUserInfosTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('averageCycleDuration: $averageCycleDuration, ')
          ..write('durationMenstruation: $durationMenstruation, ')
          ..write('notificationsActive: $notificationsActive, ')
          ..write('contraceptiveType: $contraceptiveType, ')
          ..write('contraceptiveStartDate: $contraceptiveStartDate, ')
          ..write('posologia: $posologia, ')
          ..write('makePause: $makePause, ')
          ..write('daysPause: $daysPause, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    averageCycleDuration,
    durationMenstruation,
    notificationsActive,
    contraceptiveType,
    contraceptiveStartDate,
    posologia,
    makePause,
    daysPause,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MesnstrualCycleUserInfosTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.averageCycleDuration == this.averageCycleDuration &&
          other.durationMenstruation == this.durationMenstruation &&
          other.notificationsActive == this.notificationsActive &&
          other.contraceptiveType == this.contraceptiveType &&
          other.contraceptiveStartDate == this.contraceptiveStartDate &&
          other.posologia == this.posologia &&
          other.makePause == this.makePause &&
          other.daysPause == this.daysPause &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class MesnstrualCycleUserInfosTableCompanion
    extends UpdateCompanion<MesnstrualCycleUserInfosTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<int?> averageCycleDuration;
  final Value<int?> durationMenstruation;
  final Value<bool> notificationsActive;
  final Value<String?> contraceptiveType;
  final Value<DateTime?> contraceptiveStartDate;
  final Value<int?> posologia;
  final Value<bool> makePause;
  final Value<int> daysPause;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const MesnstrualCycleUserInfosTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.averageCycleDuration = const Value.absent(),
    this.durationMenstruation = const Value.absent(),
    this.notificationsActive = const Value.absent(),
    this.contraceptiveType = const Value.absent(),
    this.contraceptiveStartDate = const Value.absent(),
    this.posologia = const Value.absent(),
    this.makePause = const Value.absent(),
    this.daysPause = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MesnstrualCycleUserInfosTableCompanion.insert({
    required String id,
    required String name,
    this.averageCycleDuration = const Value.absent(),
    this.durationMenstruation = const Value.absent(),
    this.notificationsActive = const Value.absent(),
    this.contraceptiveType = const Value.absent(),
    this.contraceptiveStartDate = const Value.absent(),
    this.posologia = const Value.absent(),
    this.makePause = const Value.absent(),
    this.daysPause = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<MesnstrualCycleUserInfosTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? averageCycleDuration,
    Expression<int>? durationMenstruation,
    Expression<bool>? notificationsActive,
    Expression<String>? contraceptiveType,
    Expression<DateTime>? contraceptiveStartDate,
    Expression<int>? posologia,
    Expression<bool>? makePause,
    Expression<int>? daysPause,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (averageCycleDuration != null)
        'average_cycle_duration': averageCycleDuration,
      if (durationMenstruation != null)
        'duration_menstruation': durationMenstruation,
      if (notificationsActive != null)
        'notifications_active': notificationsActive,
      if (contraceptiveType != null) 'contraceptive_type': contraceptiveType,
      if (contraceptiveStartDate != null)
        'contraceptive_start_date': contraceptiveStartDate,
      if (posologia != null) 'posologia': posologia,
      if (makePause != null) 'make_pause': makePause,
      if (daysPause != null) 'days_pause': daysPause,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MesnstrualCycleUserInfosTableCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int?>? averageCycleDuration,
    Value<int?>? durationMenstruation,
    Value<bool>? notificationsActive,
    Value<String?>? contraceptiveType,
    Value<DateTime?>? contraceptiveStartDate,
    Value<int?>? posologia,
    Value<bool>? makePause,
    Value<int>? daysPause,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return MesnstrualCycleUserInfosTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      averageCycleDuration: averageCycleDuration ?? this.averageCycleDuration,
      durationMenstruation: durationMenstruation ?? this.durationMenstruation,
      notificationsActive: notificationsActive ?? this.notificationsActive,
      contraceptiveType: contraceptiveType ?? this.contraceptiveType,
      contraceptiveStartDate:
          contraceptiveStartDate ?? this.contraceptiveStartDate,
      posologia: posologia ?? this.posologia,
      makePause: makePause ?? this.makePause,
      daysPause: daysPause ?? this.daysPause,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (averageCycleDuration.present) {
      map['average_cycle_duration'] = Variable<int>(averageCycleDuration.value);
    }
    if (durationMenstruation.present) {
      map['duration_menstruation'] = Variable<int>(durationMenstruation.value);
    }
    if (notificationsActive.present) {
      map['notifications_active'] = Variable<bool>(notificationsActive.value);
    }
    if (contraceptiveType.present) {
      map['contraceptive_type'] = Variable<String>(contraceptiveType.value);
    }
    if (contraceptiveStartDate.present) {
      map['contraceptive_start_date'] = Variable<DateTime>(
        contraceptiveStartDate.value,
      );
    }
    if (posologia.present) {
      map['posologia'] = Variable<int>(posologia.value);
    }
    if (makePause.present) {
      map['make_pause'] = Variable<bool>(makePause.value);
    }
    if (daysPause.present) {
      map['days_pause'] = Variable<int>(daysPause.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MesnstrualCycleUserInfosTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('averageCycleDuration: $averageCycleDuration, ')
          ..write('durationMenstruation: $durationMenstruation, ')
          ..write('notificationsActive: $notificationsActive, ')
          ..write('contraceptiveType: $contraceptiveType, ')
          ..write('contraceptiveStartDate: $contraceptiveStartDate, ')
          ..write('posologia: $posologia, ')
          ..write('makePause: $makePause, ')
          ..write('daysPause: $daysPause, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RecordsAntiomceptivePillTable extends RecordsAntiomceptivePill
    with
        TableInfo<
          $RecordsAntiomceptivePillTable,
          RecordsAntiomceptivePillData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordsAntiomceptivePillTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _registerDateMeta = const VerificationMeta(
    'registerDate',
  );
  @override
  late final GeneratedColumn<DateTime> registerDate = GeneratedColumn<DateTime>(
    'register_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _registerHourMeta = const VerificationMeta(
    'registerHour',
  );
  @override
  late final GeneratedColumn<DateTime> registerHour = GeneratedColumn<DateTime>(
    'register_hour',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _takedMeta = const VerificationMeta('taked');
  @override
  late final GeneratedColumn<bool> taked = GeneratedColumn<bool>(
    'taked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("taked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _inHourMeta = const VerificationMeta('inHour');
  @override
  late final GeneratedColumn<bool> inHour = GeneratedColumn<bool>(
    'in_hour',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("in_hour" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _delayMinutesMeta = const VerificationMeta(
    'delayMinutes',
  );
  @override
  late final GeneratedColumn<int> delayMinutes = GeneratedColumn<int>(
    'delay_minutes',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sheForgotMeta = const VerificationMeta(
    'sheForgot',
  );
  @override
  late final GeneratedColumn<bool> sheForgot = GeneratedColumn<bool>(
    'she_forgot',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("she_forgot" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _dayInPauseMeta = const VerificationMeta(
    'dayInPause',
  );
  @override
  late final GeneratedColumn<bool> dayInPause = GeneratedColumn<bool>(
    'day_in_pause',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("day_in_pause" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _medicationDayMeta = const VerificationMeta(
    'medicationDay',
  );
  @override
  late final GeneratedColumn<int> medicationDay = GeneratedColumn<int>(
    'medication_day',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isFirstDoseBlisterPackMeta =
      const VerificationMeta('isFirstDoseBlisterPack');
  @override
  late final GeneratedColumn<bool> isFirstDoseBlisterPack =
      GeneratedColumn<bool>(
        'is_first_dose_blister_pack',
        aliasedName,
        false,
        type: DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_first_dose_blister_pack" IN (0, 1))',
        ),
        defaultValue: const Constant(false),
      );
  static const VerificationMeta _isLastDoseInBlisterPackMeta =
      const VerificationMeta('isLastDoseInBlisterPack');
  @override
  late final GeneratedColumn<bool> isLastDoseInBlisterPack =
      GeneratedColumn<bool>(
        'is_last_dose_in_blister_pack',
        aliasedName,
        false,
        type: DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_last_dose_in_blister_pack" IN (0, 1))',
        ),
        defaultValue: const Constant(false),
      );
  static const VerificationMeta _isMenstruationDayMeta = const VerificationMeta(
    'isMenstruationDay',
  );
  @override
  late final GeneratedColumn<bool> isMenstruationDay = GeneratedColumn<bool>(
    'is_menstruation_day',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_menstruation_day" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _notificationSentMeta = const VerificationMeta(
    'notificationSent',
  );
  @override
  late final GeneratedColumn<bool> notificationSent = GeneratedColumn<bool>(
    'notification_sent',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("notification_sent" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _notificationSeerMeta = const VerificationMeta(
    'notificationSeer',
  );
  @override
  late final GeneratedColumn<bool> notificationSeer = GeneratedColumn<bool>(
    'notification_seer',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("notification_seer" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    registerDate,
    registerHour,
    taked,
    inHour,
    delayMinutes,
    sheForgot,
    dayInPause,
    medicationDay,
    isFirstDoseBlisterPack,
    isLastDoseInBlisterPack,
    isMenstruationDay,
    notificationSent,
    notificationSeer,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'records_antiomceptive_pill';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordsAntiomceptivePillData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('register_date')) {
      context.handle(
        _registerDateMeta,
        registerDate.isAcceptableOrUnknown(
          data['register_date']!,
          _registerDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_registerDateMeta);
    }
    if (data.containsKey('register_hour')) {
      context.handle(
        _registerHourMeta,
        registerHour.isAcceptableOrUnknown(
          data['register_hour']!,
          _registerHourMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_registerHourMeta);
    }
    if (data.containsKey('taked')) {
      context.handle(
        _takedMeta,
        taked.isAcceptableOrUnknown(data['taked']!, _takedMeta),
      );
    }
    if (data.containsKey('in_hour')) {
      context.handle(
        _inHourMeta,
        inHour.isAcceptableOrUnknown(data['in_hour']!, _inHourMeta),
      );
    }
    if (data.containsKey('delay_minutes')) {
      context.handle(
        _delayMinutesMeta,
        delayMinutes.isAcceptableOrUnknown(
          data['delay_minutes']!,
          _delayMinutesMeta,
        ),
      );
    }
    if (data.containsKey('she_forgot')) {
      context.handle(
        _sheForgotMeta,
        sheForgot.isAcceptableOrUnknown(data['she_forgot']!, _sheForgotMeta),
      );
    }
    if (data.containsKey('day_in_pause')) {
      context.handle(
        _dayInPauseMeta,
        dayInPause.isAcceptableOrUnknown(
          data['day_in_pause']!,
          _dayInPauseMeta,
        ),
      );
    }
    if (data.containsKey('medication_day')) {
      context.handle(
        _medicationDayMeta,
        medicationDay.isAcceptableOrUnknown(
          data['medication_day']!,
          _medicationDayMeta,
        ),
      );
    }
    if (data.containsKey('is_first_dose_blister_pack')) {
      context.handle(
        _isFirstDoseBlisterPackMeta,
        isFirstDoseBlisterPack.isAcceptableOrUnknown(
          data['is_first_dose_blister_pack']!,
          _isFirstDoseBlisterPackMeta,
        ),
      );
    }
    if (data.containsKey('is_last_dose_in_blister_pack')) {
      context.handle(
        _isLastDoseInBlisterPackMeta,
        isLastDoseInBlisterPack.isAcceptableOrUnknown(
          data['is_last_dose_in_blister_pack']!,
          _isLastDoseInBlisterPackMeta,
        ),
      );
    }
    if (data.containsKey('is_menstruation_day')) {
      context.handle(
        _isMenstruationDayMeta,
        isMenstruationDay.isAcceptableOrUnknown(
          data['is_menstruation_day']!,
          _isMenstruationDayMeta,
        ),
      );
    }
    if (data.containsKey('notification_sent')) {
      context.handle(
        _notificationSentMeta,
        notificationSent.isAcceptableOrUnknown(
          data['notification_sent']!,
          _notificationSentMeta,
        ),
      );
    }
    if (data.containsKey('notification_seer')) {
      context.handle(
        _notificationSeerMeta,
        notificationSeer.isAcceptableOrUnknown(
          data['notification_seer']!,
          _notificationSeerMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordsAntiomceptivePillData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordsAntiomceptivePillData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      registerDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}register_date'],
      )!,
      registerHour: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}register_hour'],
      )!,
      taked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}taked'],
      )!,
      inHour: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}in_hour'],
      )!,
      delayMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}delay_minutes'],
      ),
      sheForgot: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}she_forgot'],
      )!,
      dayInPause: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}day_in_pause'],
      )!,
      medicationDay: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}medication_day'],
      ),
      isFirstDoseBlisterPack: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_first_dose_blister_pack'],
      )!,
      isLastDoseInBlisterPack: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_last_dose_in_blister_pack'],
      )!,
      isMenstruationDay: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_menstruation_day'],
      )!,
      notificationSent: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}notification_sent'],
      )!,
      notificationSeer: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}notification_seer'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $RecordsAntiomceptivePillTable createAlias(String alias) {
    return $RecordsAntiomceptivePillTable(attachedDatabase, alias);
  }
}

class RecordsAntiomceptivePillData extends DataClass
    implements Insertable<RecordsAntiomceptivePillData> {
  final String id;
  final DateTime registerDate;
  final DateTime registerHour;
  final bool taked;
  final bool inHour;
  final int? delayMinutes;
  final bool sheForgot;
  final bool dayInPause;
  final int? medicationDay;
  final bool isFirstDoseBlisterPack;
  final bool isLastDoseInBlisterPack;
  final bool isMenstruationDay;
  final bool notificationSent;
  final bool notificationSeer;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  const RecordsAntiomceptivePillData({
    required this.id,
    required this.registerDate,
    required this.registerHour,
    required this.taked,
    required this.inHour,
    this.delayMinutes,
    required this.sheForgot,
    required this.dayInPause,
    this.medicationDay,
    required this.isFirstDoseBlisterPack,
    required this.isLastDoseInBlisterPack,
    required this.isMenstruationDay,
    required this.notificationSent,
    required this.notificationSeer,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['register_date'] = Variable<DateTime>(registerDate);
    map['register_hour'] = Variable<DateTime>(registerHour);
    map['taked'] = Variable<bool>(taked);
    map['in_hour'] = Variable<bool>(inHour);
    if (!nullToAbsent || delayMinutes != null) {
      map['delay_minutes'] = Variable<int>(delayMinutes);
    }
    map['she_forgot'] = Variable<bool>(sheForgot);
    map['day_in_pause'] = Variable<bool>(dayInPause);
    if (!nullToAbsent || medicationDay != null) {
      map['medication_day'] = Variable<int>(medicationDay);
    }
    map['is_first_dose_blister_pack'] = Variable<bool>(isFirstDoseBlisterPack);
    map['is_last_dose_in_blister_pack'] = Variable<bool>(
      isLastDoseInBlisterPack,
    );
    map['is_menstruation_day'] = Variable<bool>(isMenstruationDay);
    map['notification_sent'] = Variable<bool>(notificationSent);
    map['notification_seer'] = Variable<bool>(notificationSeer);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  RecordsAntiomceptivePillCompanion toCompanion(bool nullToAbsent) {
    return RecordsAntiomceptivePillCompanion(
      id: Value(id),
      registerDate: Value(registerDate),
      registerHour: Value(registerHour),
      taked: Value(taked),
      inHour: Value(inHour),
      delayMinutes: delayMinutes == null && nullToAbsent
          ? const Value.absent()
          : Value(delayMinutes),
      sheForgot: Value(sheForgot),
      dayInPause: Value(dayInPause),
      medicationDay: medicationDay == null && nullToAbsent
          ? const Value.absent()
          : Value(medicationDay),
      isFirstDoseBlisterPack: Value(isFirstDoseBlisterPack),
      isLastDoseInBlisterPack: Value(isLastDoseInBlisterPack),
      isMenstruationDay: Value(isMenstruationDay),
      notificationSent: Value(notificationSent),
      notificationSeer: Value(notificationSeer),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory RecordsAntiomceptivePillData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordsAntiomceptivePillData(
      id: serializer.fromJson<String>(json['id']),
      registerDate: serializer.fromJson<DateTime>(json['registerDate']),
      registerHour: serializer.fromJson<DateTime>(json['registerHour']),
      taked: serializer.fromJson<bool>(json['taked']),
      inHour: serializer.fromJson<bool>(json['inHour']),
      delayMinutes: serializer.fromJson<int?>(json['delayMinutes']),
      sheForgot: serializer.fromJson<bool>(json['sheForgot']),
      dayInPause: serializer.fromJson<bool>(json['dayInPause']),
      medicationDay: serializer.fromJson<int?>(json['medicationDay']),
      isFirstDoseBlisterPack: serializer.fromJson<bool>(
        json['isFirstDoseBlisterPack'],
      ),
      isLastDoseInBlisterPack: serializer.fromJson<bool>(
        json['isLastDoseInBlisterPack'],
      ),
      isMenstruationDay: serializer.fromJson<bool>(json['isMenstruationDay']),
      notificationSent: serializer.fromJson<bool>(json['notificationSent']),
      notificationSeer: serializer.fromJson<bool>(json['notificationSeer']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'registerDate': serializer.toJson<DateTime>(registerDate),
      'registerHour': serializer.toJson<DateTime>(registerHour),
      'taked': serializer.toJson<bool>(taked),
      'inHour': serializer.toJson<bool>(inHour),
      'delayMinutes': serializer.toJson<int?>(delayMinutes),
      'sheForgot': serializer.toJson<bool>(sheForgot),
      'dayInPause': serializer.toJson<bool>(dayInPause),
      'medicationDay': serializer.toJson<int?>(medicationDay),
      'isFirstDoseBlisterPack': serializer.toJson<bool>(isFirstDoseBlisterPack),
      'isLastDoseInBlisterPack': serializer.toJson<bool>(
        isLastDoseInBlisterPack,
      ),
      'isMenstruationDay': serializer.toJson<bool>(isMenstruationDay),
      'notificationSent': serializer.toJson<bool>(notificationSent),
      'notificationSeer': serializer.toJson<bool>(notificationSeer),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  RecordsAntiomceptivePillData copyWith({
    String? id,
    DateTime? registerDate,
    DateTime? registerHour,
    bool? taked,
    bool? inHour,
    Value<int?> delayMinutes = const Value.absent(),
    bool? sheForgot,
    bool? dayInPause,
    Value<int?> medicationDay = const Value.absent(),
    bool? isFirstDoseBlisterPack,
    bool? isLastDoseInBlisterPack,
    bool? isMenstruationDay,
    bool? notificationSent,
    bool? notificationSeer,
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => RecordsAntiomceptivePillData(
    id: id ?? this.id,
    registerDate: registerDate ?? this.registerDate,
    registerHour: registerHour ?? this.registerHour,
    taked: taked ?? this.taked,
    inHour: inHour ?? this.inHour,
    delayMinutes: delayMinutes.present ? delayMinutes.value : this.delayMinutes,
    sheForgot: sheForgot ?? this.sheForgot,
    dayInPause: dayInPause ?? this.dayInPause,
    medicationDay: medicationDay.present
        ? medicationDay.value
        : this.medicationDay,
    isFirstDoseBlisterPack:
        isFirstDoseBlisterPack ?? this.isFirstDoseBlisterPack,
    isLastDoseInBlisterPack:
        isLastDoseInBlisterPack ?? this.isLastDoseInBlisterPack,
    isMenstruationDay: isMenstruationDay ?? this.isMenstruationDay,
    notificationSent: notificationSent ?? this.notificationSent,
    notificationSeer: notificationSeer ?? this.notificationSeer,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  RecordsAntiomceptivePillData copyWithCompanion(
    RecordsAntiomceptivePillCompanion data,
  ) {
    return RecordsAntiomceptivePillData(
      id: data.id.present ? data.id.value : this.id,
      registerDate: data.registerDate.present
          ? data.registerDate.value
          : this.registerDate,
      registerHour: data.registerHour.present
          ? data.registerHour.value
          : this.registerHour,
      taked: data.taked.present ? data.taked.value : this.taked,
      inHour: data.inHour.present ? data.inHour.value : this.inHour,
      delayMinutes: data.delayMinutes.present
          ? data.delayMinutes.value
          : this.delayMinutes,
      sheForgot: data.sheForgot.present ? data.sheForgot.value : this.sheForgot,
      dayInPause: data.dayInPause.present
          ? data.dayInPause.value
          : this.dayInPause,
      medicationDay: data.medicationDay.present
          ? data.medicationDay.value
          : this.medicationDay,
      isFirstDoseBlisterPack: data.isFirstDoseBlisterPack.present
          ? data.isFirstDoseBlisterPack.value
          : this.isFirstDoseBlisterPack,
      isLastDoseInBlisterPack: data.isLastDoseInBlisterPack.present
          ? data.isLastDoseInBlisterPack.value
          : this.isLastDoseInBlisterPack,
      isMenstruationDay: data.isMenstruationDay.present
          ? data.isMenstruationDay.value
          : this.isMenstruationDay,
      notificationSent: data.notificationSent.present
          ? data.notificationSent.value
          : this.notificationSent,
      notificationSeer: data.notificationSeer.present
          ? data.notificationSeer.value
          : this.notificationSeer,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordsAntiomceptivePillData(')
          ..write('id: $id, ')
          ..write('registerDate: $registerDate, ')
          ..write('registerHour: $registerHour, ')
          ..write('taked: $taked, ')
          ..write('inHour: $inHour, ')
          ..write('delayMinutes: $delayMinutes, ')
          ..write('sheForgot: $sheForgot, ')
          ..write('dayInPause: $dayInPause, ')
          ..write('medicationDay: $medicationDay, ')
          ..write('isFirstDoseBlisterPack: $isFirstDoseBlisterPack, ')
          ..write('isLastDoseInBlisterPack: $isLastDoseInBlisterPack, ')
          ..write('isMenstruationDay: $isMenstruationDay, ')
          ..write('notificationSent: $notificationSent, ')
          ..write('notificationSeer: $notificationSeer, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    registerDate,
    registerHour,
    taked,
    inHour,
    delayMinutes,
    sheForgot,
    dayInPause,
    medicationDay,
    isFirstDoseBlisterPack,
    isLastDoseInBlisterPack,
    isMenstruationDay,
    notificationSent,
    notificationSeer,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordsAntiomceptivePillData &&
          other.id == this.id &&
          other.registerDate == this.registerDate &&
          other.registerHour == this.registerHour &&
          other.taked == this.taked &&
          other.inHour == this.inHour &&
          other.delayMinutes == this.delayMinutes &&
          other.sheForgot == this.sheForgot &&
          other.dayInPause == this.dayInPause &&
          other.medicationDay == this.medicationDay &&
          other.isFirstDoseBlisterPack == this.isFirstDoseBlisterPack &&
          other.isLastDoseInBlisterPack == this.isLastDoseInBlisterPack &&
          other.isMenstruationDay == this.isMenstruationDay &&
          other.notificationSent == this.notificationSent &&
          other.notificationSeer == this.notificationSeer &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class RecordsAntiomceptivePillCompanion
    extends UpdateCompanion<RecordsAntiomceptivePillData> {
  final Value<String> id;
  final Value<DateTime> registerDate;
  final Value<DateTime> registerHour;
  final Value<bool> taked;
  final Value<bool> inHour;
  final Value<int?> delayMinutes;
  final Value<bool> sheForgot;
  final Value<bool> dayInPause;
  final Value<int?> medicationDay;
  final Value<bool> isFirstDoseBlisterPack;
  final Value<bool> isLastDoseInBlisterPack;
  final Value<bool> isMenstruationDay;
  final Value<bool> notificationSent;
  final Value<bool> notificationSeer;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const RecordsAntiomceptivePillCompanion({
    this.id = const Value.absent(),
    this.registerDate = const Value.absent(),
    this.registerHour = const Value.absent(),
    this.taked = const Value.absent(),
    this.inHour = const Value.absent(),
    this.delayMinutes = const Value.absent(),
    this.sheForgot = const Value.absent(),
    this.dayInPause = const Value.absent(),
    this.medicationDay = const Value.absent(),
    this.isFirstDoseBlisterPack = const Value.absent(),
    this.isLastDoseInBlisterPack = const Value.absent(),
    this.isMenstruationDay = const Value.absent(),
    this.notificationSent = const Value.absent(),
    this.notificationSeer = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecordsAntiomceptivePillCompanion.insert({
    required String id,
    required DateTime registerDate,
    required DateTime registerHour,
    this.taked = const Value.absent(),
    this.inHour = const Value.absent(),
    this.delayMinutes = const Value.absent(),
    this.sheForgot = const Value.absent(),
    this.dayInPause = const Value.absent(),
    this.medicationDay = const Value.absent(),
    this.isFirstDoseBlisterPack = const Value.absent(),
    this.isLastDoseInBlisterPack = const Value.absent(),
    this.isMenstruationDay = const Value.absent(),
    this.notificationSent = const Value.absent(),
    this.notificationSeer = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       registerDate = Value(registerDate),
       registerHour = Value(registerHour);
  static Insertable<RecordsAntiomceptivePillData> custom({
    Expression<String>? id,
    Expression<DateTime>? registerDate,
    Expression<DateTime>? registerHour,
    Expression<bool>? taked,
    Expression<bool>? inHour,
    Expression<int>? delayMinutes,
    Expression<bool>? sheForgot,
    Expression<bool>? dayInPause,
    Expression<int>? medicationDay,
    Expression<bool>? isFirstDoseBlisterPack,
    Expression<bool>? isLastDoseInBlisterPack,
    Expression<bool>? isMenstruationDay,
    Expression<bool>? notificationSent,
    Expression<bool>? notificationSeer,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (registerDate != null) 'register_date': registerDate,
      if (registerHour != null) 'register_hour': registerHour,
      if (taked != null) 'taked': taked,
      if (inHour != null) 'in_hour': inHour,
      if (delayMinutes != null) 'delay_minutes': delayMinutes,
      if (sheForgot != null) 'she_forgot': sheForgot,
      if (dayInPause != null) 'day_in_pause': dayInPause,
      if (medicationDay != null) 'medication_day': medicationDay,
      if (isFirstDoseBlisterPack != null)
        'is_first_dose_blister_pack': isFirstDoseBlisterPack,
      if (isLastDoseInBlisterPack != null)
        'is_last_dose_in_blister_pack': isLastDoseInBlisterPack,
      if (isMenstruationDay != null) 'is_menstruation_day': isMenstruationDay,
      if (notificationSent != null) 'notification_sent': notificationSent,
      if (notificationSeer != null) 'notification_seer': notificationSeer,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecordsAntiomceptivePillCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? registerDate,
    Value<DateTime>? registerHour,
    Value<bool>? taked,
    Value<bool>? inHour,
    Value<int?>? delayMinutes,
    Value<bool>? sheForgot,
    Value<bool>? dayInPause,
    Value<int?>? medicationDay,
    Value<bool>? isFirstDoseBlisterPack,
    Value<bool>? isLastDoseInBlisterPack,
    Value<bool>? isMenstruationDay,
    Value<bool>? notificationSent,
    Value<bool>? notificationSeer,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return RecordsAntiomceptivePillCompanion(
      id: id ?? this.id,
      registerDate: registerDate ?? this.registerDate,
      registerHour: registerHour ?? this.registerHour,
      taked: taked ?? this.taked,
      inHour: inHour ?? this.inHour,
      delayMinutes: delayMinutes ?? this.delayMinutes,
      sheForgot: sheForgot ?? this.sheForgot,
      dayInPause: dayInPause ?? this.dayInPause,
      medicationDay: medicationDay ?? this.medicationDay,
      isFirstDoseBlisterPack:
          isFirstDoseBlisterPack ?? this.isFirstDoseBlisterPack,
      isLastDoseInBlisterPack:
          isLastDoseInBlisterPack ?? this.isLastDoseInBlisterPack,
      isMenstruationDay: isMenstruationDay ?? this.isMenstruationDay,
      notificationSent: notificationSent ?? this.notificationSent,
      notificationSeer: notificationSeer ?? this.notificationSeer,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (registerDate.present) {
      map['register_date'] = Variable<DateTime>(registerDate.value);
    }
    if (registerHour.present) {
      map['register_hour'] = Variable<DateTime>(registerHour.value);
    }
    if (taked.present) {
      map['taked'] = Variable<bool>(taked.value);
    }
    if (inHour.present) {
      map['in_hour'] = Variable<bool>(inHour.value);
    }
    if (delayMinutes.present) {
      map['delay_minutes'] = Variable<int>(delayMinutes.value);
    }
    if (sheForgot.present) {
      map['she_forgot'] = Variable<bool>(sheForgot.value);
    }
    if (dayInPause.present) {
      map['day_in_pause'] = Variable<bool>(dayInPause.value);
    }
    if (medicationDay.present) {
      map['medication_day'] = Variable<int>(medicationDay.value);
    }
    if (isFirstDoseBlisterPack.present) {
      map['is_first_dose_blister_pack'] = Variable<bool>(
        isFirstDoseBlisterPack.value,
      );
    }
    if (isLastDoseInBlisterPack.present) {
      map['is_last_dose_in_blister_pack'] = Variable<bool>(
        isLastDoseInBlisterPack.value,
      );
    }
    if (isMenstruationDay.present) {
      map['is_menstruation_day'] = Variable<bool>(isMenstruationDay.value);
    }
    if (notificationSent.present) {
      map['notification_sent'] = Variable<bool>(notificationSent.value);
    }
    if (notificationSeer.present) {
      map['notification_seer'] = Variable<bool>(notificationSeer.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordsAntiomceptivePillCompanion(')
          ..write('id: $id, ')
          ..write('registerDate: $registerDate, ')
          ..write('registerHour: $registerHour, ')
          ..write('taked: $taked, ')
          ..write('inHour: $inHour, ')
          ..write('delayMinutes: $delayMinutes, ')
          ..write('sheForgot: $sheForgot, ')
          ..write('dayInPause: $dayInPause, ')
          ..write('medicationDay: $medicationDay, ')
          ..write('isFirstDoseBlisterPack: $isFirstDoseBlisterPack, ')
          ..write('isLastDoseInBlisterPack: $isLastDoseInBlisterPack, ')
          ..write('isMenstruationDay: $isMenstruationDay, ')
          ..write('notificationSent: $notificationSent, ')
          ..write('notificationSeer: $notificationSeer, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ReminderAntiomceptivePillTable extends ReminderAntiomceptivePill
    with
        TableInfo<
          $ReminderAntiomceptivePillTable,
          ReminderAntiomceptivePillData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReminderAntiomceptivePillTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstRememberTimeMeta = const VerificationMeta(
    'firstRememberTime',
  );
  @override
  late final GeneratedColumn<DateTime> firstRememberTime =
      GeneratedColumn<DateTime>(
        'first_remember_time',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _secondRememberTimeMeta =
      const VerificationMeta('secondRememberTime');
  @override
  late final GeneratedColumn<DateTime> secondRememberTime =
      GeneratedColumn<DateTime>(
        'second_remember_time',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _thirdRememberTimeMeta = const VerificationMeta(
    'thirdRememberTime',
  );
  @override
  late final GeneratedColumn<DateTime> thirdRememberTime =
      GeneratedColumn<DateTime>(
        'third_remember_time',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool> active = GeneratedColumn<bool>(
    'active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _minutesInAdvanceMeta = const VerificationMeta(
    'minutesInAdvance',
  );
  @override
  late final GeneratedColumn<int> minutesInAdvance = GeneratedColumn<int>(
    'minutes_in_advance',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(15),
  );
  static const VerificationMeta _mondayMeta = const VerificationMeta('monday');
  @override
  late final GeneratedColumn<bool> monday = GeneratedColumn<bool>(
    'monday',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("monday" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _tuesdayMeta = const VerificationMeta(
    'tuesday',
  );
  @override
  late final GeneratedColumn<bool> tuesday = GeneratedColumn<bool>(
    'tuesday',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("tuesday" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _wednesdayMeta = const VerificationMeta(
    'wednesday',
  );
  @override
  late final GeneratedColumn<bool> wednesday = GeneratedColumn<bool>(
    'wednesday',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("wednesday" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _thursdayMeta = const VerificationMeta(
    'thursday',
  );
  @override
  late final GeneratedColumn<bool> thursday = GeneratedColumn<bool>(
    'thursday',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("thursday" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _fridayMeta = const VerificationMeta('friday');
  @override
  late final GeneratedColumn<bool> friday = GeneratedColumn<bool>(
    'friday',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("friday" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _saturdayMeta = const VerificationMeta(
    'saturday',
  );
  @override
  late final GeneratedColumn<bool> saturday = GeneratedColumn<bool>(
    'saturday',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("saturday" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _sundayMeta = const VerificationMeta('sunday');
  @override
  late final GeneratedColumn<bool> sunday = GeneratedColumn<bool>(
    'sunday',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("sunday" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    firstRememberTime,
    secondRememberTime,
    thirdRememberTime,
    active,
    minutesInAdvance,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reminder_antiomceptive_pill';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReminderAntiomceptivePillData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('first_remember_time')) {
      context.handle(
        _firstRememberTimeMeta,
        firstRememberTime.isAcceptableOrUnknown(
          data['first_remember_time']!,
          _firstRememberTimeMeta,
        ),
      );
    }
    if (data.containsKey('second_remember_time')) {
      context.handle(
        _secondRememberTimeMeta,
        secondRememberTime.isAcceptableOrUnknown(
          data['second_remember_time']!,
          _secondRememberTimeMeta,
        ),
      );
    }
    if (data.containsKey('third_remember_time')) {
      context.handle(
        _thirdRememberTimeMeta,
        thirdRememberTime.isAcceptableOrUnknown(
          data['third_remember_time']!,
          _thirdRememberTimeMeta,
        ),
      );
    }
    if (data.containsKey('active')) {
      context.handle(
        _activeMeta,
        active.isAcceptableOrUnknown(data['active']!, _activeMeta),
      );
    }
    if (data.containsKey('minutes_in_advance')) {
      context.handle(
        _minutesInAdvanceMeta,
        minutesInAdvance.isAcceptableOrUnknown(
          data['minutes_in_advance']!,
          _minutesInAdvanceMeta,
        ),
      );
    }
    if (data.containsKey('monday')) {
      context.handle(
        _mondayMeta,
        monday.isAcceptableOrUnknown(data['monday']!, _mondayMeta),
      );
    }
    if (data.containsKey('tuesday')) {
      context.handle(
        _tuesdayMeta,
        tuesday.isAcceptableOrUnknown(data['tuesday']!, _tuesdayMeta),
      );
    }
    if (data.containsKey('wednesday')) {
      context.handle(
        _wednesdayMeta,
        wednesday.isAcceptableOrUnknown(data['wednesday']!, _wednesdayMeta),
      );
    }
    if (data.containsKey('thursday')) {
      context.handle(
        _thursdayMeta,
        thursday.isAcceptableOrUnknown(data['thursday']!, _thursdayMeta),
      );
    }
    if (data.containsKey('friday')) {
      context.handle(
        _fridayMeta,
        friday.isAcceptableOrUnknown(data['friday']!, _fridayMeta),
      );
    }
    if (data.containsKey('saturday')) {
      context.handle(
        _saturdayMeta,
        saturday.isAcceptableOrUnknown(data['saturday']!, _saturdayMeta),
      );
    }
    if (data.containsKey('sunday')) {
      context.handle(
        _sundayMeta,
        sunday.isAcceptableOrUnknown(data['sunday']!, _sundayMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReminderAntiomceptivePillData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReminderAntiomceptivePillData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      firstRememberTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}first_remember_time'],
      ),
      secondRememberTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}second_remember_time'],
      ),
      thirdRememberTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}third_remember_time'],
      ),
      active: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}active'],
      )!,
      minutesInAdvance: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_in_advance'],
      )!,
      monday: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}monday'],
      )!,
      tuesday: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}tuesday'],
      )!,
      wednesday: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}wednesday'],
      )!,
      thursday: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}thursday'],
      )!,
      friday: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}friday'],
      )!,
      saturday: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}saturday'],
      )!,
      sunday: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}sunday'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $ReminderAntiomceptivePillTable createAlias(String alias) {
    return $ReminderAntiomceptivePillTable(attachedDatabase, alias);
  }
}

class ReminderAntiomceptivePillData extends DataClass
    implements Insertable<ReminderAntiomceptivePillData> {
  final String id;
  final DateTime? firstRememberTime;
  final DateTime? secondRememberTime;
  final DateTime? thirdRememberTime;
  final bool active;
  final int minutesInAdvance;
  final bool monday;
  final bool tuesday;
  final bool wednesday;
  final bool thursday;
  final bool friday;
  final bool saturday;
  final bool sunday;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  const ReminderAntiomceptivePillData({
    required this.id,
    this.firstRememberTime,
    this.secondRememberTime,
    this.thirdRememberTime,
    required this.active,
    required this.minutesInAdvance,
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
    required this.sunday,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || firstRememberTime != null) {
      map['first_remember_time'] = Variable<DateTime>(firstRememberTime);
    }
    if (!nullToAbsent || secondRememberTime != null) {
      map['second_remember_time'] = Variable<DateTime>(secondRememberTime);
    }
    if (!nullToAbsent || thirdRememberTime != null) {
      map['third_remember_time'] = Variable<DateTime>(thirdRememberTime);
    }
    map['active'] = Variable<bool>(active);
    map['minutes_in_advance'] = Variable<int>(minutesInAdvance);
    map['monday'] = Variable<bool>(monday);
    map['tuesday'] = Variable<bool>(tuesday);
    map['wednesday'] = Variable<bool>(wednesday);
    map['thursday'] = Variable<bool>(thursday);
    map['friday'] = Variable<bool>(friday);
    map['saturday'] = Variable<bool>(saturday);
    map['sunday'] = Variable<bool>(sunday);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  ReminderAntiomceptivePillCompanion toCompanion(bool nullToAbsent) {
    return ReminderAntiomceptivePillCompanion(
      id: Value(id),
      firstRememberTime: firstRememberTime == null && nullToAbsent
          ? const Value.absent()
          : Value(firstRememberTime),
      secondRememberTime: secondRememberTime == null && nullToAbsent
          ? const Value.absent()
          : Value(secondRememberTime),
      thirdRememberTime: thirdRememberTime == null && nullToAbsent
          ? const Value.absent()
          : Value(thirdRememberTime),
      active: Value(active),
      minutesInAdvance: Value(minutesInAdvance),
      monday: Value(monday),
      tuesday: Value(tuesday),
      wednesday: Value(wednesday),
      thursday: Value(thursday),
      friday: Value(friday),
      saturday: Value(saturday),
      sunday: Value(sunday),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory ReminderAntiomceptivePillData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReminderAntiomceptivePillData(
      id: serializer.fromJson<String>(json['id']),
      firstRememberTime: serializer.fromJson<DateTime?>(
        json['firstRememberTime'],
      ),
      secondRememberTime: serializer.fromJson<DateTime?>(
        json['secondRememberTime'],
      ),
      thirdRememberTime: serializer.fromJson<DateTime?>(
        json['thirdRememberTime'],
      ),
      active: serializer.fromJson<bool>(json['active']),
      minutesInAdvance: serializer.fromJson<int>(json['minutesInAdvance']),
      monday: serializer.fromJson<bool>(json['monday']),
      tuesday: serializer.fromJson<bool>(json['tuesday']),
      wednesday: serializer.fromJson<bool>(json['wednesday']),
      thursday: serializer.fromJson<bool>(json['thursday']),
      friday: serializer.fromJson<bool>(json['friday']),
      saturday: serializer.fromJson<bool>(json['saturday']),
      sunday: serializer.fromJson<bool>(json['sunday']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'firstRememberTime': serializer.toJson<DateTime?>(firstRememberTime),
      'secondRememberTime': serializer.toJson<DateTime?>(secondRememberTime),
      'thirdRememberTime': serializer.toJson<DateTime?>(thirdRememberTime),
      'active': serializer.toJson<bool>(active),
      'minutesInAdvance': serializer.toJson<int>(minutesInAdvance),
      'monday': serializer.toJson<bool>(monday),
      'tuesday': serializer.toJson<bool>(tuesday),
      'wednesday': serializer.toJson<bool>(wednesday),
      'thursday': serializer.toJson<bool>(thursday),
      'friday': serializer.toJson<bool>(friday),
      'saturday': serializer.toJson<bool>(saturday),
      'sunday': serializer.toJson<bool>(sunday),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  ReminderAntiomceptivePillData copyWith({
    String? id,
    Value<DateTime?> firstRememberTime = const Value.absent(),
    Value<DateTime?> secondRememberTime = const Value.absent(),
    Value<DateTime?> thirdRememberTime = const Value.absent(),
    bool? active,
    int? minutesInAdvance,
    bool? monday,
    bool? tuesday,
    bool? wednesday,
    bool? thursday,
    bool? friday,
    bool? saturday,
    bool? sunday,
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
    Value<DateTime?> deletedAt = const Value.absent(),
  }) => ReminderAntiomceptivePillData(
    id: id ?? this.id,
    firstRememberTime: firstRememberTime.present
        ? firstRememberTime.value
        : this.firstRememberTime,
    secondRememberTime: secondRememberTime.present
        ? secondRememberTime.value
        : this.secondRememberTime,
    thirdRememberTime: thirdRememberTime.present
        ? thirdRememberTime.value
        : this.thirdRememberTime,
    active: active ?? this.active,
    minutesInAdvance: minutesInAdvance ?? this.minutesInAdvance,
    monday: monday ?? this.monday,
    tuesday: tuesday ?? this.tuesday,
    wednesday: wednesday ?? this.wednesday,
    thursday: thursday ?? this.thursday,
    friday: friday ?? this.friday,
    saturday: saturday ?? this.saturday,
    sunday: sunday ?? this.sunday,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  ReminderAntiomceptivePillData copyWithCompanion(
    ReminderAntiomceptivePillCompanion data,
  ) {
    return ReminderAntiomceptivePillData(
      id: data.id.present ? data.id.value : this.id,
      firstRememberTime: data.firstRememberTime.present
          ? data.firstRememberTime.value
          : this.firstRememberTime,
      secondRememberTime: data.secondRememberTime.present
          ? data.secondRememberTime.value
          : this.secondRememberTime,
      thirdRememberTime: data.thirdRememberTime.present
          ? data.thirdRememberTime.value
          : this.thirdRememberTime,
      active: data.active.present ? data.active.value : this.active,
      minutesInAdvance: data.minutesInAdvance.present
          ? data.minutesInAdvance.value
          : this.minutesInAdvance,
      monday: data.monday.present ? data.monday.value : this.monday,
      tuesday: data.tuesday.present ? data.tuesday.value : this.tuesday,
      wednesday: data.wednesday.present ? data.wednesday.value : this.wednesday,
      thursday: data.thursday.present ? data.thursday.value : this.thursday,
      friday: data.friday.present ? data.friday.value : this.friday,
      saturday: data.saturday.present ? data.saturday.value : this.saturday,
      sunday: data.sunday.present ? data.sunday.value : this.sunday,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReminderAntiomceptivePillData(')
          ..write('id: $id, ')
          ..write('firstRememberTime: $firstRememberTime, ')
          ..write('secondRememberTime: $secondRememberTime, ')
          ..write('thirdRememberTime: $thirdRememberTime, ')
          ..write('active: $active, ')
          ..write('minutesInAdvance: $minutesInAdvance, ')
          ..write('monday: $monday, ')
          ..write('tuesday: $tuesday, ')
          ..write('wednesday: $wednesday, ')
          ..write('thursday: $thursday, ')
          ..write('friday: $friday, ')
          ..write('saturday: $saturday, ')
          ..write('sunday: $sunday, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    firstRememberTime,
    secondRememberTime,
    thirdRememberTime,
    active,
    minutesInAdvance,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReminderAntiomceptivePillData &&
          other.id == this.id &&
          other.firstRememberTime == this.firstRememberTime &&
          other.secondRememberTime == this.secondRememberTime &&
          other.thirdRememberTime == this.thirdRememberTime &&
          other.active == this.active &&
          other.minutesInAdvance == this.minutesInAdvance &&
          other.monday == this.monday &&
          other.tuesday == this.tuesday &&
          other.wednesday == this.wednesday &&
          other.thursday == this.thursday &&
          other.friday == this.friday &&
          other.saturday == this.saturday &&
          other.sunday == this.sunday &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class ReminderAntiomceptivePillCompanion
    extends UpdateCompanion<ReminderAntiomceptivePillData> {
  final Value<String> id;
  final Value<DateTime?> firstRememberTime;
  final Value<DateTime?> secondRememberTime;
  final Value<DateTime?> thirdRememberTime;
  final Value<bool> active;
  final Value<int> minutesInAdvance;
  final Value<bool> monday;
  final Value<bool> tuesday;
  final Value<bool> wednesday;
  final Value<bool> thursday;
  final Value<bool> friday;
  final Value<bool> saturday;
  final Value<bool> sunday;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const ReminderAntiomceptivePillCompanion({
    this.id = const Value.absent(),
    this.firstRememberTime = const Value.absent(),
    this.secondRememberTime = const Value.absent(),
    this.thirdRememberTime = const Value.absent(),
    this.active = const Value.absent(),
    this.minutesInAdvance = const Value.absent(),
    this.monday = const Value.absent(),
    this.tuesday = const Value.absent(),
    this.wednesday = const Value.absent(),
    this.thursday = const Value.absent(),
    this.friday = const Value.absent(),
    this.saturday = const Value.absent(),
    this.sunday = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ReminderAntiomceptivePillCompanion.insert({
    required String id,
    this.firstRememberTime = const Value.absent(),
    this.secondRememberTime = const Value.absent(),
    this.thirdRememberTime = const Value.absent(),
    this.active = const Value.absent(),
    this.minutesInAdvance = const Value.absent(),
    this.monday = const Value.absent(),
    this.tuesday = const Value.absent(),
    this.wednesday = const Value.absent(),
    this.thursday = const Value.absent(),
    this.friday = const Value.absent(),
    this.saturday = const Value.absent(),
    this.sunday = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<ReminderAntiomceptivePillData> custom({
    Expression<String>? id,
    Expression<DateTime>? firstRememberTime,
    Expression<DateTime>? secondRememberTime,
    Expression<DateTime>? thirdRememberTime,
    Expression<bool>? active,
    Expression<int>? minutesInAdvance,
    Expression<bool>? monday,
    Expression<bool>? tuesday,
    Expression<bool>? wednesday,
    Expression<bool>? thursday,
    Expression<bool>? friday,
    Expression<bool>? saturday,
    Expression<bool>? sunday,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstRememberTime != null) 'first_remember_time': firstRememberTime,
      if (secondRememberTime != null)
        'second_remember_time': secondRememberTime,
      if (thirdRememberTime != null) 'third_remember_time': thirdRememberTime,
      if (active != null) 'active': active,
      if (minutesInAdvance != null) 'minutes_in_advance': minutesInAdvance,
      if (monday != null) 'monday': monday,
      if (tuesday != null) 'tuesday': tuesday,
      if (wednesday != null) 'wednesday': wednesday,
      if (thursday != null) 'thursday': thursday,
      if (friday != null) 'friday': friday,
      if (saturday != null) 'saturday': saturday,
      if (sunday != null) 'sunday': sunday,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ReminderAntiomceptivePillCompanion copyWith({
    Value<String>? id,
    Value<DateTime?>? firstRememberTime,
    Value<DateTime?>? secondRememberTime,
    Value<DateTime?>? thirdRememberTime,
    Value<bool>? active,
    Value<int>? minutesInAdvance,
    Value<bool>? monday,
    Value<bool>? tuesday,
    Value<bool>? wednesday,
    Value<bool>? thursday,
    Value<bool>? friday,
    Value<bool>? saturday,
    Value<bool>? sunday,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<int>? rowid,
  }) {
    return ReminderAntiomceptivePillCompanion(
      id: id ?? this.id,
      firstRememberTime: firstRememberTime ?? this.firstRememberTime,
      secondRememberTime: secondRememberTime ?? this.secondRememberTime,
      thirdRememberTime: thirdRememberTime ?? this.thirdRememberTime,
      active: active ?? this.active,
      minutesInAdvance: minutesInAdvance ?? this.minutesInAdvance,
      monday: monday ?? this.monday,
      tuesday: tuesday ?? this.tuesday,
      wednesday: wednesday ?? this.wednesday,
      thursday: thursday ?? this.thursday,
      friday: friday ?? this.friday,
      saturday: saturday ?? this.saturday,
      sunday: sunday ?? this.sunday,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (firstRememberTime.present) {
      map['first_remember_time'] = Variable<DateTime>(firstRememberTime.value);
    }
    if (secondRememberTime.present) {
      map['second_remember_time'] = Variable<DateTime>(
        secondRememberTime.value,
      );
    }
    if (thirdRememberTime.present) {
      map['third_remember_time'] = Variable<DateTime>(thirdRememberTime.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (minutesInAdvance.present) {
      map['minutes_in_advance'] = Variable<int>(minutesInAdvance.value);
    }
    if (monday.present) {
      map['monday'] = Variable<bool>(monday.value);
    }
    if (tuesday.present) {
      map['tuesday'] = Variable<bool>(tuesday.value);
    }
    if (wednesday.present) {
      map['wednesday'] = Variable<bool>(wednesday.value);
    }
    if (thursday.present) {
      map['thursday'] = Variable<bool>(thursday.value);
    }
    if (friday.present) {
      map['friday'] = Variable<bool>(friday.value);
    }
    if (saturday.present) {
      map['saturday'] = Variable<bool>(saturday.value);
    }
    if (sunday.present) {
      map['sunday'] = Variable<bool>(sunday.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReminderAntiomceptivePillCompanion(')
          ..write('id: $id, ')
          ..write('firstRememberTime: $firstRememberTime, ')
          ..write('secondRememberTime: $secondRememberTime, ')
          ..write('thirdRememberTime: $thirdRememberTime, ')
          ..write('active: $active, ')
          ..write('minutesInAdvance: $minutesInAdvance, ')
          ..write('monday: $monday, ')
          ..write('tuesday: $tuesday, ')
          ..write('wednesday: $wednesday, ')
          ..write('thursday: $thursday, ')
          ..write('friday: $friday, ')
          ..write('saturday: $saturday, ')
          ..write('sunday: $sunday, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CompletedReadGenderTableTable extends CompletedReadGenderTable
    with
        TableInfo<
          $CompletedReadGenderTableTable,
          CompletedReadGenderTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompletedReadGenderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<String> bookId = GeneratedColumn<String>(
    'book_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES completed_read_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _genderIdMeta = const VerificationMeta(
    'genderId',
  );
  @override
  late final GeneratedColumn<String> genderId = GeneratedColumn<String>(
    'gender_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, bookId, genderId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'completed_read_gender_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CompletedReadGenderTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(
        _bookIdMeta,
        bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta),
      );
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('gender_id')) {
      context.handle(
        _genderIdMeta,
        genderId.isAcceptableOrUnknown(data['gender_id']!, _genderIdMeta),
      );
    } else if (isInserting) {
      context.missing(_genderIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompletedReadGenderTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompletedReadGenderTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      bookId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}book_id'],
      )!,
      genderId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender_id'],
      )!,
    );
  }

  @override
  $CompletedReadGenderTableTable createAlias(String alias) {
    return $CompletedReadGenderTableTable(attachedDatabase, alias);
  }
}

class CompletedReadGenderTableData extends DataClass
    implements Insertable<CompletedReadGenderTableData> {
  final String id;
  final String bookId;
  final String genderId;
  const CompletedReadGenderTableData({
    required this.id,
    required this.bookId,
    required this.genderId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['book_id'] = Variable<String>(bookId);
    map['gender_id'] = Variable<String>(genderId);
    return map;
  }

  CompletedReadGenderTableCompanion toCompanion(bool nullToAbsent) {
    return CompletedReadGenderTableCompanion(
      id: Value(id),
      bookId: Value(bookId),
      genderId: Value(genderId),
    );
  }

  factory CompletedReadGenderTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompletedReadGenderTableData(
      id: serializer.fromJson<String>(json['id']),
      bookId: serializer.fromJson<String>(json['bookId']),
      genderId: serializer.fromJson<String>(json['genderId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'bookId': serializer.toJson<String>(bookId),
      'genderId': serializer.toJson<String>(genderId),
    };
  }

  CompletedReadGenderTableData copyWith({
    String? id,
    String? bookId,
    String? genderId,
  }) => CompletedReadGenderTableData(
    id: id ?? this.id,
    bookId: bookId ?? this.bookId,
    genderId: genderId ?? this.genderId,
  );
  CompletedReadGenderTableData copyWithCompanion(
    CompletedReadGenderTableCompanion data,
  ) {
    return CompletedReadGenderTableData(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      genderId: data.genderId.present ? data.genderId.value : this.genderId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CompletedReadGenderTableData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('genderId: $genderId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, bookId, genderId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompletedReadGenderTableData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.genderId == this.genderId);
}

class CompletedReadGenderTableCompanion
    extends UpdateCompanion<CompletedReadGenderTableData> {
  final Value<String> id;
  final Value<String> bookId;
  final Value<String> genderId;
  final Value<int> rowid;
  const CompletedReadGenderTableCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.genderId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CompletedReadGenderTableCompanion.insert({
    required String id,
    required String bookId,
    required String genderId,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       bookId = Value(bookId),
       genderId = Value(genderId);
  static Insertable<CompletedReadGenderTableData> custom({
    Expression<String>? id,
    Expression<String>? bookId,
    Expression<String>? genderId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (genderId != null) 'gender_id': genderId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CompletedReadGenderTableCompanion copyWith({
    Value<String>? id,
    Value<String>? bookId,
    Value<String>? genderId,
    Value<int>? rowid,
  }) {
    return CompletedReadGenderTableCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      genderId: genderId ?? this.genderId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<String>(bookId.value);
    }
    if (genderId.present) {
      map['gender_id'] = Variable<String>(genderId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompletedReadGenderTableCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('genderId: $genderId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CompletedReadAuthorTableTable extends CompletedReadAuthorTable
    with
        TableInfo<
          $CompletedReadAuthorTableTable,
          CompletedReadAuthorTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompletedReadAuthorTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<String> bookId = GeneratedColumn<String>(
    'book_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES completed_read_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _authorIdMeta = const VerificationMeta(
    'authorId',
  );
  @override
  late final GeneratedColumn<String> authorId = GeneratedColumn<String>(
    'author_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, bookId, authorId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'completed_read_author_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CompletedReadAuthorTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(
        _bookIdMeta,
        bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta),
      );
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('author_id')) {
      context.handle(
        _authorIdMeta,
        authorId.isAcceptableOrUnknown(data['author_id']!, _authorIdMeta),
      );
    } else if (isInserting) {
      context.missing(_authorIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompletedReadAuthorTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompletedReadAuthorTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      bookId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}book_id'],
      )!,
      authorId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}author_id'],
      )!,
    );
  }

  @override
  $CompletedReadAuthorTableTable createAlias(String alias) {
    return $CompletedReadAuthorTableTable(attachedDatabase, alias);
  }
}

class CompletedReadAuthorTableData extends DataClass
    implements Insertable<CompletedReadAuthorTableData> {
  final String id;
  final String bookId;
  final String authorId;
  const CompletedReadAuthorTableData({
    required this.id,
    required this.bookId,
    required this.authorId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['book_id'] = Variable<String>(bookId);
    map['author_id'] = Variable<String>(authorId);
    return map;
  }

  CompletedReadAuthorTableCompanion toCompanion(bool nullToAbsent) {
    return CompletedReadAuthorTableCompanion(
      id: Value(id),
      bookId: Value(bookId),
      authorId: Value(authorId),
    );
  }

  factory CompletedReadAuthorTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompletedReadAuthorTableData(
      id: serializer.fromJson<String>(json['id']),
      bookId: serializer.fromJson<String>(json['bookId']),
      authorId: serializer.fromJson<String>(json['authorId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'bookId': serializer.toJson<String>(bookId),
      'authorId': serializer.toJson<String>(authorId),
    };
  }

  CompletedReadAuthorTableData copyWith({
    String? id,
    String? bookId,
    String? authorId,
  }) => CompletedReadAuthorTableData(
    id: id ?? this.id,
    bookId: bookId ?? this.bookId,
    authorId: authorId ?? this.authorId,
  );
  CompletedReadAuthorTableData copyWithCompanion(
    CompletedReadAuthorTableCompanion data,
  ) {
    return CompletedReadAuthorTableData(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      authorId: data.authorId.present ? data.authorId.value : this.authorId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CompletedReadAuthorTableData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('authorId: $authorId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, bookId, authorId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompletedReadAuthorTableData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.authorId == this.authorId);
}

class CompletedReadAuthorTableCompanion
    extends UpdateCompanion<CompletedReadAuthorTableData> {
  final Value<String> id;
  final Value<String> bookId;
  final Value<String> authorId;
  final Value<int> rowid;
  const CompletedReadAuthorTableCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.authorId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CompletedReadAuthorTableCompanion.insert({
    required String id,
    required String bookId,
    required String authorId,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       bookId = Value(bookId),
       authorId = Value(authorId);
  static Insertable<CompletedReadAuthorTableData> custom({
    Expression<String>? id,
    Expression<String>? bookId,
    Expression<String>? authorId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (authorId != null) 'author_id': authorId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CompletedReadAuthorTableCompanion copyWith({
    Value<String>? id,
    Value<String>? bookId,
    Value<String>? authorId,
    Value<int>? rowid,
  }) {
    return CompletedReadAuthorTableCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      authorId: authorId ?? this.authorId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<String>(bookId.value);
    }
    if (authorId.present) {
      map['author_id'] = Variable<String>(authorId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompletedReadAuthorTableCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('authorId: $authorId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FinnacesHeaderTableTable finnacesHeaderTable =
      $FinnacesHeaderTableTable(this);
  late final $BooksNacionalityTableTable booksNacionalityTable =
      $BooksNacionalityTableTable(this);
  late final $BooksAuthorTableTable booksAuthorTable = $BooksAuthorTableTable(
    this,
  );
  late final $BooksGenderTableTable booksGenderTable = $BooksGenderTableTable(
    this,
  );
  late final $BooksPublishersTableTable booksPublishersTable =
      $BooksPublishersTableTable(this);
  late final $CompletedReadTableTable completedReadTable =
      $CompletedReadTableTable(this);
  late final $FinnancesExpenseTableTable finnancesExpenseTable =
      $FinnancesExpenseTableTable(this);
  late final $MenstrualCyclePredictionTable menstrualCyclePrediction =
      $MenstrualCyclePredictionTable(this);
  late final $MenstrualCycleTrackingTableTable menstrualCycleTrackingTable =
      $MenstrualCycleTrackingTableTable(this);
  late final $MesnstrualCycleUserInfosTableTable mesnstrualCycleUserInfosTable =
      $MesnstrualCycleUserInfosTableTable(this);
  late final $RecordsAntiomceptivePillTable recordsAntiomceptivePill =
      $RecordsAntiomceptivePillTable(this);
  late final $ReminderAntiomceptivePillTable reminderAntiomceptivePill =
      $ReminderAntiomceptivePillTable(this);
  late final $CompletedReadGenderTableTable completedReadGenderTable =
      $CompletedReadGenderTableTable(this);
  late final $CompletedReadAuthorTableTable completedReadAuthorTable =
      $CompletedReadAuthorTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    finnacesHeaderTable,
    booksNacionalityTable,
    booksAuthorTable,
    booksGenderTable,
    booksPublishersTable,
    completedReadTable,
    finnancesExpenseTable,
    menstrualCyclePrediction,
    menstrualCycleTrackingTable,
    mesnstrualCycleUserInfosTable,
    recordsAntiomceptivePill,
    reminderAntiomceptivePill,
    completedReadGenderTable,
    completedReadAuthorTable,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'books_nacionality_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('books_author_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'books_nacionality_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('books_publishers_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'books_nacionality_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('completed_read_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'books_publishers_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('completed_read_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'finnaces_header_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('finnances_expense_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'completed_read_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [
        TableUpdate('completed_read_gender_table', kind: UpdateKind.delete),
      ],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'completed_read_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [
        TableUpdate('completed_read_author_table', kind: UpdateKind.delete),
      ],
    ),
  ]);
}

typedef $$FinnacesHeaderTableTableCreateCompanionBuilder =
    FinnacesHeaderTableCompanion Function({
      required String id,
      required int year,
      required String month,
      required String totalReceived,
      required String totalSpent,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$FinnacesHeaderTableTableUpdateCompanionBuilder =
    FinnacesHeaderTableCompanion Function({
      Value<String> id,
      Value<int> year,
      Value<String> month,
      Value<String> totalReceived,
      Value<String> totalSpent,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$FinnacesHeaderTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $FinnacesHeaderTableTable,
          FinnacesHeaderTableData
        > {
  $$FinnacesHeaderTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<
    $FinnancesExpenseTableTable,
    List<FinnancesExpenseTableData>
  >
  _finnancesExpenseTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.finnancesExpenseTable,
        aliasName: $_aliasNameGenerator(
          db.finnacesHeaderTable.id,
          db.finnancesExpenseTable.finnacesId,
        ),
      );

  $$FinnancesExpenseTableTableProcessedTableManager
  get finnancesExpenseTableRefs {
    final manager = $$FinnancesExpenseTableTableTableManager(
      $_db,
      $_db.finnancesExpenseTable,
    ).filter((f) => f.finnacesId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _finnancesExpenseTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$FinnacesHeaderTableTableFilterComposer
    extends Composer<_$AppDatabase, $FinnacesHeaderTableTable> {
  $$FinnacesHeaderTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get totalReceived => $composableBuilder(
    column: $table.totalReceived,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get totalSpent => $composableBuilder(
    column: $table.totalSpent,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> finnancesExpenseTableRefs(
    Expression<bool> Function($$FinnancesExpenseTableTableFilterComposer f) f,
  ) {
    final $$FinnancesExpenseTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.finnancesExpenseTable,
          getReferencedColumn: (t) => t.finnacesId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$FinnancesExpenseTableTableFilterComposer(
                $db: $db,
                $table: $db.finnancesExpenseTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$FinnacesHeaderTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FinnacesHeaderTableTable> {
  $$FinnacesHeaderTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get totalReceived => $composableBuilder(
    column: $table.totalReceived,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get totalSpent => $composableBuilder(
    column: $table.totalSpent,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FinnacesHeaderTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FinnacesHeaderTableTable> {
  $$FinnacesHeaderTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<String> get month =>
      $composableBuilder(column: $table.month, builder: (column) => column);

  GeneratedColumn<String> get totalReceived => $composableBuilder(
    column: $table.totalReceived,
    builder: (column) => column,
  );

  GeneratedColumn<String> get totalSpent => $composableBuilder(
    column: $table.totalSpent,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> finnancesExpenseTableRefs<T extends Object>(
    Expression<T> Function($$FinnancesExpenseTableTableAnnotationComposer a) f,
  ) {
    final $$FinnancesExpenseTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.finnancesExpenseTable,
          getReferencedColumn: (t) => t.finnacesId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$FinnancesExpenseTableTableAnnotationComposer(
                $db: $db,
                $table: $db.finnancesExpenseTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$FinnacesHeaderTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FinnacesHeaderTableTable,
          FinnacesHeaderTableData,
          $$FinnacesHeaderTableTableFilterComposer,
          $$FinnacesHeaderTableTableOrderingComposer,
          $$FinnacesHeaderTableTableAnnotationComposer,
          $$FinnacesHeaderTableTableCreateCompanionBuilder,
          $$FinnacesHeaderTableTableUpdateCompanionBuilder,
          (FinnacesHeaderTableData, $$FinnacesHeaderTableTableReferences),
          FinnacesHeaderTableData,
          PrefetchHooks Function({bool finnancesExpenseTableRefs})
        > {
  $$FinnacesHeaderTableTableTableManager(
    _$AppDatabase db,
    $FinnacesHeaderTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FinnacesHeaderTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FinnacesHeaderTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$FinnacesHeaderTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<int> year = const Value.absent(),
                Value<String> month = const Value.absent(),
                Value<String> totalReceived = const Value.absent(),
                Value<String> totalSpent = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FinnacesHeaderTableCompanion(
                id: id,
                year: year,
                month: month,
                totalReceived: totalReceived,
                totalSpent: totalSpent,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required int year,
                required String month,
                required String totalReceived,
                required String totalSpent,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FinnacesHeaderTableCompanion.insert(
                id: id,
                year: year,
                month: month,
                totalReceived: totalReceived,
                totalSpent: totalSpent,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FinnacesHeaderTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({finnancesExpenseTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (finnancesExpenseTableRefs) db.finnancesExpenseTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (finnancesExpenseTableRefs)
                    await $_getPrefetchedData<
                      FinnacesHeaderTableData,
                      $FinnacesHeaderTableTable,
                      FinnancesExpenseTableData
                    >(
                      currentTable: table,
                      referencedTable: $$FinnacesHeaderTableTableReferences
                          ._finnancesExpenseTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$FinnacesHeaderTableTableReferences(
                            db,
                            table,
                            p0,
                          ).finnancesExpenseTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.finnacesId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$FinnacesHeaderTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FinnacesHeaderTableTable,
      FinnacesHeaderTableData,
      $$FinnacesHeaderTableTableFilterComposer,
      $$FinnacesHeaderTableTableOrderingComposer,
      $$FinnacesHeaderTableTableAnnotationComposer,
      $$FinnacesHeaderTableTableCreateCompanionBuilder,
      $$FinnacesHeaderTableTableUpdateCompanionBuilder,
      (FinnacesHeaderTableData, $$FinnacesHeaderTableTableReferences),
      FinnacesHeaderTableData,
      PrefetchHooks Function({bool finnancesExpenseTableRefs})
    >;
typedef $$BooksNacionalityTableTableCreateCompanionBuilder =
    BooksNacionalityTableCompanion Function({
      required String id,
      required String description,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$BooksNacionalityTableTableUpdateCompanionBuilder =
    BooksNacionalityTableCompanion Function({
      Value<String> id,
      Value<String> description,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$BooksNacionalityTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $BooksNacionalityTableTable,
          BooksNacionalityTableData
        > {
  $$BooksNacionalityTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$BooksAuthorTableTable, List<BooksAuthorTableData>>
  _booksAuthorTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.booksAuthorTable,
    aliasName: $_aliasNameGenerator(
      db.booksNacionalityTable.id,
      db.booksAuthorTable.nacionality,
    ),
  );

  $$BooksAuthorTableTableProcessedTableManager get booksAuthorTableRefs {
    final manager = $$BooksAuthorTableTableTableManager(
      $_db,
      $_db.booksAuthorTable,
    ).filter((f) => f.nacionality.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _booksAuthorTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $BooksPublishersTableTable,
    List<BooksPublishersTableData>
  >
  _booksPublishersTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.booksPublishersTable,
        aliasName: $_aliasNameGenerator(
          db.booksNacionalityTable.id,
          db.booksPublishersTable.nacionalityId,
        ),
      );

  $$BooksPublishersTableTableProcessedTableManager
  get booksPublishersTableRefs {
    final manager = $$BooksPublishersTableTableTableManager(
      $_db,
      $_db.booksPublishersTable,
    ).filter((f) => f.nacionalityId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _booksPublishersTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $CompletedReadTableTable,
    List<CompletedReadTableData>
  >
  _completedReadTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.completedReadTable,
        aliasName: $_aliasNameGenerator(
          db.booksNacionalityTable.id,
          db.completedReadTable.nacionalityId,
        ),
      );

  $$CompletedReadTableTableProcessedTableManager get completedReadTableRefs {
    final manager = $$CompletedReadTableTableTableManager(
      $_db,
      $_db.completedReadTable,
    ).filter((f) => f.nacionalityId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _completedReadTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$BooksNacionalityTableTableFilterComposer
    extends Composer<_$AppDatabase, $BooksNacionalityTableTable> {
  $$BooksNacionalityTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> booksAuthorTableRefs(
    Expression<bool> Function($$BooksAuthorTableTableFilterComposer f) f,
  ) {
    final $$BooksAuthorTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.booksAuthorTable,
      getReferencedColumn: (t) => t.nacionality,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BooksAuthorTableTableFilterComposer(
            $db: $db,
            $table: $db.booksAuthorTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> booksPublishersTableRefs(
    Expression<bool> Function($$BooksPublishersTableTableFilterComposer f) f,
  ) {
    final $$BooksPublishersTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.booksPublishersTable,
      getReferencedColumn: (t) => t.nacionalityId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BooksPublishersTableTableFilterComposer(
            $db: $db,
            $table: $db.booksPublishersTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> completedReadTableRefs(
    Expression<bool> Function($$CompletedReadTableTableFilterComposer f) f,
  ) {
    final $$CompletedReadTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.completedReadTable,
      getReferencedColumn: (t) => t.nacionalityId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CompletedReadTableTableFilterComposer(
            $db: $db,
            $table: $db.completedReadTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BooksNacionalityTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BooksNacionalityTableTable> {
  $$BooksNacionalityTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BooksNacionalityTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BooksNacionalityTableTable> {
  $$BooksNacionalityTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> booksAuthorTableRefs<T extends Object>(
    Expression<T> Function($$BooksAuthorTableTableAnnotationComposer a) f,
  ) {
    final $$BooksAuthorTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.booksAuthorTable,
      getReferencedColumn: (t) => t.nacionality,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BooksAuthorTableTableAnnotationComposer(
            $db: $db,
            $table: $db.booksAuthorTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> booksPublishersTableRefs<T extends Object>(
    Expression<T> Function($$BooksPublishersTableTableAnnotationComposer a) f,
  ) {
    final $$BooksPublishersTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.booksPublishersTable,
          getReferencedColumn: (t) => t.nacionalityId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksPublishersTableTableAnnotationComposer(
                $db: $db,
                $table: $db.booksPublishersTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> completedReadTableRefs<T extends Object>(
    Expression<T> Function($$CompletedReadTableTableAnnotationComposer a) f,
  ) {
    final $$CompletedReadTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.completedReadTable,
          getReferencedColumn: (t) => t.nacionalityId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$CompletedReadTableTableAnnotationComposer(
                $db: $db,
                $table: $db.completedReadTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$BooksNacionalityTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BooksNacionalityTableTable,
          BooksNacionalityTableData,
          $$BooksNacionalityTableTableFilterComposer,
          $$BooksNacionalityTableTableOrderingComposer,
          $$BooksNacionalityTableTableAnnotationComposer,
          $$BooksNacionalityTableTableCreateCompanionBuilder,
          $$BooksNacionalityTableTableUpdateCompanionBuilder,
          (BooksNacionalityTableData, $$BooksNacionalityTableTableReferences),
          BooksNacionalityTableData,
          PrefetchHooks Function({
            bool booksAuthorTableRefs,
            bool booksPublishersTableRefs,
            bool completedReadTableRefs,
          })
        > {
  $$BooksNacionalityTableTableTableManager(
    _$AppDatabase db,
    $BooksNacionalityTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BooksNacionalityTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$BooksNacionalityTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$BooksNacionalityTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksNacionalityTableCompanion(
                id: id,
                description: description,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String description,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksNacionalityTableCompanion.insert(
                id: id,
                description: description,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$BooksNacionalityTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                booksAuthorTableRefs = false,
                booksPublishersTableRefs = false,
                completedReadTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (booksAuthorTableRefs) db.booksAuthorTable,
                    if (booksPublishersTableRefs) db.booksPublishersTable,
                    if (completedReadTableRefs) db.completedReadTable,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (booksAuthorTableRefs)
                        await $_getPrefetchedData<
                          BooksNacionalityTableData,
                          $BooksNacionalityTableTable,
                          BooksAuthorTableData
                        >(
                          currentTable: table,
                          referencedTable:
                              $$BooksNacionalityTableTableReferences
                                  ._booksAuthorTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$BooksNacionalityTableTableReferences(
                                db,
                                table,
                                p0,
                              ).booksAuthorTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.nacionality == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (booksPublishersTableRefs)
                        await $_getPrefetchedData<
                          BooksNacionalityTableData,
                          $BooksNacionalityTableTable,
                          BooksPublishersTableData
                        >(
                          currentTable: table,
                          referencedTable:
                              $$BooksNacionalityTableTableReferences
                                  ._booksPublishersTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$BooksNacionalityTableTableReferences(
                                db,
                                table,
                                p0,
                              ).booksPublishersTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.nacionalityId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (completedReadTableRefs)
                        await $_getPrefetchedData<
                          BooksNacionalityTableData,
                          $BooksNacionalityTableTable,
                          CompletedReadTableData
                        >(
                          currentTable: table,
                          referencedTable:
                              $$BooksNacionalityTableTableReferences
                                  ._completedReadTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$BooksNacionalityTableTableReferences(
                                db,
                                table,
                                p0,
                              ).completedReadTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.nacionalityId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$BooksNacionalityTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BooksNacionalityTableTable,
      BooksNacionalityTableData,
      $$BooksNacionalityTableTableFilterComposer,
      $$BooksNacionalityTableTableOrderingComposer,
      $$BooksNacionalityTableTableAnnotationComposer,
      $$BooksNacionalityTableTableCreateCompanionBuilder,
      $$BooksNacionalityTableTableUpdateCompanionBuilder,
      (BooksNacionalityTableData, $$BooksNacionalityTableTableReferences),
      BooksNacionalityTableData,
      PrefetchHooks Function({
        bool booksAuthorTableRefs,
        bool booksPublishersTableRefs,
        bool completedReadTableRefs,
      })
    >;
typedef $$BooksAuthorTableTableCreateCompanionBuilder =
    BooksAuthorTableCompanion Function({
      required String id,
      required String fullName,
      Value<String?> gender,
      Value<String?> nacionality,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$BooksAuthorTableTableUpdateCompanionBuilder =
    BooksAuthorTableCompanion Function({
      Value<String> id,
      Value<String> fullName,
      Value<String?> gender,
      Value<String?> nacionality,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$BooksAuthorTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $BooksAuthorTableTable,
          BooksAuthorTableData
        > {
  $$BooksAuthorTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $BooksNacionalityTableTable _nacionalityTable(_$AppDatabase db) =>
      db.booksNacionalityTable.createAlias(
        $_aliasNameGenerator(
          db.booksAuthorTable.nacionality,
          db.booksNacionalityTable.id,
        ),
      );

  $$BooksNacionalityTableTableProcessedTableManager? get nacionality {
    final $_column = $_itemColumn<String>('nacionality');
    if ($_column == null) return null;
    final manager = $$BooksNacionalityTableTableTableManager(
      $_db,
      $_db.booksNacionalityTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_nacionalityTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$BooksAuthorTableTableFilterComposer
    extends Composer<_$AppDatabase, $BooksAuthorTableTable> {
  $$BooksAuthorTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$BooksNacionalityTableTableFilterComposer get nacionality {
    final $$BooksNacionalityTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.nacionality,
          referencedTable: $db.booksNacionalityTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksNacionalityTableTableFilterComposer(
                $db: $db,
                $table: $db.booksNacionalityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$BooksAuthorTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BooksAuthorTableTable> {
  $$BooksAuthorTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$BooksNacionalityTableTableOrderingComposer get nacionality {
    final $$BooksNacionalityTableTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.nacionality,
          referencedTable: $db.booksNacionalityTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksNacionalityTableTableOrderingComposer(
                $db: $db,
                $table: $db.booksNacionalityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$BooksAuthorTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BooksAuthorTableTable> {
  $$BooksAuthorTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$BooksNacionalityTableTableAnnotationComposer get nacionality {
    final $$BooksNacionalityTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.nacionality,
          referencedTable: $db.booksNacionalityTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksNacionalityTableTableAnnotationComposer(
                $db: $db,
                $table: $db.booksNacionalityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$BooksAuthorTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BooksAuthorTableTable,
          BooksAuthorTableData,
          $$BooksAuthorTableTableFilterComposer,
          $$BooksAuthorTableTableOrderingComposer,
          $$BooksAuthorTableTableAnnotationComposer,
          $$BooksAuthorTableTableCreateCompanionBuilder,
          $$BooksAuthorTableTableUpdateCompanionBuilder,
          (BooksAuthorTableData, $$BooksAuthorTableTableReferences),
          BooksAuthorTableData,
          PrefetchHooks Function({bool nacionality})
        > {
  $$BooksAuthorTableTableTableManager(
    _$AppDatabase db,
    $BooksAuthorTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BooksAuthorTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BooksAuthorTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BooksAuthorTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> fullName = const Value.absent(),
                Value<String?> gender = const Value.absent(),
                Value<String?> nacionality = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksAuthorTableCompanion(
                id: id,
                fullName: fullName,
                gender: gender,
                nacionality: nacionality,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String fullName,
                Value<String?> gender = const Value.absent(),
                Value<String?> nacionality = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksAuthorTableCompanion.insert(
                id: id,
                fullName: fullName,
                gender: gender,
                nacionality: nacionality,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$BooksAuthorTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({nacionality = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (nacionality) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.nacionality,
                                referencedTable:
                                    $$BooksAuthorTableTableReferences
                                        ._nacionalityTable(db),
                                referencedColumn:
                                    $$BooksAuthorTableTableReferences
                                        ._nacionalityTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$BooksAuthorTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BooksAuthorTableTable,
      BooksAuthorTableData,
      $$BooksAuthorTableTableFilterComposer,
      $$BooksAuthorTableTableOrderingComposer,
      $$BooksAuthorTableTableAnnotationComposer,
      $$BooksAuthorTableTableCreateCompanionBuilder,
      $$BooksAuthorTableTableUpdateCompanionBuilder,
      (BooksAuthorTableData, $$BooksAuthorTableTableReferences),
      BooksAuthorTableData,
      PrefetchHooks Function({bool nacionality})
    >;
typedef $$BooksGenderTableTableCreateCompanionBuilder =
    BooksGenderTableCompanion Function({
      required String id,
      required String description,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$BooksGenderTableTableUpdateCompanionBuilder =
    BooksGenderTableCompanion Function({
      Value<String> id,
      Value<String> description,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$BooksGenderTableTableFilterComposer
    extends Composer<_$AppDatabase, $BooksGenderTableTable> {
  $$BooksGenderTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BooksGenderTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BooksGenderTableTable> {
  $$BooksGenderTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BooksGenderTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BooksGenderTableTable> {
  $$BooksGenderTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$BooksGenderTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BooksGenderTableTable,
          BooksGenderTableData,
          $$BooksGenderTableTableFilterComposer,
          $$BooksGenderTableTableOrderingComposer,
          $$BooksGenderTableTableAnnotationComposer,
          $$BooksGenderTableTableCreateCompanionBuilder,
          $$BooksGenderTableTableUpdateCompanionBuilder,
          (
            BooksGenderTableData,
            BaseReferences<
              _$AppDatabase,
              $BooksGenderTableTable,
              BooksGenderTableData
            >,
          ),
          BooksGenderTableData,
          PrefetchHooks Function()
        > {
  $$BooksGenderTableTableTableManager(
    _$AppDatabase db,
    $BooksGenderTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BooksGenderTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BooksGenderTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BooksGenderTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksGenderTableCompanion(
                id: id,
                description: description,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String description,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksGenderTableCompanion.insert(
                id: id,
                description: description,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BooksGenderTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BooksGenderTableTable,
      BooksGenderTableData,
      $$BooksGenderTableTableFilterComposer,
      $$BooksGenderTableTableOrderingComposer,
      $$BooksGenderTableTableAnnotationComposer,
      $$BooksGenderTableTableCreateCompanionBuilder,
      $$BooksGenderTableTableUpdateCompanionBuilder,
      (
        BooksGenderTableData,
        BaseReferences<
          _$AppDatabase,
          $BooksGenderTableTable,
          BooksGenderTableData
        >,
      ),
      BooksGenderTableData,
      PrefetchHooks Function()
    >;
typedef $$BooksPublishersTableTableCreateCompanionBuilder =
    BooksPublishersTableCompanion Function({
      required String id,
      required String name,
      Value<String?> nacionalityId,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$BooksPublishersTableTableUpdateCompanionBuilder =
    BooksPublishersTableCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> nacionalityId,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$BooksPublishersTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $BooksPublishersTableTable,
          BooksPublishersTableData
        > {
  $$BooksPublishersTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $BooksNacionalityTableTable _nacionalityIdTable(_$AppDatabase db) =>
      db.booksNacionalityTable.createAlias(
        $_aliasNameGenerator(
          db.booksPublishersTable.nacionalityId,
          db.booksNacionalityTable.id,
        ),
      );

  $$BooksNacionalityTableTableProcessedTableManager? get nacionalityId {
    final $_column = $_itemColumn<String>('nacionality_id');
    if ($_column == null) return null;
    final manager = $$BooksNacionalityTableTableTableManager(
      $_db,
      $_db.booksNacionalityTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_nacionalityIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $CompletedReadTableTable,
    List<CompletedReadTableData>
  >
  _completedReadTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.completedReadTable,
        aliasName: $_aliasNameGenerator(
          db.booksPublishersTable.id,
          db.completedReadTable.publisherId,
        ),
      );

  $$CompletedReadTableTableProcessedTableManager get completedReadTableRefs {
    final manager = $$CompletedReadTableTableTableManager(
      $_db,
      $_db.completedReadTable,
    ).filter((f) => f.publisherId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _completedReadTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$BooksPublishersTableTableFilterComposer
    extends Composer<_$AppDatabase, $BooksPublishersTableTable> {
  $$BooksPublishersTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$BooksNacionalityTableTableFilterComposer get nacionalityId {
    final $$BooksNacionalityTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.nacionalityId,
          referencedTable: $db.booksNacionalityTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksNacionalityTableTableFilterComposer(
                $db: $db,
                $table: $db.booksNacionalityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  Expression<bool> completedReadTableRefs(
    Expression<bool> Function($$CompletedReadTableTableFilterComposer f) f,
  ) {
    final $$CompletedReadTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.completedReadTable,
      getReferencedColumn: (t) => t.publisherId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CompletedReadTableTableFilterComposer(
            $db: $db,
            $table: $db.completedReadTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BooksPublishersTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BooksPublishersTableTable> {
  $$BooksPublishersTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$BooksNacionalityTableTableOrderingComposer get nacionalityId {
    final $$BooksNacionalityTableTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.nacionalityId,
          referencedTable: $db.booksNacionalityTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksNacionalityTableTableOrderingComposer(
                $db: $db,
                $table: $db.booksNacionalityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$BooksPublishersTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BooksPublishersTableTable> {
  $$BooksPublishersTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$BooksNacionalityTableTableAnnotationComposer get nacionalityId {
    final $$BooksNacionalityTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.nacionalityId,
          referencedTable: $db.booksNacionalityTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksNacionalityTableTableAnnotationComposer(
                $db: $db,
                $table: $db.booksNacionalityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  Expression<T> completedReadTableRefs<T extends Object>(
    Expression<T> Function($$CompletedReadTableTableAnnotationComposer a) f,
  ) {
    final $$CompletedReadTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.completedReadTable,
          getReferencedColumn: (t) => t.publisherId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$CompletedReadTableTableAnnotationComposer(
                $db: $db,
                $table: $db.completedReadTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$BooksPublishersTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BooksPublishersTableTable,
          BooksPublishersTableData,
          $$BooksPublishersTableTableFilterComposer,
          $$BooksPublishersTableTableOrderingComposer,
          $$BooksPublishersTableTableAnnotationComposer,
          $$BooksPublishersTableTableCreateCompanionBuilder,
          $$BooksPublishersTableTableUpdateCompanionBuilder,
          (BooksPublishersTableData, $$BooksPublishersTableTableReferences),
          BooksPublishersTableData,
          PrefetchHooks Function({
            bool nacionalityId,
            bool completedReadTableRefs,
          })
        > {
  $$BooksPublishersTableTableTableManager(
    _$AppDatabase db,
    $BooksPublishersTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BooksPublishersTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BooksPublishersTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$BooksPublishersTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> nacionalityId = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksPublishersTableCompanion(
                id: id,
                name: name,
                nacionalityId: nacionalityId,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> nacionalityId = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksPublishersTableCompanion.insert(
                id: id,
                name: name,
                nacionalityId: nacionalityId,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$BooksPublishersTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({nacionalityId = false, completedReadTableRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (completedReadTableRefs) db.completedReadTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (nacionalityId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.nacionalityId,
                                    referencedTable:
                                        $$BooksPublishersTableTableReferences
                                            ._nacionalityIdTable(db),
                                    referencedColumn:
                                        $$BooksPublishersTableTableReferences
                                            ._nacionalityIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (completedReadTableRefs)
                        await $_getPrefetchedData<
                          BooksPublishersTableData,
                          $BooksPublishersTableTable,
                          CompletedReadTableData
                        >(
                          currentTable: table,
                          referencedTable: $$BooksPublishersTableTableReferences
                              ._completedReadTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$BooksPublishersTableTableReferences(
                                db,
                                table,
                                p0,
                              ).completedReadTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.publisherId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$BooksPublishersTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BooksPublishersTableTable,
      BooksPublishersTableData,
      $$BooksPublishersTableTableFilterComposer,
      $$BooksPublishersTableTableOrderingComposer,
      $$BooksPublishersTableTableAnnotationComposer,
      $$BooksPublishersTableTableCreateCompanionBuilder,
      $$BooksPublishersTableTableUpdateCompanionBuilder,
      (BooksPublishersTableData, $$BooksPublishersTableTableReferences),
      BooksPublishersTableData,
      PrefetchHooks Function({bool nacionalityId, bool completedReadTableRefs})
    >;
typedef $$CompletedReadTableTableCreateCompanionBuilder =
    CompletedReadTableCompanion Function({
      required String id,
      required String bookName,
      required String yearOfReading,
      Value<String?> nacionalityId,
      Value<String?> publisherId,
      required int totalNumberOfReads,
      required int totalPages,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$CompletedReadTableTableUpdateCompanionBuilder =
    CompletedReadTableCompanion Function({
      Value<String> id,
      Value<String> bookName,
      Value<String> yearOfReading,
      Value<String?> nacionalityId,
      Value<String?> publisherId,
      Value<int> totalNumberOfReads,
      Value<int> totalPages,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$CompletedReadTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $CompletedReadTableTable,
          CompletedReadTableData
        > {
  $$CompletedReadTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $BooksNacionalityTableTable _nacionalityIdTable(_$AppDatabase db) =>
      db.booksNacionalityTable.createAlias(
        $_aliasNameGenerator(
          db.completedReadTable.nacionalityId,
          db.booksNacionalityTable.id,
        ),
      );

  $$BooksNacionalityTableTableProcessedTableManager? get nacionalityId {
    final $_column = $_itemColumn<String>('nacionality_id');
    if ($_column == null) return null;
    final manager = $$BooksNacionalityTableTableTableManager(
      $_db,
      $_db.booksNacionalityTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_nacionalityIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $BooksPublishersTableTable _publisherIdTable(_$AppDatabase db) =>
      db.booksPublishersTable.createAlias(
        $_aliasNameGenerator(
          db.completedReadTable.publisherId,
          db.booksPublishersTable.id,
        ),
      );

  $$BooksPublishersTableTableProcessedTableManager? get publisherId {
    final $_column = $_itemColumn<String>('publisher_id');
    if ($_column == null) return null;
    final manager = $$BooksPublishersTableTableTableManager(
      $_db,
      $_db.booksPublishersTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_publisherIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $CompletedReadGenderTableTable,
    List<CompletedReadGenderTableData>
  >
  _completedReadGenderTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.completedReadGenderTable,
        aliasName: $_aliasNameGenerator(
          db.completedReadTable.id,
          db.completedReadGenderTable.bookId,
        ),
      );

  $$CompletedReadGenderTableTableProcessedTableManager
  get completedReadGenderTableRefs {
    final manager = $$CompletedReadGenderTableTableTableManager(
      $_db,
      $_db.completedReadGenderTable,
    ).filter((f) => f.bookId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _completedReadGenderTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $CompletedReadAuthorTableTable,
    List<CompletedReadAuthorTableData>
  >
  _completedReadAuthorTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.completedReadAuthorTable,
        aliasName: $_aliasNameGenerator(
          db.completedReadTable.id,
          db.completedReadAuthorTable.bookId,
        ),
      );

  $$CompletedReadAuthorTableTableProcessedTableManager
  get completedReadAuthorTableRefs {
    final manager = $$CompletedReadAuthorTableTableTableManager(
      $_db,
      $_db.completedReadAuthorTable,
    ).filter((f) => f.bookId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _completedReadAuthorTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CompletedReadTableTableFilterComposer
    extends Composer<_$AppDatabase, $CompletedReadTableTable> {
  $$CompletedReadTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get yearOfReading => $composableBuilder(
    column: $table.yearOfReading,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalNumberOfReads => $composableBuilder(
    column: $table.totalNumberOfReads,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalPages => $composableBuilder(
    column: $table.totalPages,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$BooksNacionalityTableTableFilterComposer get nacionalityId {
    final $$BooksNacionalityTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.nacionalityId,
          referencedTable: $db.booksNacionalityTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksNacionalityTableTableFilterComposer(
                $db: $db,
                $table: $db.booksNacionalityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$BooksPublishersTableTableFilterComposer get publisherId {
    final $$BooksPublishersTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.publisherId,
      referencedTable: $db.booksPublishersTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BooksPublishersTableTableFilterComposer(
            $db: $db,
            $table: $db.booksPublishersTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> completedReadGenderTableRefs(
    Expression<bool> Function($$CompletedReadGenderTableTableFilterComposer f)
    f,
  ) {
    final $$CompletedReadGenderTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.completedReadGenderTable,
          getReferencedColumn: (t) => t.bookId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$CompletedReadGenderTableTableFilterComposer(
                $db: $db,
                $table: $db.completedReadGenderTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<bool> completedReadAuthorTableRefs(
    Expression<bool> Function($$CompletedReadAuthorTableTableFilterComposer f)
    f,
  ) {
    final $$CompletedReadAuthorTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.completedReadAuthorTable,
          getReferencedColumn: (t) => t.bookId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$CompletedReadAuthorTableTableFilterComposer(
                $db: $db,
                $table: $db.completedReadAuthorTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$CompletedReadTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CompletedReadTableTable> {
  $$CompletedReadTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get yearOfReading => $composableBuilder(
    column: $table.yearOfReading,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalNumberOfReads => $composableBuilder(
    column: $table.totalNumberOfReads,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalPages => $composableBuilder(
    column: $table.totalPages,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$BooksNacionalityTableTableOrderingComposer get nacionalityId {
    final $$BooksNacionalityTableTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.nacionalityId,
          referencedTable: $db.booksNacionalityTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksNacionalityTableTableOrderingComposer(
                $db: $db,
                $table: $db.booksNacionalityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$BooksPublishersTableTableOrderingComposer get publisherId {
    final $$BooksPublishersTableTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.publisherId,
          referencedTable: $db.booksPublishersTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksPublishersTableTableOrderingComposer(
                $db: $db,
                $table: $db.booksPublishersTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$CompletedReadTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CompletedReadTableTable> {
  $$CompletedReadTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get bookName =>
      $composableBuilder(column: $table.bookName, builder: (column) => column);

  GeneratedColumn<String> get yearOfReading => $composableBuilder(
    column: $table.yearOfReading,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalNumberOfReads => $composableBuilder(
    column: $table.totalNumberOfReads,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalPages => $composableBuilder(
    column: $table.totalPages,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$BooksNacionalityTableTableAnnotationComposer get nacionalityId {
    final $$BooksNacionalityTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.nacionalityId,
          referencedTable: $db.booksNacionalityTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksNacionalityTableTableAnnotationComposer(
                $db: $db,
                $table: $db.booksNacionalityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$BooksPublishersTableTableAnnotationComposer get publisherId {
    final $$BooksPublishersTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.publisherId,
          referencedTable: $db.booksPublishersTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$BooksPublishersTableTableAnnotationComposer(
                $db: $db,
                $table: $db.booksPublishersTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  Expression<T> completedReadGenderTableRefs<T extends Object>(
    Expression<T> Function($$CompletedReadGenderTableTableAnnotationComposer a)
    f,
  ) {
    final $$CompletedReadGenderTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.completedReadGenderTable,
          getReferencedColumn: (t) => t.bookId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$CompletedReadGenderTableTableAnnotationComposer(
                $db: $db,
                $table: $db.completedReadGenderTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> completedReadAuthorTableRefs<T extends Object>(
    Expression<T> Function($$CompletedReadAuthorTableTableAnnotationComposer a)
    f,
  ) {
    final $$CompletedReadAuthorTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.completedReadAuthorTable,
          getReferencedColumn: (t) => t.bookId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$CompletedReadAuthorTableTableAnnotationComposer(
                $db: $db,
                $table: $db.completedReadAuthorTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$CompletedReadTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CompletedReadTableTable,
          CompletedReadTableData,
          $$CompletedReadTableTableFilterComposer,
          $$CompletedReadTableTableOrderingComposer,
          $$CompletedReadTableTableAnnotationComposer,
          $$CompletedReadTableTableCreateCompanionBuilder,
          $$CompletedReadTableTableUpdateCompanionBuilder,
          (CompletedReadTableData, $$CompletedReadTableTableReferences),
          CompletedReadTableData,
          PrefetchHooks Function({
            bool nacionalityId,
            bool publisherId,
            bool completedReadGenderTableRefs,
            bool completedReadAuthorTableRefs,
          })
        > {
  $$CompletedReadTableTableTableManager(
    _$AppDatabase db,
    $CompletedReadTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CompletedReadTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CompletedReadTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CompletedReadTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> bookName = const Value.absent(),
                Value<String> yearOfReading = const Value.absent(),
                Value<String?> nacionalityId = const Value.absent(),
                Value<String?> publisherId = const Value.absent(),
                Value<int> totalNumberOfReads = const Value.absent(),
                Value<int> totalPages = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CompletedReadTableCompanion(
                id: id,
                bookName: bookName,
                yearOfReading: yearOfReading,
                nacionalityId: nacionalityId,
                publisherId: publisherId,
                totalNumberOfReads: totalNumberOfReads,
                totalPages: totalPages,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String bookName,
                required String yearOfReading,
                Value<String?> nacionalityId = const Value.absent(),
                Value<String?> publisherId = const Value.absent(),
                required int totalNumberOfReads,
                required int totalPages,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CompletedReadTableCompanion.insert(
                id: id,
                bookName: bookName,
                yearOfReading: yearOfReading,
                nacionalityId: nacionalityId,
                publisherId: publisherId,
                totalNumberOfReads: totalNumberOfReads,
                totalPages: totalPages,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CompletedReadTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                nacionalityId = false,
                publisherId = false,
                completedReadGenderTableRefs = false,
                completedReadAuthorTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (completedReadGenderTableRefs)
                      db.completedReadGenderTable,
                    if (completedReadAuthorTableRefs)
                      db.completedReadAuthorTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (nacionalityId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.nacionalityId,
                                    referencedTable:
                                        $$CompletedReadTableTableReferences
                                            ._nacionalityIdTable(db),
                                    referencedColumn:
                                        $$CompletedReadTableTableReferences
                                            ._nacionalityIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (publisherId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.publisherId,
                                    referencedTable:
                                        $$CompletedReadTableTableReferences
                                            ._publisherIdTable(db),
                                    referencedColumn:
                                        $$CompletedReadTableTableReferences
                                            ._publisherIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (completedReadGenderTableRefs)
                        await $_getPrefetchedData<
                          CompletedReadTableData,
                          $CompletedReadTableTable,
                          CompletedReadGenderTableData
                        >(
                          currentTable: table,
                          referencedTable: $$CompletedReadTableTableReferences
                              ._completedReadGenderTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CompletedReadTableTableReferences(
                                db,
                                table,
                                p0,
                              ).completedReadGenderTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.bookId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (completedReadAuthorTableRefs)
                        await $_getPrefetchedData<
                          CompletedReadTableData,
                          $CompletedReadTableTable,
                          CompletedReadAuthorTableData
                        >(
                          currentTable: table,
                          referencedTable: $$CompletedReadTableTableReferences
                              ._completedReadAuthorTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CompletedReadTableTableReferences(
                                db,
                                table,
                                p0,
                              ).completedReadAuthorTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.bookId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$CompletedReadTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CompletedReadTableTable,
      CompletedReadTableData,
      $$CompletedReadTableTableFilterComposer,
      $$CompletedReadTableTableOrderingComposer,
      $$CompletedReadTableTableAnnotationComposer,
      $$CompletedReadTableTableCreateCompanionBuilder,
      $$CompletedReadTableTableUpdateCompanionBuilder,
      (CompletedReadTableData, $$CompletedReadTableTableReferences),
      CompletedReadTableData,
      PrefetchHooks Function({
        bool nacionalityId,
        bool publisherId,
        bool completedReadGenderTableRefs,
        bool completedReadAuthorTableRefs,
      })
    >;
typedef $$FinnancesExpenseTableTableCreateCompanionBuilder =
    FinnancesExpenseTableCompanion Function({
      required String id,
      required String finnacesId,
      required String tag,
      required String description,
      required String value,
      required bool isCashInflow,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$FinnancesExpenseTableTableUpdateCompanionBuilder =
    FinnancesExpenseTableCompanion Function({
      Value<String> id,
      Value<String> finnacesId,
      Value<String> tag,
      Value<String> description,
      Value<String> value,
      Value<bool> isCashInflow,
      Value<DateTime?> deletedAt,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$FinnancesExpenseTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $FinnancesExpenseTableTable,
          FinnancesExpenseTableData
        > {
  $$FinnancesExpenseTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $FinnacesHeaderTableTable _finnacesIdTable(_$AppDatabase db) =>
      db.finnacesHeaderTable.createAlias(
        $_aliasNameGenerator(
          db.finnancesExpenseTable.finnacesId,
          db.finnacesHeaderTable.id,
        ),
      );

  $$FinnacesHeaderTableTableProcessedTableManager get finnacesId {
    final $_column = $_itemColumn<String>('finnaces_id')!;

    final manager = $$FinnacesHeaderTableTableTableManager(
      $_db,
      $_db.finnacesHeaderTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_finnacesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FinnancesExpenseTableTableFilterComposer
    extends Composer<_$AppDatabase, $FinnancesExpenseTableTable> {
  $$FinnancesExpenseTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tag => $composableBuilder(
    column: $table.tag,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCashInflow => $composableBuilder(
    column: $table.isCashInflow,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$FinnacesHeaderTableTableFilterComposer get finnacesId {
    final $$FinnacesHeaderTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.finnacesId,
      referencedTable: $db.finnacesHeaderTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FinnacesHeaderTableTableFilterComposer(
            $db: $db,
            $table: $db.finnacesHeaderTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FinnancesExpenseTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FinnancesExpenseTableTable> {
  $$FinnancesExpenseTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tag => $composableBuilder(
    column: $table.tag,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCashInflow => $composableBuilder(
    column: $table.isCashInflow,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$FinnacesHeaderTableTableOrderingComposer get finnacesId {
    final $$FinnacesHeaderTableTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.finnacesId,
          referencedTable: $db.finnacesHeaderTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$FinnacesHeaderTableTableOrderingComposer(
                $db: $db,
                $table: $db.finnacesHeaderTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$FinnancesExpenseTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FinnancesExpenseTableTable> {
  $$FinnancesExpenseTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get tag =>
      $composableBuilder(column: $table.tag, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<bool> get isCashInflow => $composableBuilder(
    column: $table.isCashInflow,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$FinnacesHeaderTableTableAnnotationComposer get finnacesId {
    final $$FinnacesHeaderTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.finnacesId,
          referencedTable: $db.finnacesHeaderTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$FinnacesHeaderTableTableAnnotationComposer(
                $db: $db,
                $table: $db.finnacesHeaderTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$FinnancesExpenseTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FinnancesExpenseTableTable,
          FinnancesExpenseTableData,
          $$FinnancesExpenseTableTableFilterComposer,
          $$FinnancesExpenseTableTableOrderingComposer,
          $$FinnancesExpenseTableTableAnnotationComposer,
          $$FinnancesExpenseTableTableCreateCompanionBuilder,
          $$FinnancesExpenseTableTableUpdateCompanionBuilder,
          (FinnancesExpenseTableData, $$FinnancesExpenseTableTableReferences),
          FinnancesExpenseTableData,
          PrefetchHooks Function({bool finnacesId})
        > {
  $$FinnancesExpenseTableTableTableManager(
    _$AppDatabase db,
    $FinnancesExpenseTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FinnancesExpenseTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$FinnancesExpenseTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$FinnancesExpenseTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> finnacesId = const Value.absent(),
                Value<String> tag = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<bool> isCashInflow = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FinnancesExpenseTableCompanion(
                id: id,
                finnacesId: finnacesId,
                tag: tag,
                description: description,
                value: value,
                isCashInflow: isCashInflow,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String finnacesId,
                required String tag,
                required String description,
                required String value,
                required bool isCashInflow,
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FinnancesExpenseTableCompanion.insert(
                id: id,
                finnacesId: finnacesId,
                tag: tag,
                description: description,
                value: value,
                isCashInflow: isCashInflow,
                deletedAt: deletedAt,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FinnancesExpenseTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({finnacesId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (finnacesId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.finnacesId,
                                referencedTable:
                                    $$FinnancesExpenseTableTableReferences
                                        ._finnacesIdTable(db),
                                referencedColumn:
                                    $$FinnancesExpenseTableTableReferences
                                        ._finnacesIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FinnancesExpenseTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FinnancesExpenseTableTable,
      FinnancesExpenseTableData,
      $$FinnancesExpenseTableTableFilterComposer,
      $$FinnancesExpenseTableTableOrderingComposer,
      $$FinnancesExpenseTableTableAnnotationComposer,
      $$FinnancesExpenseTableTableCreateCompanionBuilder,
      $$FinnancesExpenseTableTableUpdateCompanionBuilder,
      (FinnancesExpenseTableData, $$FinnancesExpenseTableTableReferences),
      FinnancesExpenseTableData,
      PrefetchHooks Function({bool finnacesId})
    >;
typedef $$MenstrualCyclePredictionTableCreateCompanionBuilder =
    MenstrualCyclePredictionCompanion Function({
      required String id,
      required DateTime startDate,
      Value<DateTime?> endDate,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$MenstrualCyclePredictionTableUpdateCompanionBuilder =
    MenstrualCyclePredictionCompanion Function({
      Value<String> id,
      Value<DateTime> startDate,
      Value<DateTime?> endDate,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

class $$MenstrualCyclePredictionTableFilterComposer
    extends Composer<_$AppDatabase, $MenstrualCyclePredictionTable> {
  $$MenstrualCyclePredictionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MenstrualCyclePredictionTableOrderingComposer
    extends Composer<_$AppDatabase, $MenstrualCyclePredictionTable> {
  $$MenstrualCyclePredictionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MenstrualCyclePredictionTableAnnotationComposer
    extends Composer<_$AppDatabase, $MenstrualCyclePredictionTable> {
  $$MenstrualCyclePredictionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$MenstrualCyclePredictionTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MenstrualCyclePredictionTable,
          MenstrualCyclePredictionData,
          $$MenstrualCyclePredictionTableFilterComposer,
          $$MenstrualCyclePredictionTableOrderingComposer,
          $$MenstrualCyclePredictionTableAnnotationComposer,
          $$MenstrualCyclePredictionTableCreateCompanionBuilder,
          $$MenstrualCyclePredictionTableUpdateCompanionBuilder,
          (
            MenstrualCyclePredictionData,
            BaseReferences<
              _$AppDatabase,
              $MenstrualCyclePredictionTable,
              MenstrualCyclePredictionData
            >,
          ),
          MenstrualCyclePredictionData,
          PrefetchHooks Function()
        > {
  $$MenstrualCyclePredictionTableTableManager(
    _$AppDatabase db,
    $MenstrualCyclePredictionTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MenstrualCyclePredictionTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$MenstrualCyclePredictionTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$MenstrualCyclePredictionTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> startDate = const Value.absent(),
                Value<DateTime?> endDate = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MenstrualCyclePredictionCompanion(
                id: id,
                startDate: startDate,
                endDate: endDate,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime startDate,
                Value<DateTime?> endDate = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MenstrualCyclePredictionCompanion.insert(
                id: id,
                startDate: startDate,
                endDate: endDate,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MenstrualCyclePredictionTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MenstrualCyclePredictionTable,
      MenstrualCyclePredictionData,
      $$MenstrualCyclePredictionTableFilterComposer,
      $$MenstrualCyclePredictionTableOrderingComposer,
      $$MenstrualCyclePredictionTableAnnotationComposer,
      $$MenstrualCyclePredictionTableCreateCompanionBuilder,
      $$MenstrualCyclePredictionTableUpdateCompanionBuilder,
      (
        MenstrualCyclePredictionData,
        BaseReferences<
          _$AppDatabase,
          $MenstrualCyclePredictionTable,
          MenstrualCyclePredictionData
        >,
      ),
      MenstrualCyclePredictionData,
      PrefetchHooks Function()
    >;
typedef $$MenstrualCycleTrackingTableTableCreateCompanionBuilder =
    MenstrualCycleTrackingTableCompanion Function({
      required String id,
      required DateTime startDate,
      Value<DateTime?> endDate,
      Value<int?> daysDuration,
      Value<bool> predictve,
      Value<DateTime> createdAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$MenstrualCycleTrackingTableTableUpdateCompanionBuilder =
    MenstrualCycleTrackingTableCompanion Function({
      Value<String> id,
      Value<DateTime> startDate,
      Value<DateTime?> endDate,
      Value<int?> daysDuration,
      Value<bool> predictve,
      Value<DateTime> createdAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

class $$MenstrualCycleTrackingTableTableFilterComposer
    extends Composer<_$AppDatabase, $MenstrualCycleTrackingTableTable> {
  $$MenstrualCycleTrackingTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get daysDuration => $composableBuilder(
    column: $table.daysDuration,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get predictve => $composableBuilder(
    column: $table.predictve,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MenstrualCycleTrackingTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MenstrualCycleTrackingTableTable> {
  $$MenstrualCycleTrackingTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get daysDuration => $composableBuilder(
    column: $table.daysDuration,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get predictve => $composableBuilder(
    column: $table.predictve,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MenstrualCycleTrackingTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MenstrualCycleTrackingTableTable> {
  $$MenstrualCycleTrackingTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<int> get daysDuration => $composableBuilder(
    column: $table.daysDuration,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get predictve =>
      $composableBuilder(column: $table.predictve, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$MenstrualCycleTrackingTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MenstrualCycleTrackingTableTable,
          MenstrualCycleTrackingTableData,
          $$MenstrualCycleTrackingTableTableFilterComposer,
          $$MenstrualCycleTrackingTableTableOrderingComposer,
          $$MenstrualCycleTrackingTableTableAnnotationComposer,
          $$MenstrualCycleTrackingTableTableCreateCompanionBuilder,
          $$MenstrualCycleTrackingTableTableUpdateCompanionBuilder,
          (
            MenstrualCycleTrackingTableData,
            BaseReferences<
              _$AppDatabase,
              $MenstrualCycleTrackingTableTable,
              MenstrualCycleTrackingTableData
            >,
          ),
          MenstrualCycleTrackingTableData,
          PrefetchHooks Function()
        > {
  $$MenstrualCycleTrackingTableTableTableManager(
    _$AppDatabase db,
    $MenstrualCycleTrackingTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MenstrualCycleTrackingTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$MenstrualCycleTrackingTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$MenstrualCycleTrackingTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> startDate = const Value.absent(),
                Value<DateTime?> endDate = const Value.absent(),
                Value<int?> daysDuration = const Value.absent(),
                Value<bool> predictve = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MenstrualCycleTrackingTableCompanion(
                id: id,
                startDate: startDate,
                endDate: endDate,
                daysDuration: daysDuration,
                predictve: predictve,
                createdAt: createdAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime startDate,
                Value<DateTime?> endDate = const Value.absent(),
                Value<int?> daysDuration = const Value.absent(),
                Value<bool> predictve = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MenstrualCycleTrackingTableCompanion.insert(
                id: id,
                startDate: startDate,
                endDate: endDate,
                daysDuration: daysDuration,
                predictve: predictve,
                createdAt: createdAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MenstrualCycleTrackingTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MenstrualCycleTrackingTableTable,
      MenstrualCycleTrackingTableData,
      $$MenstrualCycleTrackingTableTableFilterComposer,
      $$MenstrualCycleTrackingTableTableOrderingComposer,
      $$MenstrualCycleTrackingTableTableAnnotationComposer,
      $$MenstrualCycleTrackingTableTableCreateCompanionBuilder,
      $$MenstrualCycleTrackingTableTableUpdateCompanionBuilder,
      (
        MenstrualCycleTrackingTableData,
        BaseReferences<
          _$AppDatabase,
          $MenstrualCycleTrackingTableTable,
          MenstrualCycleTrackingTableData
        >,
      ),
      MenstrualCycleTrackingTableData,
      PrefetchHooks Function()
    >;
typedef $$MesnstrualCycleUserInfosTableTableCreateCompanionBuilder =
    MesnstrualCycleUserInfosTableCompanion Function({
      required String id,
      required String name,
      Value<int?> averageCycleDuration,
      Value<int?> durationMenstruation,
      Value<bool> notificationsActive,
      Value<String?> contraceptiveType,
      Value<DateTime?> contraceptiveStartDate,
      Value<int?> posologia,
      Value<bool> makePause,
      Value<int> daysPause,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$MesnstrualCycleUserInfosTableTableUpdateCompanionBuilder =
    MesnstrualCycleUserInfosTableCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<int?> averageCycleDuration,
      Value<int?> durationMenstruation,
      Value<bool> notificationsActive,
      Value<String?> contraceptiveType,
      Value<DateTime?> contraceptiveStartDate,
      Value<int?> posologia,
      Value<bool> makePause,
      Value<int> daysPause,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

class $$MesnstrualCycleUserInfosTableTableFilterComposer
    extends Composer<_$AppDatabase, $MesnstrualCycleUserInfosTableTable> {
  $$MesnstrualCycleUserInfosTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get averageCycleDuration => $composableBuilder(
    column: $table.averageCycleDuration,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durationMenstruation => $composableBuilder(
    column: $table.durationMenstruation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get notificationsActive => $composableBuilder(
    column: $table.notificationsActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contraceptiveType => $composableBuilder(
    column: $table.contraceptiveType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get contraceptiveStartDate => $composableBuilder(
    column: $table.contraceptiveStartDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get posologia => $composableBuilder(
    column: $table.posologia,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get makePause => $composableBuilder(
    column: $table.makePause,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get daysPause => $composableBuilder(
    column: $table.daysPause,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MesnstrualCycleUserInfosTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MesnstrualCycleUserInfosTableTable> {
  $$MesnstrualCycleUserInfosTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get averageCycleDuration => $composableBuilder(
    column: $table.averageCycleDuration,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durationMenstruation => $composableBuilder(
    column: $table.durationMenstruation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get notificationsActive => $composableBuilder(
    column: $table.notificationsActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contraceptiveType => $composableBuilder(
    column: $table.contraceptiveType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get contraceptiveStartDate => $composableBuilder(
    column: $table.contraceptiveStartDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get posologia => $composableBuilder(
    column: $table.posologia,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get makePause => $composableBuilder(
    column: $table.makePause,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get daysPause => $composableBuilder(
    column: $table.daysPause,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MesnstrualCycleUserInfosTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MesnstrualCycleUserInfosTableTable> {
  $$MesnstrualCycleUserInfosTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get averageCycleDuration => $composableBuilder(
    column: $table.averageCycleDuration,
    builder: (column) => column,
  );

  GeneratedColumn<int> get durationMenstruation => $composableBuilder(
    column: $table.durationMenstruation,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get notificationsActive => $composableBuilder(
    column: $table.notificationsActive,
    builder: (column) => column,
  );

  GeneratedColumn<String> get contraceptiveType => $composableBuilder(
    column: $table.contraceptiveType,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get contraceptiveStartDate => $composableBuilder(
    column: $table.contraceptiveStartDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get posologia =>
      $composableBuilder(column: $table.posologia, builder: (column) => column);

  GeneratedColumn<bool> get makePause =>
      $composableBuilder(column: $table.makePause, builder: (column) => column);

  GeneratedColumn<int> get daysPause =>
      $composableBuilder(column: $table.daysPause, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$MesnstrualCycleUserInfosTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MesnstrualCycleUserInfosTableTable,
          MesnstrualCycleUserInfosTableData,
          $$MesnstrualCycleUserInfosTableTableFilterComposer,
          $$MesnstrualCycleUserInfosTableTableOrderingComposer,
          $$MesnstrualCycleUserInfosTableTableAnnotationComposer,
          $$MesnstrualCycleUserInfosTableTableCreateCompanionBuilder,
          $$MesnstrualCycleUserInfosTableTableUpdateCompanionBuilder,
          (
            MesnstrualCycleUserInfosTableData,
            BaseReferences<
              _$AppDatabase,
              $MesnstrualCycleUserInfosTableTable,
              MesnstrualCycleUserInfosTableData
            >,
          ),
          MesnstrualCycleUserInfosTableData,
          PrefetchHooks Function()
        > {
  $$MesnstrualCycleUserInfosTableTableTableManager(
    _$AppDatabase db,
    $MesnstrualCycleUserInfosTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MesnstrualCycleUserInfosTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$MesnstrualCycleUserInfosTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$MesnstrualCycleUserInfosTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int?> averageCycleDuration = const Value.absent(),
                Value<int?> durationMenstruation = const Value.absent(),
                Value<bool> notificationsActive = const Value.absent(),
                Value<String?> contraceptiveType = const Value.absent(),
                Value<DateTime?> contraceptiveStartDate = const Value.absent(),
                Value<int?> posologia = const Value.absent(),
                Value<bool> makePause = const Value.absent(),
                Value<int> daysPause = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MesnstrualCycleUserInfosTableCompanion(
                id: id,
                name: name,
                averageCycleDuration: averageCycleDuration,
                durationMenstruation: durationMenstruation,
                notificationsActive: notificationsActive,
                contraceptiveType: contraceptiveType,
                contraceptiveStartDate: contraceptiveStartDate,
                posologia: posologia,
                makePause: makePause,
                daysPause: daysPause,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<int?> averageCycleDuration = const Value.absent(),
                Value<int?> durationMenstruation = const Value.absent(),
                Value<bool> notificationsActive = const Value.absent(),
                Value<String?> contraceptiveType = const Value.absent(),
                Value<DateTime?> contraceptiveStartDate = const Value.absent(),
                Value<int?> posologia = const Value.absent(),
                Value<bool> makePause = const Value.absent(),
                Value<int> daysPause = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MesnstrualCycleUserInfosTableCompanion.insert(
                id: id,
                name: name,
                averageCycleDuration: averageCycleDuration,
                durationMenstruation: durationMenstruation,
                notificationsActive: notificationsActive,
                contraceptiveType: contraceptiveType,
                contraceptiveStartDate: contraceptiveStartDate,
                posologia: posologia,
                makePause: makePause,
                daysPause: daysPause,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MesnstrualCycleUserInfosTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MesnstrualCycleUserInfosTableTable,
      MesnstrualCycleUserInfosTableData,
      $$MesnstrualCycleUserInfosTableTableFilterComposer,
      $$MesnstrualCycleUserInfosTableTableOrderingComposer,
      $$MesnstrualCycleUserInfosTableTableAnnotationComposer,
      $$MesnstrualCycleUserInfosTableTableCreateCompanionBuilder,
      $$MesnstrualCycleUserInfosTableTableUpdateCompanionBuilder,
      (
        MesnstrualCycleUserInfosTableData,
        BaseReferences<
          _$AppDatabase,
          $MesnstrualCycleUserInfosTableTable,
          MesnstrualCycleUserInfosTableData
        >,
      ),
      MesnstrualCycleUserInfosTableData,
      PrefetchHooks Function()
    >;
typedef $$RecordsAntiomceptivePillTableCreateCompanionBuilder =
    RecordsAntiomceptivePillCompanion Function({
      required String id,
      required DateTime registerDate,
      required DateTime registerHour,
      Value<bool> taked,
      Value<bool> inHour,
      Value<int?> delayMinutes,
      Value<bool> sheForgot,
      Value<bool> dayInPause,
      Value<int?> medicationDay,
      Value<bool> isFirstDoseBlisterPack,
      Value<bool> isLastDoseInBlisterPack,
      Value<bool> isMenstruationDay,
      Value<bool> notificationSent,
      Value<bool> notificationSeer,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$RecordsAntiomceptivePillTableUpdateCompanionBuilder =
    RecordsAntiomceptivePillCompanion Function({
      Value<String> id,
      Value<DateTime> registerDate,
      Value<DateTime> registerHour,
      Value<bool> taked,
      Value<bool> inHour,
      Value<int?> delayMinutes,
      Value<bool> sheForgot,
      Value<bool> dayInPause,
      Value<int?> medicationDay,
      Value<bool> isFirstDoseBlisterPack,
      Value<bool> isLastDoseInBlisterPack,
      Value<bool> isMenstruationDay,
      Value<bool> notificationSent,
      Value<bool> notificationSeer,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

class $$RecordsAntiomceptivePillTableFilterComposer
    extends Composer<_$AppDatabase, $RecordsAntiomceptivePillTable> {
  $$RecordsAntiomceptivePillTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get registerDate => $composableBuilder(
    column: $table.registerDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get registerHour => $composableBuilder(
    column: $table.registerHour,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get taked => $composableBuilder(
    column: $table.taked,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get inHour => $composableBuilder(
    column: $table.inHour,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get delayMinutes => $composableBuilder(
    column: $table.delayMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get sheForgot => $composableBuilder(
    column: $table.sheForgot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get dayInPause => $composableBuilder(
    column: $table.dayInPause,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get medicationDay => $composableBuilder(
    column: $table.medicationDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFirstDoseBlisterPack => $composableBuilder(
    column: $table.isFirstDoseBlisterPack,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isLastDoseInBlisterPack => $composableBuilder(
    column: $table.isLastDoseInBlisterPack,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isMenstruationDay => $composableBuilder(
    column: $table.isMenstruationDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get notificationSent => $composableBuilder(
    column: $table.notificationSent,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get notificationSeer => $composableBuilder(
    column: $table.notificationSeer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RecordsAntiomceptivePillTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordsAntiomceptivePillTable> {
  $$RecordsAntiomceptivePillTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get registerDate => $composableBuilder(
    column: $table.registerDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get registerHour => $composableBuilder(
    column: $table.registerHour,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get taked => $composableBuilder(
    column: $table.taked,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get inHour => $composableBuilder(
    column: $table.inHour,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get delayMinutes => $composableBuilder(
    column: $table.delayMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get sheForgot => $composableBuilder(
    column: $table.sheForgot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get dayInPause => $composableBuilder(
    column: $table.dayInPause,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get medicationDay => $composableBuilder(
    column: $table.medicationDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFirstDoseBlisterPack => $composableBuilder(
    column: $table.isFirstDoseBlisterPack,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isLastDoseInBlisterPack => $composableBuilder(
    column: $table.isLastDoseInBlisterPack,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isMenstruationDay => $composableBuilder(
    column: $table.isMenstruationDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get notificationSent => $composableBuilder(
    column: $table.notificationSent,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get notificationSeer => $composableBuilder(
    column: $table.notificationSeer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RecordsAntiomceptivePillTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordsAntiomceptivePillTable> {
  $$RecordsAntiomceptivePillTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get registerDate => $composableBuilder(
    column: $table.registerDate,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get registerHour => $composableBuilder(
    column: $table.registerHour,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get taked =>
      $composableBuilder(column: $table.taked, builder: (column) => column);

  GeneratedColumn<bool> get inHour =>
      $composableBuilder(column: $table.inHour, builder: (column) => column);

  GeneratedColumn<int> get delayMinutes => $composableBuilder(
    column: $table.delayMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get sheForgot =>
      $composableBuilder(column: $table.sheForgot, builder: (column) => column);

  GeneratedColumn<bool> get dayInPause => $composableBuilder(
    column: $table.dayInPause,
    builder: (column) => column,
  );

  GeneratedColumn<int> get medicationDay => $composableBuilder(
    column: $table.medicationDay,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isFirstDoseBlisterPack => $composableBuilder(
    column: $table.isFirstDoseBlisterPack,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isLastDoseInBlisterPack => $composableBuilder(
    column: $table.isLastDoseInBlisterPack,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isMenstruationDay => $composableBuilder(
    column: $table.isMenstruationDay,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get notificationSent => $composableBuilder(
    column: $table.notificationSent,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get notificationSeer => $composableBuilder(
    column: $table.notificationSeer,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$RecordsAntiomceptivePillTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordsAntiomceptivePillTable,
          RecordsAntiomceptivePillData,
          $$RecordsAntiomceptivePillTableFilterComposer,
          $$RecordsAntiomceptivePillTableOrderingComposer,
          $$RecordsAntiomceptivePillTableAnnotationComposer,
          $$RecordsAntiomceptivePillTableCreateCompanionBuilder,
          $$RecordsAntiomceptivePillTableUpdateCompanionBuilder,
          (
            RecordsAntiomceptivePillData,
            BaseReferences<
              _$AppDatabase,
              $RecordsAntiomceptivePillTable,
              RecordsAntiomceptivePillData
            >,
          ),
          RecordsAntiomceptivePillData,
          PrefetchHooks Function()
        > {
  $$RecordsAntiomceptivePillTableTableManager(
    _$AppDatabase db,
    $RecordsAntiomceptivePillTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordsAntiomceptivePillTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$RecordsAntiomceptivePillTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$RecordsAntiomceptivePillTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> registerDate = const Value.absent(),
                Value<DateTime> registerHour = const Value.absent(),
                Value<bool> taked = const Value.absent(),
                Value<bool> inHour = const Value.absent(),
                Value<int?> delayMinutes = const Value.absent(),
                Value<bool> sheForgot = const Value.absent(),
                Value<bool> dayInPause = const Value.absent(),
                Value<int?> medicationDay = const Value.absent(),
                Value<bool> isFirstDoseBlisterPack = const Value.absent(),
                Value<bool> isLastDoseInBlisterPack = const Value.absent(),
                Value<bool> isMenstruationDay = const Value.absent(),
                Value<bool> notificationSent = const Value.absent(),
                Value<bool> notificationSeer = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecordsAntiomceptivePillCompanion(
                id: id,
                registerDate: registerDate,
                registerHour: registerHour,
                taked: taked,
                inHour: inHour,
                delayMinutes: delayMinutes,
                sheForgot: sheForgot,
                dayInPause: dayInPause,
                medicationDay: medicationDay,
                isFirstDoseBlisterPack: isFirstDoseBlisterPack,
                isLastDoseInBlisterPack: isLastDoseInBlisterPack,
                isMenstruationDay: isMenstruationDay,
                notificationSent: notificationSent,
                notificationSeer: notificationSeer,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime registerDate,
                required DateTime registerHour,
                Value<bool> taked = const Value.absent(),
                Value<bool> inHour = const Value.absent(),
                Value<int?> delayMinutes = const Value.absent(),
                Value<bool> sheForgot = const Value.absent(),
                Value<bool> dayInPause = const Value.absent(),
                Value<int?> medicationDay = const Value.absent(),
                Value<bool> isFirstDoseBlisterPack = const Value.absent(),
                Value<bool> isLastDoseInBlisterPack = const Value.absent(),
                Value<bool> isMenstruationDay = const Value.absent(),
                Value<bool> notificationSent = const Value.absent(),
                Value<bool> notificationSeer = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecordsAntiomceptivePillCompanion.insert(
                id: id,
                registerDate: registerDate,
                registerHour: registerHour,
                taked: taked,
                inHour: inHour,
                delayMinutes: delayMinutes,
                sheForgot: sheForgot,
                dayInPause: dayInPause,
                medicationDay: medicationDay,
                isFirstDoseBlisterPack: isFirstDoseBlisterPack,
                isLastDoseInBlisterPack: isLastDoseInBlisterPack,
                isMenstruationDay: isMenstruationDay,
                notificationSent: notificationSent,
                notificationSeer: notificationSeer,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RecordsAntiomceptivePillTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordsAntiomceptivePillTable,
      RecordsAntiomceptivePillData,
      $$RecordsAntiomceptivePillTableFilterComposer,
      $$RecordsAntiomceptivePillTableOrderingComposer,
      $$RecordsAntiomceptivePillTableAnnotationComposer,
      $$RecordsAntiomceptivePillTableCreateCompanionBuilder,
      $$RecordsAntiomceptivePillTableUpdateCompanionBuilder,
      (
        RecordsAntiomceptivePillData,
        BaseReferences<
          _$AppDatabase,
          $RecordsAntiomceptivePillTable,
          RecordsAntiomceptivePillData
        >,
      ),
      RecordsAntiomceptivePillData,
      PrefetchHooks Function()
    >;
typedef $$ReminderAntiomceptivePillTableCreateCompanionBuilder =
    ReminderAntiomceptivePillCompanion Function({
      required String id,
      Value<DateTime?> firstRememberTime,
      Value<DateTime?> secondRememberTime,
      Value<DateTime?> thirdRememberTime,
      Value<bool> active,
      Value<int> minutesInAdvance,
      Value<bool> monday,
      Value<bool> tuesday,
      Value<bool> wednesday,
      Value<bool> thursday,
      Value<bool> friday,
      Value<bool> saturday,
      Value<bool> sunday,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });
typedef $$ReminderAntiomceptivePillTableUpdateCompanionBuilder =
    ReminderAntiomceptivePillCompanion Function({
      Value<String> id,
      Value<DateTime?> firstRememberTime,
      Value<DateTime?> secondRememberTime,
      Value<DateTime?> thirdRememberTime,
      Value<bool> active,
      Value<int> minutesInAdvance,
      Value<bool> monday,
      Value<bool> tuesday,
      Value<bool> wednesday,
      Value<bool> thursday,
      Value<bool> friday,
      Value<bool> saturday,
      Value<bool> sunday,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<DateTime?> deletedAt,
      Value<int> rowid,
    });

class $$ReminderAntiomceptivePillTableFilterComposer
    extends Composer<_$AppDatabase, $ReminderAntiomceptivePillTable> {
  $$ReminderAntiomceptivePillTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get firstRememberTime => $composableBuilder(
    column: $table.firstRememberTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get secondRememberTime => $composableBuilder(
    column: $table.secondRememberTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get thirdRememberTime => $composableBuilder(
    column: $table.thirdRememberTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get active => $composableBuilder(
    column: $table.active,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesInAdvance => $composableBuilder(
    column: $table.minutesInAdvance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get monday => $composableBuilder(
    column: $table.monday,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get tuesday => $composableBuilder(
    column: $table.tuesday,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get wednesday => $composableBuilder(
    column: $table.wednesday,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get thursday => $composableBuilder(
    column: $table.thursday,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get friday => $composableBuilder(
    column: $table.friday,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get saturday => $composableBuilder(
    column: $table.saturday,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get sunday => $composableBuilder(
    column: $table.sunday,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ReminderAntiomceptivePillTableOrderingComposer
    extends Composer<_$AppDatabase, $ReminderAntiomceptivePillTable> {
  $$ReminderAntiomceptivePillTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get firstRememberTime => $composableBuilder(
    column: $table.firstRememberTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get secondRememberTime => $composableBuilder(
    column: $table.secondRememberTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get thirdRememberTime => $composableBuilder(
    column: $table.thirdRememberTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get active => $composableBuilder(
    column: $table.active,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesInAdvance => $composableBuilder(
    column: $table.minutesInAdvance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get monday => $composableBuilder(
    column: $table.monday,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get tuesday => $composableBuilder(
    column: $table.tuesday,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get wednesday => $composableBuilder(
    column: $table.wednesday,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get thursday => $composableBuilder(
    column: $table.thursday,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get friday => $composableBuilder(
    column: $table.friday,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get saturday => $composableBuilder(
    column: $table.saturday,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get sunday => $composableBuilder(
    column: $table.sunday,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ReminderAntiomceptivePillTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReminderAntiomceptivePillTable> {
  $$ReminderAntiomceptivePillTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get firstRememberTime => $composableBuilder(
    column: $table.firstRememberTime,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get secondRememberTime => $composableBuilder(
    column: $table.secondRememberTime,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get thirdRememberTime => $composableBuilder(
    column: $table.thirdRememberTime,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get active =>
      $composableBuilder(column: $table.active, builder: (column) => column);

  GeneratedColumn<int> get minutesInAdvance => $composableBuilder(
    column: $table.minutesInAdvance,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get monday =>
      $composableBuilder(column: $table.monday, builder: (column) => column);

  GeneratedColumn<bool> get tuesday =>
      $composableBuilder(column: $table.tuesday, builder: (column) => column);

  GeneratedColumn<bool> get wednesday =>
      $composableBuilder(column: $table.wednesday, builder: (column) => column);

  GeneratedColumn<bool> get thursday =>
      $composableBuilder(column: $table.thursday, builder: (column) => column);

  GeneratedColumn<bool> get friday =>
      $composableBuilder(column: $table.friday, builder: (column) => column);

  GeneratedColumn<bool> get saturday =>
      $composableBuilder(column: $table.saturday, builder: (column) => column);

  GeneratedColumn<bool> get sunday =>
      $composableBuilder(column: $table.sunday, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);
}

class $$ReminderAntiomceptivePillTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReminderAntiomceptivePillTable,
          ReminderAntiomceptivePillData,
          $$ReminderAntiomceptivePillTableFilterComposer,
          $$ReminderAntiomceptivePillTableOrderingComposer,
          $$ReminderAntiomceptivePillTableAnnotationComposer,
          $$ReminderAntiomceptivePillTableCreateCompanionBuilder,
          $$ReminderAntiomceptivePillTableUpdateCompanionBuilder,
          (
            ReminderAntiomceptivePillData,
            BaseReferences<
              _$AppDatabase,
              $ReminderAntiomceptivePillTable,
              ReminderAntiomceptivePillData
            >,
          ),
          ReminderAntiomceptivePillData,
          PrefetchHooks Function()
        > {
  $$ReminderAntiomceptivePillTableTableManager(
    _$AppDatabase db,
    $ReminderAntiomceptivePillTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReminderAntiomceptivePillTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$ReminderAntiomceptivePillTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ReminderAntiomceptivePillTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime?> firstRememberTime = const Value.absent(),
                Value<DateTime?> secondRememberTime = const Value.absent(),
                Value<DateTime?> thirdRememberTime = const Value.absent(),
                Value<bool> active = const Value.absent(),
                Value<int> minutesInAdvance = const Value.absent(),
                Value<bool> monday = const Value.absent(),
                Value<bool> tuesday = const Value.absent(),
                Value<bool> wednesday = const Value.absent(),
                Value<bool> thursday = const Value.absent(),
                Value<bool> friday = const Value.absent(),
                Value<bool> saturday = const Value.absent(),
                Value<bool> sunday = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ReminderAntiomceptivePillCompanion(
                id: id,
                firstRememberTime: firstRememberTime,
                secondRememberTime: secondRememberTime,
                thirdRememberTime: thirdRememberTime,
                active: active,
                minutesInAdvance: minutesInAdvance,
                monday: monday,
                tuesday: tuesday,
                wednesday: wednesday,
                thursday: thursday,
                friday: friday,
                saturday: saturday,
                sunday: sunday,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime?> firstRememberTime = const Value.absent(),
                Value<DateTime?> secondRememberTime = const Value.absent(),
                Value<DateTime?> thirdRememberTime = const Value.absent(),
                Value<bool> active = const Value.absent(),
                Value<int> minutesInAdvance = const Value.absent(),
                Value<bool> monday = const Value.absent(),
                Value<bool> tuesday = const Value.absent(),
                Value<bool> wednesday = const Value.absent(),
                Value<bool> thursday = const Value.absent(),
                Value<bool> friday = const Value.absent(),
                Value<bool> saturday = const Value.absent(),
                Value<bool> sunday = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ReminderAntiomceptivePillCompanion.insert(
                id: id,
                firstRememberTime: firstRememberTime,
                secondRememberTime: secondRememberTime,
                thirdRememberTime: thirdRememberTime,
                active: active,
                minutesInAdvance: minutesInAdvance,
                monday: monday,
                tuesday: tuesday,
                wednesday: wednesday,
                thursday: thursday,
                friday: friday,
                saturday: saturday,
                sunday: sunday,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ReminderAntiomceptivePillTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReminderAntiomceptivePillTable,
      ReminderAntiomceptivePillData,
      $$ReminderAntiomceptivePillTableFilterComposer,
      $$ReminderAntiomceptivePillTableOrderingComposer,
      $$ReminderAntiomceptivePillTableAnnotationComposer,
      $$ReminderAntiomceptivePillTableCreateCompanionBuilder,
      $$ReminderAntiomceptivePillTableUpdateCompanionBuilder,
      (
        ReminderAntiomceptivePillData,
        BaseReferences<
          _$AppDatabase,
          $ReminderAntiomceptivePillTable,
          ReminderAntiomceptivePillData
        >,
      ),
      ReminderAntiomceptivePillData,
      PrefetchHooks Function()
    >;
typedef $$CompletedReadGenderTableTableCreateCompanionBuilder =
    CompletedReadGenderTableCompanion Function({
      required String id,
      required String bookId,
      required String genderId,
      Value<int> rowid,
    });
typedef $$CompletedReadGenderTableTableUpdateCompanionBuilder =
    CompletedReadGenderTableCompanion Function({
      Value<String> id,
      Value<String> bookId,
      Value<String> genderId,
      Value<int> rowid,
    });

final class $$CompletedReadGenderTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $CompletedReadGenderTableTable,
          CompletedReadGenderTableData
        > {
  $$CompletedReadGenderTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $CompletedReadTableTable _bookIdTable(_$AppDatabase db) =>
      db.completedReadTable.createAlias(
        $_aliasNameGenerator(
          db.completedReadGenderTable.bookId,
          db.completedReadTable.id,
        ),
      );

  $$CompletedReadTableTableProcessedTableManager get bookId {
    final $_column = $_itemColumn<String>('book_id')!;

    final manager = $$CompletedReadTableTableTableManager(
      $_db,
      $_db.completedReadTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_bookIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$CompletedReadGenderTableTableFilterComposer
    extends Composer<_$AppDatabase, $CompletedReadGenderTableTable> {
  $$CompletedReadGenderTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get genderId => $composableBuilder(
    column: $table.genderId,
    builder: (column) => ColumnFilters(column),
  );

  $$CompletedReadTableTableFilterComposer get bookId {
    final $$CompletedReadTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.bookId,
      referencedTable: $db.completedReadTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CompletedReadTableTableFilterComposer(
            $db: $db,
            $table: $db.completedReadTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CompletedReadGenderTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CompletedReadGenderTableTable> {
  $$CompletedReadGenderTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get genderId => $composableBuilder(
    column: $table.genderId,
    builder: (column) => ColumnOrderings(column),
  );

  $$CompletedReadTableTableOrderingComposer get bookId {
    final $$CompletedReadTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.bookId,
      referencedTable: $db.completedReadTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CompletedReadTableTableOrderingComposer(
            $db: $db,
            $table: $db.completedReadTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CompletedReadGenderTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CompletedReadGenderTableTable> {
  $$CompletedReadGenderTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get genderId =>
      $composableBuilder(column: $table.genderId, builder: (column) => column);

  $$CompletedReadTableTableAnnotationComposer get bookId {
    final $$CompletedReadTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.bookId,
          referencedTable: $db.completedReadTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$CompletedReadTableTableAnnotationComposer(
                $db: $db,
                $table: $db.completedReadTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$CompletedReadGenderTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CompletedReadGenderTableTable,
          CompletedReadGenderTableData,
          $$CompletedReadGenderTableTableFilterComposer,
          $$CompletedReadGenderTableTableOrderingComposer,
          $$CompletedReadGenderTableTableAnnotationComposer,
          $$CompletedReadGenderTableTableCreateCompanionBuilder,
          $$CompletedReadGenderTableTableUpdateCompanionBuilder,
          (
            CompletedReadGenderTableData,
            $$CompletedReadGenderTableTableReferences,
          ),
          CompletedReadGenderTableData,
          PrefetchHooks Function({bool bookId})
        > {
  $$CompletedReadGenderTableTableTableManager(
    _$AppDatabase db,
    $CompletedReadGenderTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CompletedReadGenderTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$CompletedReadGenderTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CompletedReadGenderTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> bookId = const Value.absent(),
                Value<String> genderId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CompletedReadGenderTableCompanion(
                id: id,
                bookId: bookId,
                genderId: genderId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String bookId,
                required String genderId,
                Value<int> rowid = const Value.absent(),
              }) => CompletedReadGenderTableCompanion.insert(
                id: id,
                bookId: bookId,
                genderId: genderId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CompletedReadGenderTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({bookId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (bookId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.bookId,
                                referencedTable:
                                    $$CompletedReadGenderTableTableReferences
                                        ._bookIdTable(db),
                                referencedColumn:
                                    $$CompletedReadGenderTableTableReferences
                                        ._bookIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$CompletedReadGenderTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CompletedReadGenderTableTable,
      CompletedReadGenderTableData,
      $$CompletedReadGenderTableTableFilterComposer,
      $$CompletedReadGenderTableTableOrderingComposer,
      $$CompletedReadGenderTableTableAnnotationComposer,
      $$CompletedReadGenderTableTableCreateCompanionBuilder,
      $$CompletedReadGenderTableTableUpdateCompanionBuilder,
      (CompletedReadGenderTableData, $$CompletedReadGenderTableTableReferences),
      CompletedReadGenderTableData,
      PrefetchHooks Function({bool bookId})
    >;
typedef $$CompletedReadAuthorTableTableCreateCompanionBuilder =
    CompletedReadAuthorTableCompanion Function({
      required String id,
      required String bookId,
      required String authorId,
      Value<int> rowid,
    });
typedef $$CompletedReadAuthorTableTableUpdateCompanionBuilder =
    CompletedReadAuthorTableCompanion Function({
      Value<String> id,
      Value<String> bookId,
      Value<String> authorId,
      Value<int> rowid,
    });

final class $$CompletedReadAuthorTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $CompletedReadAuthorTableTable,
          CompletedReadAuthorTableData
        > {
  $$CompletedReadAuthorTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $CompletedReadTableTable _bookIdTable(_$AppDatabase db) =>
      db.completedReadTable.createAlias(
        $_aliasNameGenerator(
          db.completedReadAuthorTable.bookId,
          db.completedReadTable.id,
        ),
      );

  $$CompletedReadTableTableProcessedTableManager get bookId {
    final $_column = $_itemColumn<String>('book_id')!;

    final manager = $$CompletedReadTableTableTableManager(
      $_db,
      $_db.completedReadTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_bookIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$CompletedReadAuthorTableTableFilterComposer
    extends Composer<_$AppDatabase, $CompletedReadAuthorTableTable> {
  $$CompletedReadAuthorTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get authorId => $composableBuilder(
    column: $table.authorId,
    builder: (column) => ColumnFilters(column),
  );

  $$CompletedReadTableTableFilterComposer get bookId {
    final $$CompletedReadTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.bookId,
      referencedTable: $db.completedReadTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CompletedReadTableTableFilterComposer(
            $db: $db,
            $table: $db.completedReadTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CompletedReadAuthorTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CompletedReadAuthorTableTable> {
  $$CompletedReadAuthorTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get authorId => $composableBuilder(
    column: $table.authorId,
    builder: (column) => ColumnOrderings(column),
  );

  $$CompletedReadTableTableOrderingComposer get bookId {
    final $$CompletedReadTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.bookId,
      referencedTable: $db.completedReadTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CompletedReadTableTableOrderingComposer(
            $db: $db,
            $table: $db.completedReadTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CompletedReadAuthorTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CompletedReadAuthorTableTable> {
  $$CompletedReadAuthorTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get authorId =>
      $composableBuilder(column: $table.authorId, builder: (column) => column);

  $$CompletedReadTableTableAnnotationComposer get bookId {
    final $$CompletedReadTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.bookId,
          referencedTable: $db.completedReadTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$CompletedReadTableTableAnnotationComposer(
                $db: $db,
                $table: $db.completedReadTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$CompletedReadAuthorTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CompletedReadAuthorTableTable,
          CompletedReadAuthorTableData,
          $$CompletedReadAuthorTableTableFilterComposer,
          $$CompletedReadAuthorTableTableOrderingComposer,
          $$CompletedReadAuthorTableTableAnnotationComposer,
          $$CompletedReadAuthorTableTableCreateCompanionBuilder,
          $$CompletedReadAuthorTableTableUpdateCompanionBuilder,
          (
            CompletedReadAuthorTableData,
            $$CompletedReadAuthorTableTableReferences,
          ),
          CompletedReadAuthorTableData,
          PrefetchHooks Function({bool bookId})
        > {
  $$CompletedReadAuthorTableTableTableManager(
    _$AppDatabase db,
    $CompletedReadAuthorTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CompletedReadAuthorTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$CompletedReadAuthorTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CompletedReadAuthorTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> bookId = const Value.absent(),
                Value<String> authorId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CompletedReadAuthorTableCompanion(
                id: id,
                bookId: bookId,
                authorId: authorId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String bookId,
                required String authorId,
                Value<int> rowid = const Value.absent(),
              }) => CompletedReadAuthorTableCompanion.insert(
                id: id,
                bookId: bookId,
                authorId: authorId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CompletedReadAuthorTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({bookId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (bookId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.bookId,
                                referencedTable:
                                    $$CompletedReadAuthorTableTableReferences
                                        ._bookIdTable(db),
                                referencedColumn:
                                    $$CompletedReadAuthorTableTableReferences
                                        ._bookIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$CompletedReadAuthorTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CompletedReadAuthorTableTable,
      CompletedReadAuthorTableData,
      $$CompletedReadAuthorTableTableFilterComposer,
      $$CompletedReadAuthorTableTableOrderingComposer,
      $$CompletedReadAuthorTableTableAnnotationComposer,
      $$CompletedReadAuthorTableTableCreateCompanionBuilder,
      $$CompletedReadAuthorTableTableUpdateCompanionBuilder,
      (CompletedReadAuthorTableData, $$CompletedReadAuthorTableTableReferences),
      CompletedReadAuthorTableData,
      PrefetchHooks Function({bool bookId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FinnacesHeaderTableTableTableManager get finnacesHeaderTable =>
      $$FinnacesHeaderTableTableTableManager(_db, _db.finnacesHeaderTable);
  $$BooksNacionalityTableTableTableManager get booksNacionalityTable =>
      $$BooksNacionalityTableTableTableManager(_db, _db.booksNacionalityTable);
  $$BooksAuthorTableTableTableManager get booksAuthorTable =>
      $$BooksAuthorTableTableTableManager(_db, _db.booksAuthorTable);
  $$BooksGenderTableTableTableManager get booksGenderTable =>
      $$BooksGenderTableTableTableManager(_db, _db.booksGenderTable);
  $$BooksPublishersTableTableTableManager get booksPublishersTable =>
      $$BooksPublishersTableTableTableManager(_db, _db.booksPublishersTable);
  $$CompletedReadTableTableTableManager get completedReadTable =>
      $$CompletedReadTableTableTableManager(_db, _db.completedReadTable);
  $$FinnancesExpenseTableTableTableManager get finnancesExpenseTable =>
      $$FinnancesExpenseTableTableTableManager(_db, _db.finnancesExpenseTable);
  $$MenstrualCyclePredictionTableTableManager get menstrualCyclePrediction =>
      $$MenstrualCyclePredictionTableTableManager(
        _db,
        _db.menstrualCyclePrediction,
      );
  $$MenstrualCycleTrackingTableTableTableManager
  get menstrualCycleTrackingTable =>
      $$MenstrualCycleTrackingTableTableTableManager(
        _db,
        _db.menstrualCycleTrackingTable,
      );
  $$MesnstrualCycleUserInfosTableTableTableManager
  get mesnstrualCycleUserInfosTable =>
      $$MesnstrualCycleUserInfosTableTableTableManager(
        _db,
        _db.mesnstrualCycleUserInfosTable,
      );
  $$RecordsAntiomceptivePillTableTableManager get recordsAntiomceptivePill =>
      $$RecordsAntiomceptivePillTableTableManager(
        _db,
        _db.recordsAntiomceptivePill,
      );
  $$ReminderAntiomceptivePillTableTableManager get reminderAntiomceptivePill =>
      $$ReminderAntiomceptivePillTableTableManager(
        _db,
        _db.reminderAntiomceptivePill,
      );
  $$CompletedReadGenderTableTableTableManager get completedReadGenderTable =>
      $$CompletedReadGenderTableTableTableManager(
        _db,
        _db.completedReadGenderTable,
      );
  $$CompletedReadAuthorTableTableTableManager get completedReadAuthorTable =>
      $$CompletedReadAuthorTableTableTableManager(
        _db,
        _db.completedReadAuthorTable,
      );
}
