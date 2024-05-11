class Input$UserUpdateInput {
  factory Input$UserUpdateInput({
    Input$StringFieldUpdateOperationsInput? fullName,
    Input$NullableStringFieldUpdateOperationsInput? email,
  }) =>
      Input$UserUpdateInput._({
        if (fullName != null) r'fullName': fullName,
        if (email != null) r'email': email,
      });

  Input$UserUpdateInput._(this._$data);

  factory Input$UserUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fullName')) {
      final l$fullName = data['fullName'];
      result$data['fullName'] = l$fullName == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$fullName as Map<String, dynamic>));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : Input$NullableStringFieldUpdateOperationsInput.fromJson(
              (l$email as Map<String, dynamic>));
    }
    return Input$UserUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFieldUpdateOperationsInput? get fullName =>
      (_$data['fullName'] as Input$StringFieldUpdateOperationsInput?);

  Input$NullableStringFieldUpdateOperationsInput? get email =>
      (_$data['email'] as Input$NullableStringFieldUpdateOperationsInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fullName')) {
      final l$fullName = fullName;
      result$data['fullName'] = l$fullName?.toJson();
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserUpdateInput<Input$UserUpdateInput> get copyWith =>
      CopyWith$Input$UserUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserUpdateInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (_$data.containsKey('fullName') !=
        other._$data.containsKey('fullName')) {
      return false;
    }
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fullName = fullName;
    final l$email = email;
    return Object.hashAll([
      _$data.containsKey('fullName') ? l$fullName : const {},
      _$data.containsKey('email') ? l$email : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserUpdateInput<TRes> {
  factory CopyWith$Input$UserUpdateInput(
    Input$UserUpdateInput instance,
    TRes Function(Input$UserUpdateInput) then,
  ) = _CopyWithImpl$Input$UserUpdateInput;

  factory CopyWith$Input$UserUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserUpdateInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? fullName,
    Input$NullableStringFieldUpdateOperationsInput? email,
  });
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get fullName;
  CopyWith$Input$NullableStringFieldUpdateOperationsInput<TRes> get email;
}

class _CopyWithImpl$Input$UserUpdateInput<TRes>
    implements CopyWith$Input$UserUpdateInput<TRes> {
  _CopyWithImpl$Input$UserUpdateInput(
    this._instance,
    this._then,
  );

  final Input$UserUpdateInput _instance;

  final TRes Function(Input$UserUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fullName = _undefined,
    Object? email = _undefined,
  }) =>
      _then(Input$UserUpdateInput._({
        ..._instance._$data,
        if (fullName != _undefined)
          'fullName': (fullName as Input$StringFieldUpdateOperationsInput?),
        if (email != _undefined)
          'email': (email as Input$NullableStringFieldUpdateOperationsInput?),
      }));

  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get fullName {
    final local$fullName = _instance.fullName;
    return local$fullName == null
        ? CopyWith$Input$StringFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$StringFieldUpdateOperationsInput(
            local$fullName, (e) => call(fullName: e));
  }

  CopyWith$Input$NullableStringFieldUpdateOperationsInput<TRes> get email {
    final local$email = _instance.email;
    return local$email == null
        ? CopyWith$Input$NullableStringFieldUpdateOperationsInput.stub(
            _then(_instance))
        : CopyWith$Input$NullableStringFieldUpdateOperationsInput(
            local$email, (e) => call(email: e));
  }
}

class _CopyWithStubImpl$Input$UserUpdateInput<TRes>
    implements CopyWith$Input$UserUpdateInput<TRes> {
  _CopyWithStubImpl$Input$UserUpdateInput(this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? fullName,
    Input$NullableStringFieldUpdateOperationsInput? email,
  }) =>
      _res;

  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get fullName =>
      CopyWith$Input$StringFieldUpdateOperationsInput.stub(_res);

  CopyWith$Input$NullableStringFieldUpdateOperationsInput<TRes> get email =>
      CopyWith$Input$NullableStringFieldUpdateOperationsInput.stub(_res);
}

class Input$StringFieldUpdateOperationsInput {
  factory Input$StringFieldUpdateOperationsInput({String? $set}) =>
      Input$StringFieldUpdateOperationsInput._({
        if ($set != null) r'set': $set,
      });

  Input$StringFieldUpdateOperationsInput._(this._$data);

  factory Input$StringFieldUpdateOperationsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as String?);
    }
    return Input$StringFieldUpdateOperationsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $set => (_$data['set'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set;
    }
    return result$data;
  }

  CopyWith$Input$StringFieldUpdateOperationsInput<
          Input$StringFieldUpdateOperationsInput>
      get copyWith => CopyWith$Input$StringFieldUpdateOperationsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringFieldUpdateOperationsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != lOther$$set) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$set = $set;
    return Object.hashAll([_$data.containsKey('set') ? l$$set : const {}]);
  }
}

abstract class CopyWith$Input$StringFieldUpdateOperationsInput<TRes> {
  factory CopyWith$Input$StringFieldUpdateOperationsInput(
    Input$StringFieldUpdateOperationsInput instance,
    TRes Function(Input$StringFieldUpdateOperationsInput) then,
  ) = _CopyWithImpl$Input$StringFieldUpdateOperationsInput;

  factory CopyWith$Input$StringFieldUpdateOperationsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StringFieldUpdateOperationsInput;

  TRes call({String? $set});
}

class _CopyWithImpl$Input$StringFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$StringFieldUpdateOperationsInput<TRes> {
  _CopyWithImpl$Input$StringFieldUpdateOperationsInput(
    this._instance,
    this._then,
  );

  final Input$StringFieldUpdateOperationsInput _instance;

  final TRes Function(Input$StringFieldUpdateOperationsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $set = _undefined}) =>
      _then(Input$StringFieldUpdateOperationsInput._({
        ..._instance._$data,
        if ($set != _undefined) 'set': ($set as String?),
      }));
}

class _CopyWithStubImpl$Input$StringFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$StringFieldUpdateOperationsInput<TRes> {
  _CopyWithStubImpl$Input$StringFieldUpdateOperationsInput(this._res);

  TRes _res;

  call({String? $set}) => _res;
}

class Input$NullableStringFieldUpdateOperationsInput {
  factory Input$NullableStringFieldUpdateOperationsInput({String? $set}) =>
      Input$NullableStringFieldUpdateOperationsInput._({
        if ($set != null) r'set': $set,
      });

  Input$NullableStringFieldUpdateOperationsInput._(this._$data);

  factory Input$NullableStringFieldUpdateOperationsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as String?);
    }
    return Input$NullableStringFieldUpdateOperationsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $set => (_$data['set'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set;
    }
    return result$data;
  }

  CopyWith$Input$NullableStringFieldUpdateOperationsInput<
          Input$NullableStringFieldUpdateOperationsInput>
      get copyWith => CopyWith$Input$NullableStringFieldUpdateOperationsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NullableStringFieldUpdateOperationsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != lOther$$set) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$set = $set;
    return Object.hashAll([_$data.containsKey('set') ? l$$set : const {}]);
  }
}

abstract class CopyWith$Input$NullableStringFieldUpdateOperationsInput<TRes> {
  factory CopyWith$Input$NullableStringFieldUpdateOperationsInput(
    Input$NullableStringFieldUpdateOperationsInput instance,
    TRes Function(Input$NullableStringFieldUpdateOperationsInput) then,
  ) = _CopyWithImpl$Input$NullableStringFieldUpdateOperationsInput;

  factory CopyWith$Input$NullableStringFieldUpdateOperationsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$NullableStringFieldUpdateOperationsInput;

  TRes call({String? $set});
}

class _CopyWithImpl$Input$NullableStringFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$NullableStringFieldUpdateOperationsInput<TRes> {
  _CopyWithImpl$Input$NullableStringFieldUpdateOperationsInput(
    this._instance,
    this._then,
  );

  final Input$NullableStringFieldUpdateOperationsInput _instance;

  final TRes Function(Input$NullableStringFieldUpdateOperationsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $set = _undefined}) =>
      _then(Input$NullableStringFieldUpdateOperationsInput._({
        ..._instance._$data,
        if ($set != _undefined) 'set': ($set as String?),
      }));
}

class _CopyWithStubImpl$Input$NullableStringFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$NullableStringFieldUpdateOperationsInput<TRes> {
  _CopyWithStubImpl$Input$NullableStringFieldUpdateOperationsInput(this._res);

  TRes _res;

  call({String? $set}) => _res;
}

class Input$UserWhereUniqueInput {
  factory Input$UserWhereUniqueInput({String? userId}) =>
      Input$UserWhereUniqueInput._({
        if (userId != null) r'userId': userId,
      });

  Input$UserWhereUniqueInput._(this._$data);

  factory Input$UserWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    return Input$UserWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get userId => (_$data['userId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Input$UserWhereUniqueInput<Input$UserWhereUniqueInput>
      get copyWith => CopyWith$Input$UserWhereUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([_$data.containsKey('userId') ? l$userId : const {}]);
  }
}

abstract class CopyWith$Input$UserWhereUniqueInput<TRes> {
  factory CopyWith$Input$UserWhereUniqueInput(
    Input$UserWhereUniqueInput instance,
    TRes Function(Input$UserWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$UserWhereUniqueInput;

  factory CopyWith$Input$UserWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserWhereUniqueInput;

  TRes call({String? userId});
}

class _CopyWithImpl$Input$UserWhereUniqueInput<TRes>
    implements CopyWith$Input$UserWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$UserWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$UserWhereUniqueInput _instance;

  final TRes Function(Input$UserWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) =>
      _then(Input$UserWhereUniqueInput._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as String?),
      }));
}

class _CopyWithStubImpl$Input$UserWhereUniqueInput<TRes>
    implements CopyWith$Input$UserWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$UserWhereUniqueInput(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
