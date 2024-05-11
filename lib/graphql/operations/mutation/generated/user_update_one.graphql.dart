import '../../../schema/generated/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UserUpdateOne {
  factory Variables$Mutation$UserUpdateOne({
    required Input$UserUpdateInput data,
    required Input$UserWhereUniqueInput where,
  }) =>
      Variables$Mutation$UserUpdateOne._({
        r'data': data,
        r'where': where,
      });

  Variables$Mutation$UserUpdateOne._(this._$data);

  factory Variables$Mutation$UserUpdateOne.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$UserUpdateInput.fromJson((l$data as Map<String, dynamic>));
    final l$where = data['where'];
    result$data['where'] =
        Input$UserWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    return Variables$Mutation$UserUpdateOne._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserUpdateInput get data => (_$data['data'] as Input$UserUpdateInput);

  Input$UserWhereUniqueInput get where =>
      (_$data['where'] as Input$UserWhereUniqueInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UserUpdateOne<Variables$Mutation$UserUpdateOne>
      get copyWith => CopyWith$Variables$Mutation$UserUpdateOne(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UserUpdateOne) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$where = where;
    return Object.hashAll([
      l$data,
      l$where,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UserUpdateOne<TRes> {
  factory CopyWith$Variables$Mutation$UserUpdateOne(
    Variables$Mutation$UserUpdateOne instance,
    TRes Function(Variables$Mutation$UserUpdateOne) then,
  ) = _CopyWithImpl$Variables$Mutation$UserUpdateOne;

  factory CopyWith$Variables$Mutation$UserUpdateOne.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UserUpdateOne;

  TRes call({
    Input$UserUpdateInput? data,
    Input$UserWhereUniqueInput? where,
  });
}

class _CopyWithImpl$Variables$Mutation$UserUpdateOne<TRes>
    implements CopyWith$Variables$Mutation$UserUpdateOne<TRes> {
  _CopyWithImpl$Variables$Mutation$UserUpdateOne(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UserUpdateOne _instance;

  final TRes Function(Variables$Mutation$UserUpdateOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Mutation$UserUpdateOne._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$UserUpdateInput),
        if (where != _undefined && where != null)
          'where': (where as Input$UserWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UserUpdateOne<TRes>
    implements CopyWith$Variables$Mutation$UserUpdateOne<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UserUpdateOne(this._res);

  TRes _res;

  call({
    Input$UserUpdateInput? data,
    Input$UserWhereUniqueInput? where,
  }) =>
      _res;
}

class Mutation$UserUpdateOne {
  Mutation$UserUpdateOne({
    this.userUpdateOne,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UserUpdateOne.fromJson(Map<String, dynamic> json) {
    final l$userUpdateOne = json['userUpdateOne'];
    final l$$__typename = json['__typename'];
    return Mutation$UserUpdateOne(
      userUpdateOne: l$userUpdateOne == null
          ? null
          : Mutation$UserUpdateOne$userUpdateOne.fromJson(
              (l$userUpdateOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UserUpdateOne$userUpdateOne? userUpdateOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userUpdateOne = userUpdateOne;
    _resultData['userUpdateOne'] = l$userUpdateOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userUpdateOne = userUpdateOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userUpdateOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UserUpdateOne) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userUpdateOne = userUpdateOne;
    final lOther$userUpdateOne = other.userUpdateOne;
    if (l$userUpdateOne != lOther$userUpdateOne) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UserUpdateOne on Mutation$UserUpdateOne {
  CopyWith$Mutation$UserUpdateOne<Mutation$UserUpdateOne> get copyWith =>
      CopyWith$Mutation$UserUpdateOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UserUpdateOne<TRes> {
  factory CopyWith$Mutation$UserUpdateOne(
    Mutation$UserUpdateOne instance,
    TRes Function(Mutation$UserUpdateOne) then,
  ) = _CopyWithImpl$Mutation$UserUpdateOne;

  factory CopyWith$Mutation$UserUpdateOne.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UserUpdateOne;

  TRes call({
    Mutation$UserUpdateOne$userUpdateOne? userUpdateOne,
    String? $__typename,
  });
  CopyWith$Mutation$UserUpdateOne$userUpdateOne<TRes> get userUpdateOne;
}

class _CopyWithImpl$Mutation$UserUpdateOne<TRes>
    implements CopyWith$Mutation$UserUpdateOne<TRes> {
  _CopyWithImpl$Mutation$UserUpdateOne(
    this._instance,
    this._then,
  );

  final Mutation$UserUpdateOne _instance;

  final TRes Function(Mutation$UserUpdateOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userUpdateOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UserUpdateOne(
        userUpdateOne: userUpdateOne == _undefined
            ? _instance.userUpdateOne
            : (userUpdateOne as Mutation$UserUpdateOne$userUpdateOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UserUpdateOne$userUpdateOne<TRes> get userUpdateOne {
    final local$userUpdateOne = _instance.userUpdateOne;
    return local$userUpdateOne == null
        ? CopyWith$Mutation$UserUpdateOne$userUpdateOne.stub(_then(_instance))
        : CopyWith$Mutation$UserUpdateOne$userUpdateOne(
            local$userUpdateOne, (e) => call(userUpdateOne: e));
  }
}

class _CopyWithStubImpl$Mutation$UserUpdateOne<TRes>
    implements CopyWith$Mutation$UserUpdateOne<TRes> {
  _CopyWithStubImpl$Mutation$UserUpdateOne(this._res);

  TRes _res;

  call({
    Mutation$UserUpdateOne$userUpdateOne? userUpdateOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UserUpdateOne$userUpdateOne<TRes> get userUpdateOne =>
      CopyWith$Mutation$UserUpdateOne$userUpdateOne.stub(_res);
}

const documentNodeMutationUserUpdateOne = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UserUpdateOne'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'userUpdateOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fullName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UserUpdateOne _parserFn$Mutation$UserUpdateOne(
        Map<String, dynamic> data) =>
    Mutation$UserUpdateOne.fromJson(data);
typedef OnMutationCompleted$Mutation$UserUpdateOne = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UserUpdateOne?,
);

class Options$Mutation$UserUpdateOne
    extends graphql.MutationOptions<Mutation$UserUpdateOne> {
  Options$Mutation$UserUpdateOne({
    String? operationName,
    required Variables$Mutation$UserUpdateOne variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UserUpdateOne? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UserUpdateOne? onCompleted,
    graphql.OnMutationUpdate<Mutation$UserUpdateOne>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UserUpdateOne(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUserUpdateOne,
          parserFn: _parserFn$Mutation$UserUpdateOne,
        );

  final OnMutationCompleted$Mutation$UserUpdateOne? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UserUpdateOne
    extends graphql.WatchQueryOptions<Mutation$UserUpdateOne> {
  WatchOptions$Mutation$UserUpdateOne({
    String? operationName,
    required Variables$Mutation$UserUpdateOne variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UserUpdateOne? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUserUpdateOne,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UserUpdateOne,
        );
}

extension ClientExtension$Mutation$UserUpdateOne on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UserUpdateOne>> mutate$UserUpdateOne(
          Options$Mutation$UserUpdateOne options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UserUpdateOne> watchMutation$UserUpdateOne(
          WatchOptions$Mutation$UserUpdateOne options) =>
      this.watchMutation(options);
}

class Mutation$UserUpdateOne$HookResult {
  Mutation$UserUpdateOne$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UserUpdateOne runMutation;

  final graphql.QueryResult<Mutation$UserUpdateOne> result;
}

Mutation$UserUpdateOne$HookResult useMutation$UserUpdateOne(
    [WidgetOptions$Mutation$UserUpdateOne? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UserUpdateOne());
  return Mutation$UserUpdateOne$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UserUpdateOne> useWatchMutation$UserUpdateOne(
        WatchOptions$Mutation$UserUpdateOne options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UserUpdateOne
    extends graphql.MutationOptions<Mutation$UserUpdateOne> {
  WidgetOptions$Mutation$UserUpdateOne({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UserUpdateOne? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UserUpdateOne? onCompleted,
    graphql.OnMutationUpdate<Mutation$UserUpdateOne>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UserUpdateOne(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUserUpdateOne,
          parserFn: _parserFn$Mutation$UserUpdateOne,
        );

  final OnMutationCompleted$Mutation$UserUpdateOne? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UserUpdateOne
    = graphql.MultiSourceResult<Mutation$UserUpdateOne> Function(
  Variables$Mutation$UserUpdateOne, {
  Object? optimisticResult,
  Mutation$UserUpdateOne? typedOptimisticResult,
});
typedef Builder$Mutation$UserUpdateOne = widgets.Widget Function(
  RunMutation$Mutation$UserUpdateOne,
  graphql.QueryResult<Mutation$UserUpdateOne>?,
);

class Mutation$UserUpdateOne$Widget
    extends graphql_flutter.Mutation<Mutation$UserUpdateOne> {
  Mutation$UserUpdateOne$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UserUpdateOne? options,
    required Builder$Mutation$UserUpdateOne builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UserUpdateOne(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UserUpdateOne$userUpdateOne {
  Mutation$UserUpdateOne$userUpdateOne({
    required this.id,
    required this.fullName,
    this.email,
    this.$__typename = 'User',
  });

  factory Mutation$UserUpdateOne$userUpdateOne.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Mutation$UserUpdateOne$userUpdateOne(
      id: (l$id as String),
      fullName: (l$fullName as String),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String fullName;

  final String? email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$fullName = fullName;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$fullName,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UserUpdateOne$userUpdateOne) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UserUpdateOne$userUpdateOne
    on Mutation$UserUpdateOne$userUpdateOne {
  CopyWith$Mutation$UserUpdateOne$userUpdateOne<
          Mutation$UserUpdateOne$userUpdateOne>
      get copyWith => CopyWith$Mutation$UserUpdateOne$userUpdateOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UserUpdateOne$userUpdateOne<TRes> {
  factory CopyWith$Mutation$UserUpdateOne$userUpdateOne(
    Mutation$UserUpdateOne$userUpdateOne instance,
    TRes Function(Mutation$UserUpdateOne$userUpdateOne) then,
  ) = _CopyWithImpl$Mutation$UserUpdateOne$userUpdateOne;

  factory CopyWith$Mutation$UserUpdateOne$userUpdateOne.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UserUpdateOne$userUpdateOne;

  TRes call({
    String? id,
    String? fullName,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UserUpdateOne$userUpdateOne<TRes>
    implements CopyWith$Mutation$UserUpdateOne$userUpdateOne<TRes> {
  _CopyWithImpl$Mutation$UserUpdateOne$userUpdateOne(
    this._instance,
    this._then,
  );

  final Mutation$UserUpdateOne$userUpdateOne _instance;

  final TRes Function(Mutation$UserUpdateOne$userUpdateOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UserUpdateOne$userUpdateOne(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        fullName: fullName == _undefined || fullName == null
            ? _instance.fullName
            : (fullName as String),
        email: email == _undefined ? _instance.email : (email as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UserUpdateOne$userUpdateOne<TRes>
    implements CopyWith$Mutation$UserUpdateOne$userUpdateOne<TRes> {
  _CopyWithStubImpl$Mutation$UserUpdateOne$userUpdateOne(this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? email,
    String? $__typename,
  }) =>
      _res;
}
