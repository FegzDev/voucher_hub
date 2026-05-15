// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstNameMeta = const VerificationMeta(
    'firstName',
  );
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
    'first_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastNameMeta = const VerificationMeta(
    'lastName',
  );
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
    'last_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, email, firstName, lastName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(
    Insertable<User> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(
        _firstNameMeta,
        firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta),
      );
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(
        _lastNameMeta,
        lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta),
      );
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      firstName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name'],
      )!,
      lastName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name'],
      )!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  const User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['email'] = Variable<String>(email);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      email: Value(email),
      firstName: Value(firstName),
      lastName: Value(lastName),
    );
  }

  factory User.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String>(email),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
    };
  }

  User copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
  }) => User(
    id: id ?? this.id,
    email: email ?? this.email,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
  );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      email: data.email.present ? data.email.value : this.email,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, email, firstName, lastName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.email == this.email &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> email;
  final Value<String> firstName;
  final Value<String> lastName;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    required String firstName,
    required String lastName,
  }) : email = Value(email),
       firstName = Value(firstName),
       lastName = Value(lastName);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<String>? firstName,
    Expression<String>? lastName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
    });
  }

  UsersCompanion copyWith({
    Value<int>? id,
    Value<String>? email,
    Value<String>? firstName,
    Value<String>? lastName,
  }) {
    return UsersCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
    'code',
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
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
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
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minValueMeta = const VerificationMeta(
    'minValue',
  );
  @override
  late final GeneratedColumn<double> minValue = GeneratedColumn<double>(
    'min_value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _maxValueMeta = const VerificationMeta(
    'maxValue',
  );
  @override
  late final GeneratedColumn<double> maxValue = GeneratedColumn<double>(
    'max_value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<double>, String>
  denominations = GeneratedColumn<String>(
    'denominations',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<List<double>>($ProductsTable.$converterdenominations);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String>
  redemptionDetails = GeneratedColumn<String>(
    'redemption_details',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<List<String>>($ProductsTable.$converterredemptionDetails);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> countries =
      GeneratedColumn<String>(
        'countries',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<List<String>>($ProductsTable.$convertercountries);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> stores =
      GeneratedColumn<String>(
        'stores',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<List<String>>($ProductsTable.$converterstores);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> categories =
      GeneratedColumn<String>(
        'categories',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<List<String>>($ProductsTable.$convertercategories);
  static const VerificationMeta _validityTypeMeta = const VerificationMeta(
    'validityType',
  );
  @override
  late final GeneratedColumn<String> validityType = GeneratedColumn<String>(
    'validity_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _validityValueMeta = const VerificationMeta(
    'validityValue',
  );
  @override
  late final GeneratedColumn<int> validityValue = GeneratedColumn<int>(
    'validity_value',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
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
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expiresAtMeta = const VerificationMeta(
    'expiresAt',
  );
  @override
  late final GeneratedColumn<DateTime> expiresAt = GeneratedColumn<DateTime>(
    'expires_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    code,
    name,
    imageUrl,
    description,
    currency,
    minValue,
    maxValue,
    denominations,
    redemptionDetails,
    countries,
    stores,
    categories,
    validityType,
    validityValue,
    createdAt,
    expiresAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(
    Insertable<Product> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
        _codeMeta,
        code.isAcceptableOrUnknown(data['code']!, _codeMeta),
      );
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
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
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('min_value')) {
      context.handle(
        _minValueMeta,
        minValue.isAcceptableOrUnknown(data['min_value']!, _minValueMeta),
      );
    } else if (isInserting) {
      context.missing(_minValueMeta);
    }
    if (data.containsKey('max_value')) {
      context.handle(
        _maxValueMeta,
        maxValue.isAcceptableOrUnknown(data['max_value']!, _maxValueMeta),
      );
    } else if (isInserting) {
      context.missing(_maxValueMeta);
    }
    if (data.containsKey('validity_type')) {
      context.handle(
        _validityTypeMeta,
        validityType.isAcceptableOrUnknown(
          data['validity_type']!,
          _validityTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_validityTypeMeta);
    }
    if (data.containsKey('validity_value')) {
      context.handle(
        _validityValueMeta,
        validityValue.isAcceptableOrUnknown(
          data['validity_value']!,
          _validityValueMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_validityValueMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('expires_at')) {
      context.handle(
        _expiresAtMeta,
        expiresAt.isAcceptableOrUnknown(data['expires_at']!, _expiresAtMeta),
      );
    } else if (isInserting) {
      context.missing(_expiresAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      code: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}code'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      minValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_value'],
      )!,
      maxValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_value'],
      )!,
      denominations: $ProductsTable.$converterdenominations.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}denominations'],
        )!,
      ),
      redemptionDetails: $ProductsTable.$converterredemptionDetails.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}redemption_details'],
        )!,
      ),
      countries: $ProductsTable.$convertercountries.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}countries'],
        )!,
      ),
      stores: $ProductsTable.$converterstores.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}stores'],
        )!,
      ),
      categories: $ProductsTable.$convertercategories.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}categories'],
        )!,
      ),
      validityType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}validity_type'],
      )!,
      validityValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}validity_value'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      expiresAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}expires_at'],
      )!,
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<double>, String> $converterdenominations =
      const DoubleListConverter();
  static TypeConverter<List<String>, String> $converterredemptionDetails =
      const StringListConverter();
  static TypeConverter<List<String>, String> $convertercountries =
      const StringListConverter();
  static TypeConverter<List<String>, String> $converterstores =
      const StringListConverter();
  static TypeConverter<List<String>, String> $convertercategories =
      const StringListConverter();
}

class Product extends DataClass implements Insertable<Product> {
  final String code;
  final String name;
  final String imageUrl;
  final String description;
  final String currency;
  final double minValue;
  final double maxValue;
  final List<double> denominations;
  final List<String> redemptionDetails;
  final List<String> countries;
  final List<String> stores;
  final List<String> categories;
  final String validityType;
  final int validityValue;
  final DateTime createdAt;
  final DateTime expiresAt;
  const Product({
    required this.code,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.currency,
    required this.minValue,
    required this.maxValue,
    required this.denominations,
    required this.redemptionDetails,
    required this.countries,
    required this.stores,
    required this.categories,
    required this.validityType,
    required this.validityValue,
    required this.createdAt,
    required this.expiresAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    map['name'] = Variable<String>(name);
    map['image_url'] = Variable<String>(imageUrl);
    map['description'] = Variable<String>(description);
    map['currency'] = Variable<String>(currency);
    map['min_value'] = Variable<double>(minValue);
    map['max_value'] = Variable<double>(maxValue);
    {
      map['denominations'] = Variable<String>(
        $ProductsTable.$converterdenominations.toSql(denominations),
      );
    }
    {
      map['redemption_details'] = Variable<String>(
        $ProductsTable.$converterredemptionDetails.toSql(redemptionDetails),
      );
    }
    {
      map['countries'] = Variable<String>(
        $ProductsTable.$convertercountries.toSql(countries),
      );
    }
    {
      map['stores'] = Variable<String>(
        $ProductsTable.$converterstores.toSql(stores),
      );
    }
    {
      map['categories'] = Variable<String>(
        $ProductsTable.$convertercategories.toSql(categories),
      );
    }
    map['validity_type'] = Variable<String>(validityType);
    map['validity_value'] = Variable<int>(validityValue);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['expires_at'] = Variable<DateTime>(expiresAt);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      code: Value(code),
      name: Value(name),
      imageUrl: Value(imageUrl),
      description: Value(description),
      currency: Value(currency),
      minValue: Value(minValue),
      maxValue: Value(maxValue),
      denominations: Value(denominations),
      redemptionDetails: Value(redemptionDetails),
      countries: Value(countries),
      stores: Value(stores),
      categories: Value(categories),
      validityType: Value(validityType),
      validityValue: Value(validityValue),
      createdAt: Value(createdAt),
      expiresAt: Value(expiresAt),
    );
  }

  factory Product.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String>(json['name']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      description: serializer.fromJson<String>(json['description']),
      currency: serializer.fromJson<String>(json['currency']),
      minValue: serializer.fromJson<double>(json['minValue']),
      maxValue: serializer.fromJson<double>(json['maxValue']),
      denominations: serializer.fromJson<List<double>>(json['denominations']),
      redemptionDetails: serializer.fromJson<List<String>>(
        json['redemptionDetails'],
      ),
      countries: serializer.fromJson<List<String>>(json['countries']),
      stores: serializer.fromJson<List<String>>(json['stores']),
      categories: serializer.fromJson<List<String>>(json['categories']),
      validityType: serializer.fromJson<String>(json['validityType']),
      validityValue: serializer.fromJson<int>(json['validityValue']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      expiresAt: serializer.fromJson<DateTime>(json['expiresAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String>(name),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'description': serializer.toJson<String>(description),
      'currency': serializer.toJson<String>(currency),
      'minValue': serializer.toJson<double>(minValue),
      'maxValue': serializer.toJson<double>(maxValue),
      'denominations': serializer.toJson<List<double>>(denominations),
      'redemptionDetails': serializer.toJson<List<String>>(redemptionDetails),
      'countries': serializer.toJson<List<String>>(countries),
      'stores': serializer.toJson<List<String>>(stores),
      'categories': serializer.toJson<List<String>>(categories),
      'validityType': serializer.toJson<String>(validityType),
      'validityValue': serializer.toJson<int>(validityValue),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'expiresAt': serializer.toJson<DateTime>(expiresAt),
    };
  }

  Product copyWith({
    String? code,
    String? name,
    String? imageUrl,
    String? description,
    String? currency,
    double? minValue,
    double? maxValue,
    List<double>? denominations,
    List<String>? redemptionDetails,
    List<String>? countries,
    List<String>? stores,
    List<String>? categories,
    String? validityType,
    int? validityValue,
    DateTime? createdAt,
    DateTime? expiresAt,
  }) => Product(
    code: code ?? this.code,
    name: name ?? this.name,
    imageUrl: imageUrl ?? this.imageUrl,
    description: description ?? this.description,
    currency: currency ?? this.currency,
    minValue: minValue ?? this.minValue,
    maxValue: maxValue ?? this.maxValue,
    denominations: denominations ?? this.denominations,
    redemptionDetails: redemptionDetails ?? this.redemptionDetails,
    countries: countries ?? this.countries,
    stores: stores ?? this.stores,
    categories: categories ?? this.categories,
    validityType: validityType ?? this.validityType,
    validityValue: validityValue ?? this.validityValue,
    createdAt: createdAt ?? this.createdAt,
    expiresAt: expiresAt ?? this.expiresAt,
  );
  Product copyWithCompanion(ProductsCompanion data) {
    return Product(
      code: data.code.present ? data.code.value : this.code,
      name: data.name.present ? data.name.value : this.name,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      description: data.description.present
          ? data.description.value
          : this.description,
      currency: data.currency.present ? data.currency.value : this.currency,
      minValue: data.minValue.present ? data.minValue.value : this.minValue,
      maxValue: data.maxValue.present ? data.maxValue.value : this.maxValue,
      denominations: data.denominations.present
          ? data.denominations.value
          : this.denominations,
      redemptionDetails: data.redemptionDetails.present
          ? data.redemptionDetails.value
          : this.redemptionDetails,
      countries: data.countries.present ? data.countries.value : this.countries,
      stores: data.stores.present ? data.stores.value : this.stores,
      categories: data.categories.present
          ? data.categories.value
          : this.categories,
      validityType: data.validityType.present
          ? data.validityType.value
          : this.validityType,
      validityValue: data.validityValue.present
          ? data.validityValue.value
          : this.validityValue,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      expiresAt: data.expiresAt.present ? data.expiresAt.value : this.expiresAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('description: $description, ')
          ..write('currency: $currency, ')
          ..write('minValue: $minValue, ')
          ..write('maxValue: $maxValue, ')
          ..write('denominations: $denominations, ')
          ..write('redemptionDetails: $redemptionDetails, ')
          ..write('countries: $countries, ')
          ..write('stores: $stores, ')
          ..write('categories: $categories, ')
          ..write('validityType: $validityType, ')
          ..write('validityValue: $validityValue, ')
          ..write('createdAt: $createdAt, ')
          ..write('expiresAt: $expiresAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    code,
    name,
    imageUrl,
    description,
    currency,
    minValue,
    maxValue,
    denominations,
    redemptionDetails,
    countries,
    stores,
    categories,
    validityType,
    validityValue,
    createdAt,
    expiresAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.code == this.code &&
          other.name == this.name &&
          other.imageUrl == this.imageUrl &&
          other.description == this.description &&
          other.currency == this.currency &&
          other.minValue == this.minValue &&
          other.maxValue == this.maxValue &&
          other.denominations == this.denominations &&
          other.redemptionDetails == this.redemptionDetails &&
          other.countries == this.countries &&
          other.stores == this.stores &&
          other.categories == this.categories &&
          other.validityType == this.validityType &&
          other.validityValue == this.validityValue &&
          other.createdAt == this.createdAt &&
          other.expiresAt == this.expiresAt);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<String> code;
  final Value<String> name;
  final Value<String> imageUrl;
  final Value<String> description;
  final Value<String> currency;
  final Value<double> minValue;
  final Value<double> maxValue;
  final Value<List<double>> denominations;
  final Value<List<String>> redemptionDetails;
  final Value<List<String>> countries;
  final Value<List<String>> stores;
  final Value<List<String>> categories;
  final Value<String> validityType;
  final Value<int> validityValue;
  final Value<DateTime> createdAt;
  final Value<DateTime> expiresAt;
  final Value<int> rowid;
  const ProductsCompanion({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.description = const Value.absent(),
    this.currency = const Value.absent(),
    this.minValue = const Value.absent(),
    this.maxValue = const Value.absent(),
    this.denominations = const Value.absent(),
    this.redemptionDetails = const Value.absent(),
    this.countries = const Value.absent(),
    this.stores = const Value.absent(),
    this.categories = const Value.absent(),
    this.validityType = const Value.absent(),
    this.validityValue = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductsCompanion.insert({
    required String code,
    required String name,
    required String imageUrl,
    required String description,
    required String currency,
    required double minValue,
    required double maxValue,
    required List<double> denominations,
    required List<String> redemptionDetails,
    required List<String> countries,
    required List<String> stores,
    required List<String> categories,
    required String validityType,
    required int validityValue,
    required DateTime createdAt,
    required DateTime expiresAt,
    this.rowid = const Value.absent(),
  }) : code = Value(code),
       name = Value(name),
       imageUrl = Value(imageUrl),
       description = Value(description),
       currency = Value(currency),
       minValue = Value(minValue),
       maxValue = Value(maxValue),
       denominations = Value(denominations),
       redemptionDetails = Value(redemptionDetails),
       countries = Value(countries),
       stores = Value(stores),
       categories = Value(categories),
       validityType = Value(validityType),
       validityValue = Value(validityValue),
       createdAt = Value(createdAt),
       expiresAt = Value(expiresAt);
  static Insertable<Product> custom({
    Expression<String>? code,
    Expression<String>? name,
    Expression<String>? imageUrl,
    Expression<String>? description,
    Expression<String>? currency,
    Expression<double>? minValue,
    Expression<double>? maxValue,
    Expression<String>? denominations,
    Expression<String>? redemptionDetails,
    Expression<String>? countries,
    Expression<String>? stores,
    Expression<String>? categories,
    Expression<String>? validityType,
    Expression<int>? validityValue,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? expiresAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (imageUrl != null) 'image_url': imageUrl,
      if (description != null) 'description': description,
      if (currency != null) 'currency': currency,
      if (minValue != null) 'min_value': minValue,
      if (maxValue != null) 'max_value': maxValue,
      if (denominations != null) 'denominations': denominations,
      if (redemptionDetails != null) 'redemption_details': redemptionDetails,
      if (countries != null) 'countries': countries,
      if (stores != null) 'stores': stores,
      if (categories != null) 'categories': categories,
      if (validityType != null) 'validity_type': validityType,
      if (validityValue != null) 'validity_value': validityValue,
      if (createdAt != null) 'created_at': createdAt,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductsCompanion copyWith({
    Value<String>? code,
    Value<String>? name,
    Value<String>? imageUrl,
    Value<String>? description,
    Value<String>? currency,
    Value<double>? minValue,
    Value<double>? maxValue,
    Value<List<double>>? denominations,
    Value<List<String>>? redemptionDetails,
    Value<List<String>>? countries,
    Value<List<String>>? stores,
    Value<List<String>>? categories,
    Value<String>? validityType,
    Value<int>? validityValue,
    Value<DateTime>? createdAt,
    Value<DateTime>? expiresAt,
    Value<int>? rowid,
  }) {
    return ProductsCompanion(
      code: code ?? this.code,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      currency: currency ?? this.currency,
      minValue: minValue ?? this.minValue,
      maxValue: maxValue ?? this.maxValue,
      denominations: denominations ?? this.denominations,
      redemptionDetails: redemptionDetails ?? this.redemptionDetails,
      countries: countries ?? this.countries,
      stores: stores ?? this.stores,
      categories: categories ?? this.categories,
      validityType: validityType ?? this.validityType,
      validityValue: validityValue ?? this.validityValue,
      createdAt: createdAt ?? this.createdAt,
      expiresAt: expiresAt ?? this.expiresAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (minValue.present) {
      map['min_value'] = Variable<double>(minValue.value);
    }
    if (maxValue.present) {
      map['max_value'] = Variable<double>(maxValue.value);
    }
    if (denominations.present) {
      map['denominations'] = Variable<String>(
        $ProductsTable.$converterdenominations.toSql(denominations.value),
      );
    }
    if (redemptionDetails.present) {
      map['redemption_details'] = Variable<String>(
        $ProductsTable.$converterredemptionDetails.toSql(
          redemptionDetails.value,
        ),
      );
    }
    if (countries.present) {
      map['countries'] = Variable<String>(
        $ProductsTable.$convertercountries.toSql(countries.value),
      );
    }
    if (stores.present) {
      map['stores'] = Variable<String>(
        $ProductsTable.$converterstores.toSql(stores.value),
      );
    }
    if (categories.present) {
      map['categories'] = Variable<String>(
        $ProductsTable.$convertercategories.toSql(categories.value),
      );
    }
    if (validityType.present) {
      map['validity_type'] = Variable<String>(validityType.value);
    }
    if (validityValue.present) {
      map['validity_value'] = Variable<int>(validityValue.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<DateTime>(expiresAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('description: $description, ')
          ..write('currency: $currency, ')
          ..write('minValue: $minValue, ')
          ..write('maxValue: $maxValue, ')
          ..write('denominations: $denominations, ')
          ..write('redemptionDetails: $redemptionDetails, ')
          ..write('countries: $countries, ')
          ..write('stores: $stores, ')
          ..write('categories: $categories, ')
          ..write('validityType: $validityType, ')
          ..write('validityValue: $validityValue, ')
          ..write('createdAt: $createdAt, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $ProductsTable products = $ProductsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, products];
}

typedef $$UsersTableCreateCompanionBuilder =
    UsersCompanion Function({
      Value<int> id,
      required String email,
      required String firstName,
      required String lastName,
    });
typedef $$UsersTableUpdateCompanionBuilder =
    UsersCompanion Function({
      Value<int> id,
      Value<String> email,
      Value<String> firstName,
      Value<String> lastName,
    });

class $$UsersTableFilterComposer extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);
}

class $$UsersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UsersTable,
          User,
          $$UsersTableFilterComposer,
          $$UsersTableOrderingComposer,
          $$UsersTableAnnotationComposer,
          $$UsersTableCreateCompanionBuilder,
          $$UsersTableUpdateCompanionBuilder,
          (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
          User,
          PrefetchHooks Function()
        > {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> firstName = const Value.absent(),
                Value<String> lastName = const Value.absent(),
              }) => UsersCompanion(
                id: id,
                email: email,
                firstName: firstName,
                lastName: lastName,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String email,
                required String firstName,
                required String lastName,
              }) => UsersCompanion.insert(
                id: id,
                email: email,
                firstName: firstName,
                lastName: lastName,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UsersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UsersTable,
      User,
      $$UsersTableFilterComposer,
      $$UsersTableOrderingComposer,
      $$UsersTableAnnotationComposer,
      $$UsersTableCreateCompanionBuilder,
      $$UsersTableUpdateCompanionBuilder,
      (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
      User,
      PrefetchHooks Function()
    >;
typedef $$ProductsTableCreateCompanionBuilder =
    ProductsCompanion Function({
      required String code,
      required String name,
      required String imageUrl,
      required String description,
      required String currency,
      required double minValue,
      required double maxValue,
      required List<double> denominations,
      required List<String> redemptionDetails,
      required List<String> countries,
      required List<String> stores,
      required List<String> categories,
      required String validityType,
      required int validityValue,
      required DateTime createdAt,
      required DateTime expiresAt,
      Value<int> rowid,
    });
typedef $$ProductsTableUpdateCompanionBuilder =
    ProductsCompanion Function({
      Value<String> code,
      Value<String> name,
      Value<String> imageUrl,
      Value<String> description,
      Value<String> currency,
      Value<double> minValue,
      Value<double> maxValue,
      Value<List<double>> denominations,
      Value<List<String>> redemptionDetails,
      Value<List<String>> countries,
      Value<List<String>> stores,
      Value<List<String>> categories,
      Value<String> validityType,
      Value<int> validityValue,
      Value<DateTime> createdAt,
      Value<DateTime> expiresAt,
      Value<int> rowid,
    });

class $$ProductsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get code => $composableBuilder(
    column: $table.code,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minValue => $composableBuilder(
    column: $table.minValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxValue => $composableBuilder(
    column: $table.maxValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<double>, List<double>, String>
  get denominations => $composableBuilder(
    column: $table.denominations,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
  get redemptionDetails => $composableBuilder(
    column: $table.redemptionDetails,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
  get countries => $composableBuilder(
    column: $table.countries,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
  get stores => $composableBuilder(
    column: $table.stores,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
  get categories => $composableBuilder(
    column: $table.categories,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get validityType => $composableBuilder(
    column: $table.validityType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get validityValue => $composableBuilder(
    column: $table.validityValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get code => $composableBuilder(
    column: $table.code,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minValue => $composableBuilder(
    column: $table.minValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxValue => $composableBuilder(
    column: $table.maxValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get denominations => $composableBuilder(
    column: $table.denominations,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get redemptionDetails => $composableBuilder(
    column: $table.redemptionDetails,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get countries => $composableBuilder(
    column: $table.countries,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stores => $composableBuilder(
    column: $table.stores,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categories => $composableBuilder(
    column: $table.categories,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get validityType => $composableBuilder(
    column: $table.validityType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get validityValue => $composableBuilder(
    column: $table.validityValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<double> get minValue =>
      $composableBuilder(column: $table.minValue, builder: (column) => column);

  GeneratedColumn<double> get maxValue =>
      $composableBuilder(column: $table.maxValue, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<double>, String> get denominations =>
      $composableBuilder(
        column: $table.denominations,
        builder: (column) => column,
      );

  GeneratedColumnWithTypeConverter<List<String>, String>
  get redemptionDetails => $composableBuilder(
    column: $table.redemptionDetails,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<String>, String> get countries =>
      $composableBuilder(column: $table.countries, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get stores =>
      $composableBuilder(column: $table.stores, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get categories =>
      $composableBuilder(
        column: $table.categories,
        builder: (column) => column,
      );

  GeneratedColumn<String> get validityType => $composableBuilder(
    column: $table.validityType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get validityValue => $composableBuilder(
    column: $table.validityValue,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);
}

class $$ProductsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductsTable,
          Product,
          $$ProductsTableFilterComposer,
          $$ProductsTableOrderingComposer,
          $$ProductsTableAnnotationComposer,
          $$ProductsTableCreateCompanionBuilder,
          $$ProductsTableUpdateCompanionBuilder,
          (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
          Product,
          PrefetchHooks Function()
        > {
  $$ProductsTableTableManager(_$AppDatabase db, $ProductsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> code = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<double> minValue = const Value.absent(),
                Value<double> maxValue = const Value.absent(),
                Value<List<double>> denominations = const Value.absent(),
                Value<List<String>> redemptionDetails = const Value.absent(),
                Value<List<String>> countries = const Value.absent(),
                Value<List<String>> stores = const Value.absent(),
                Value<List<String>> categories = const Value.absent(),
                Value<String> validityType = const Value.absent(),
                Value<int> validityValue = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> expiresAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion(
                code: code,
                name: name,
                imageUrl: imageUrl,
                description: description,
                currency: currency,
                minValue: minValue,
                maxValue: maxValue,
                denominations: denominations,
                redemptionDetails: redemptionDetails,
                countries: countries,
                stores: stores,
                categories: categories,
                validityType: validityType,
                validityValue: validityValue,
                createdAt: createdAt,
                expiresAt: expiresAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String code,
                required String name,
                required String imageUrl,
                required String description,
                required String currency,
                required double minValue,
                required double maxValue,
                required List<double> denominations,
                required List<String> redemptionDetails,
                required List<String> countries,
                required List<String> stores,
                required List<String> categories,
                required String validityType,
                required int validityValue,
                required DateTime createdAt,
                required DateTime expiresAt,
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion.insert(
                code: code,
                name: name,
                imageUrl: imageUrl,
                description: description,
                currency: currency,
                minValue: minValue,
                maxValue: maxValue,
                denominations: denominations,
                redemptionDetails: redemptionDetails,
                countries: countries,
                stores: stores,
                categories: categories,
                validityType: validityType,
                validityValue: validityValue,
                createdAt: createdAt,
                expiresAt: expiresAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductsTable,
      Product,
      $$ProductsTableFilterComposer,
      $$ProductsTableOrderingComposer,
      $$ProductsTableAnnotationComposer,
      $$ProductsTableCreateCompanionBuilder,
      $$ProductsTableUpdateCompanionBuilder,
      (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
      Product,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db, _db.products);
}
