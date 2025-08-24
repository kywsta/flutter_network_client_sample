import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$GetAllFilms {
  Query$GetAllFilms({this.allFilms, this.$__typename = 'Root'});

  factory Query$GetAllFilms.fromJson(Map<String, dynamic> json) {
    final l$allFilms = json['allFilms'];
    final l$$__typename = json['__typename'];
    return Query$GetAllFilms(
      allFilms: l$allFilms == null
          ? null
          : Query$GetAllFilms$allFilms.fromJson(
              (l$allFilms as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllFilms$allFilms? allFilms;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allFilms = allFilms;
    _resultData['allFilms'] = l$allFilms?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allFilms = allFilms;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allFilms, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllFilms || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allFilms = allFilms;
    final lOther$allFilms = other.allFilms;
    if (l$allFilms != lOther$allFilms) {
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

extension UtilityExtension$Query$GetAllFilms on Query$GetAllFilms {
  CopyWith$Query$GetAllFilms<Query$GetAllFilms> get copyWith =>
      CopyWith$Query$GetAllFilms(this, (i) => i);
}

abstract class CopyWith$Query$GetAllFilms<TRes> {
  factory CopyWith$Query$GetAllFilms(
    Query$GetAllFilms instance,
    TRes Function(Query$GetAllFilms) then,
  ) = _CopyWithImpl$Query$GetAllFilms;

  factory CopyWith$Query$GetAllFilms.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllFilms;

  TRes call({Query$GetAllFilms$allFilms? allFilms, String? $__typename});
  CopyWith$Query$GetAllFilms$allFilms<TRes> get allFilms;
}

class _CopyWithImpl$Query$GetAllFilms<TRes>
    implements CopyWith$Query$GetAllFilms<TRes> {
  _CopyWithImpl$Query$GetAllFilms(this._instance, this._then);

  final Query$GetAllFilms _instance;

  final TRes Function(Query$GetAllFilms) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allFilms = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllFilms(
      allFilms: allFilms == _undefined
          ? _instance.allFilms
          : (allFilms as Query$GetAllFilms$allFilms?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAllFilms$allFilms<TRes> get allFilms {
    final local$allFilms = _instance.allFilms;
    return local$allFilms == null
        ? CopyWith$Query$GetAllFilms$allFilms.stub(_then(_instance))
        : CopyWith$Query$GetAllFilms$allFilms(
            local$allFilms,
            (e) => call(allFilms: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAllFilms<TRes>
    implements CopyWith$Query$GetAllFilms<TRes> {
  _CopyWithStubImpl$Query$GetAllFilms(this._res);

  TRes _res;

  call({Query$GetAllFilms$allFilms? allFilms, String? $__typename}) => _res;

  CopyWith$Query$GetAllFilms$allFilms<TRes> get allFilms =>
      CopyWith$Query$GetAllFilms$allFilms.stub(_res);
}

const documentNodeQueryGetAllFilms = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllFilms'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'allFilms'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'films'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'director'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'releaseDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'episodeID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'openingCrawl'),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Query$GetAllFilms _parserFn$Query$GetAllFilms(Map<String, dynamic> data) =>
    Query$GetAllFilms.fromJson(data);
typedef OnQueryComplete$Query$GetAllFilms =
    FutureOr<void> Function(Map<String, dynamic>?, Query$GetAllFilms?);

class Options$Query$GetAllFilms
    extends graphql.QueryOptions<Query$GetAllFilms> {
  Options$Query$GetAllFilms({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllFilms? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllFilms? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$GetAllFilms(data),
               ),
         onError: onError,
         document: documentNodeQueryGetAllFilms,
         parserFn: _parserFn$Query$GetAllFilms,
       );

  final OnQueryComplete$Query$GetAllFilms? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$GetAllFilms
    extends graphql.WatchQueryOptions<Query$GetAllFilms> {
  WatchOptions$Query$GetAllFilms({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllFilms? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryGetAllFilms,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$GetAllFilms,
       );
}

class FetchMoreOptions$Query$GetAllFilms extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllFilms({required graphql.UpdateQuery updateQuery})
    : super(updateQuery: updateQuery, document: documentNodeQueryGetAllFilms);
}

extension ClientExtension$Query$GetAllFilms on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllFilms>> query$GetAllFilms([
    Options$Query$GetAllFilms? options,
  ]) async => await this.query(options ?? Options$Query$GetAllFilms());

  graphql.ObservableQuery<Query$GetAllFilms> watchQuery$GetAllFilms([
    WatchOptions$Query$GetAllFilms? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$GetAllFilms());
  
  void writeQuery$GetAllFilms({
    required Query$GetAllFilms data,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryGetAllFilms),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  
  Query$GetAllFilms? readQuery$GetAllFilms({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetAllFilms),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllFilms.fromJson(result);
  }
}

class Query$GetAllFilms$allFilms {
  Query$GetAllFilms$allFilms({
    this.films,
    this.$__typename = 'FilmsConnection',
  });

  factory Query$GetAllFilms$allFilms.fromJson(Map<String, dynamic> json) {
    final l$films = json['films'];
    final l$$__typename = json['__typename'];
    return Query$GetAllFilms$allFilms(
      films: (l$films as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAllFilms$allFilms$films.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllFilms$allFilms$films?>? films;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$films = films;
    _resultData['films'] = l$films?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$films = films;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$films == null ? null : Object.hashAll(l$films.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllFilms$allFilms ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$films = films;
    final lOther$films = other.films;
    if (l$films != null && lOther$films != null) {
      if (l$films.length != lOther$films.length) {
        return false;
      }
      for (int i = 0; i < l$films.length; i++) {
        final l$films$entry = l$films[i];
        final lOther$films$entry = lOther$films[i];
        if (l$films$entry != lOther$films$entry) {
          return false;
        }
      }
    } else if (l$films != lOther$films) {
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

extension UtilityExtension$Query$GetAllFilms$allFilms
    on Query$GetAllFilms$allFilms {
  CopyWith$Query$GetAllFilms$allFilms<Query$GetAllFilms$allFilms>
  get copyWith => CopyWith$Query$GetAllFilms$allFilms(this, (i) => i);
}

abstract class CopyWith$Query$GetAllFilms$allFilms<TRes> {
  factory CopyWith$Query$GetAllFilms$allFilms(
    Query$GetAllFilms$allFilms instance,
    TRes Function(Query$GetAllFilms$allFilms) then,
  ) = _CopyWithImpl$Query$GetAllFilms$allFilms;

  factory CopyWith$Query$GetAllFilms$allFilms.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllFilms$allFilms;

  TRes call({
    List<Query$GetAllFilms$allFilms$films?>? films,
    String? $__typename,
  });
  TRes films(
    Iterable<Query$GetAllFilms$allFilms$films?>? Function(
      Iterable<
        CopyWith$Query$GetAllFilms$allFilms$films<
          Query$GetAllFilms$allFilms$films
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllFilms$allFilms<TRes>
    implements CopyWith$Query$GetAllFilms$allFilms<TRes> {
  _CopyWithImpl$Query$GetAllFilms$allFilms(this._instance, this._then);

  final Query$GetAllFilms$allFilms _instance;

  final TRes Function(Query$GetAllFilms$allFilms) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? films = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAllFilms$allFilms(
          films: films == _undefined
              ? _instance.films
              : (films as List<Query$GetAllFilms$allFilms$films?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes films(
    Iterable<Query$GetAllFilms$allFilms$films?>? Function(
      Iterable<
        CopyWith$Query$GetAllFilms$allFilms$films<
          Query$GetAllFilms$allFilms$films
        >?
      >?,
    )
    _fn,
  ) => call(
    films: _fn(
      _instance.films?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAllFilms$allFilms$films(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllFilms$allFilms<TRes>
    implements CopyWith$Query$GetAllFilms$allFilms<TRes> {
  _CopyWithStubImpl$Query$GetAllFilms$allFilms(this._res);

  TRes _res;

  call({List<Query$GetAllFilms$allFilms$films?>? films, String? $__typename}) =>
      _res;

  films(_fn) => _res;
}

class Query$GetAllFilms$allFilms$films {
  Query$GetAllFilms$allFilms$films({
    required this.id,
    this.title,
    this.director,
    this.releaseDate,
    this.episodeID,
    this.openingCrawl,
    this.$__typename = 'Film',
  });

  factory Query$GetAllFilms$allFilms$films.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$director = json['director'];
    final l$releaseDate = json['releaseDate'];
    final l$episodeID = json['episodeID'];
    final l$openingCrawl = json['openingCrawl'];
    final l$$__typename = json['__typename'];
    return Query$GetAllFilms$allFilms$films(
      id: (l$id as String),
      title: (l$title as String?),
      director: (l$director as String?),
      releaseDate: (l$releaseDate as String?),
      episodeID: (l$episodeID as int?),
      openingCrawl: (l$openingCrawl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final String? director;

  final String? releaseDate;

  final int? episodeID;

  final String? openingCrawl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$director = director;
    _resultData['director'] = l$director;
    final l$releaseDate = releaseDate;
    _resultData['releaseDate'] = l$releaseDate;
    final l$episodeID = episodeID;
    _resultData['episodeID'] = l$episodeID;
    final l$openingCrawl = openingCrawl;
    _resultData['openingCrawl'] = l$openingCrawl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$director = director;
    final l$releaseDate = releaseDate;
    final l$episodeID = episodeID;
    final l$openingCrawl = openingCrawl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$director,
      l$releaseDate,
      l$episodeID,
      l$openingCrawl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllFilms$allFilms$films ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$director = director;
    final lOther$director = other.director;
    if (l$director != lOther$director) {
      return false;
    }
    final l$releaseDate = releaseDate;
    final lOther$releaseDate = other.releaseDate;
    if (l$releaseDate != lOther$releaseDate) {
      return false;
    }
    final l$episodeID = episodeID;
    final lOther$episodeID = other.episodeID;
    if (l$episodeID != lOther$episodeID) {
      return false;
    }
    final l$openingCrawl = openingCrawl;
    final lOther$openingCrawl = other.openingCrawl;
    if (l$openingCrawl != lOther$openingCrawl) {
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

extension UtilityExtension$Query$GetAllFilms$allFilms$films
    on Query$GetAllFilms$allFilms$films {
  CopyWith$Query$GetAllFilms$allFilms$films<Query$GetAllFilms$allFilms$films>
  get copyWith => CopyWith$Query$GetAllFilms$allFilms$films(this, (i) => i);
}

abstract class CopyWith$Query$GetAllFilms$allFilms$films<TRes> {
  factory CopyWith$Query$GetAllFilms$allFilms$films(
    Query$GetAllFilms$allFilms$films instance,
    TRes Function(Query$GetAllFilms$allFilms$films) then,
  ) = _CopyWithImpl$Query$GetAllFilms$allFilms$films;

  factory CopyWith$Query$GetAllFilms$allFilms$films.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllFilms$allFilms$films;

  TRes call({
    String? id,
    String? title,
    String? director,
    String? releaseDate,
    int? episodeID,
    String? openingCrawl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllFilms$allFilms$films<TRes>
    implements CopyWith$Query$GetAllFilms$allFilms$films<TRes> {
  _CopyWithImpl$Query$GetAllFilms$allFilms$films(this._instance, this._then);

  final Query$GetAllFilms$allFilms$films _instance;

  final TRes Function(Query$GetAllFilms$allFilms$films) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? director = _undefined,
    Object? releaseDate = _undefined,
    Object? episodeID = _undefined,
    Object? openingCrawl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllFilms$allFilms$films(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      title: title == _undefined ? _instance.title : (title as String?),
      director: director == _undefined
          ? _instance.director
          : (director as String?),
      releaseDate: releaseDate == _undefined
          ? _instance.releaseDate
          : (releaseDate as String?),
      episodeID: episodeID == _undefined
          ? _instance.episodeID
          : (episodeID as int?),
      openingCrawl: openingCrawl == _undefined
          ? _instance.openingCrawl
          : (openingCrawl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllFilms$allFilms$films<TRes>
    implements CopyWith$Query$GetAllFilms$allFilms$films<TRes> {
  _CopyWithStubImpl$Query$GetAllFilms$allFilms$films(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? director,
    String? releaseDate,
    int? episodeID,
    String? openingCrawl,
    String? $__typename,
  }) => _res;
}

class Variables$Query$GetFilmById {
  factory Variables$Query$GetFilmById({required String id}) =>
      Variables$Query$GetFilmById._({r'id': id});

  Variables$Query$GetFilmById._(this._$data);

  factory Variables$Query$GetFilmById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetFilmById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetFilmById<Variables$Query$GetFilmById>
  get copyWith => CopyWith$Variables$Query$GetFilmById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetFilmById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetFilmById<TRes> {
  factory CopyWith$Variables$Query$GetFilmById(
    Variables$Query$GetFilmById instance,
    TRes Function(Variables$Query$GetFilmById) then,
  ) = _CopyWithImpl$Variables$Query$GetFilmById;

  factory CopyWith$Variables$Query$GetFilmById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFilmById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetFilmById<TRes>
    implements CopyWith$Variables$Query$GetFilmById<TRes> {
  _CopyWithImpl$Variables$Query$GetFilmById(this._instance, this._then);

  final Variables$Query$GetFilmById _instance;

  final TRes Function(Variables$Query$GetFilmById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetFilmById._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetFilmById<TRes>
    implements CopyWith$Variables$Query$GetFilmById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFilmById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetFilmById {
  Query$GetFilmById({this.film, this.$__typename = 'Root'});

  factory Query$GetFilmById.fromJson(Map<String, dynamic> json) {
    final l$film = json['film'];
    final l$$__typename = json['__typename'];
    return Query$GetFilmById(
      film: l$film == null
          ? null
          : Query$GetFilmById$film.fromJson((l$film as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetFilmById$film? film;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$film = film;
    _resultData['film'] = l$film?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$film = film;
    final l$$__typename = $__typename;
    return Object.hashAll([l$film, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFilmById || runtimeType != other.runtimeType) {
      return false;
    }
    final l$film = film;
    final lOther$film = other.film;
    if (l$film != lOther$film) {
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

extension UtilityExtension$Query$GetFilmById on Query$GetFilmById {
  CopyWith$Query$GetFilmById<Query$GetFilmById> get copyWith =>
      CopyWith$Query$GetFilmById(this, (i) => i);
}

abstract class CopyWith$Query$GetFilmById<TRes> {
  factory CopyWith$Query$GetFilmById(
    Query$GetFilmById instance,
    TRes Function(Query$GetFilmById) then,
  ) = _CopyWithImpl$Query$GetFilmById;

  factory CopyWith$Query$GetFilmById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFilmById;

  TRes call({Query$GetFilmById$film? film, String? $__typename});
  CopyWith$Query$GetFilmById$film<TRes> get film;
}

class _CopyWithImpl$Query$GetFilmById<TRes>
    implements CopyWith$Query$GetFilmById<TRes> {
  _CopyWithImpl$Query$GetFilmById(this._instance, this._then);

  final Query$GetFilmById _instance;

  final TRes Function(Query$GetFilmById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? film = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetFilmById(
          film: film == _undefined
              ? _instance.film
              : (film as Query$GetFilmById$film?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetFilmById$film<TRes> get film {
    final local$film = _instance.film;
    return local$film == null
        ? CopyWith$Query$GetFilmById$film.stub(_then(_instance))
        : CopyWith$Query$GetFilmById$film(local$film, (e) => call(film: e));
  }
}

class _CopyWithStubImpl$Query$GetFilmById<TRes>
    implements CopyWith$Query$GetFilmById<TRes> {
  _CopyWithStubImpl$Query$GetFilmById(this._res);

  TRes _res;

  call({Query$GetFilmById$film? film, String? $__typename}) => _res;

  CopyWith$Query$GetFilmById$film<TRes> get film =>
      CopyWith$Query$GetFilmById$film.stub(_res);
}

const documentNodeQueryGetFilmById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetFilmById'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'film'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'director'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'releaseDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'episodeID'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'openingCrawl'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'characterConnection'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'characters'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'birthYear'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'eyeColor'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'gender'),
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
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'planetConnection'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'planets'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'population'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'climates'),
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
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Query$GetFilmById _parserFn$Query$GetFilmById(Map<String, dynamic> data) =>
    Query$GetFilmById.fromJson(data);
typedef OnQueryComplete$Query$GetFilmById =
    FutureOr<void> Function(Map<String, dynamic>?, Query$GetFilmById?);

class Options$Query$GetFilmById
    extends graphql.QueryOptions<Query$GetFilmById> {
  Options$Query$GetFilmById({
    String? operationName,
    required Variables$Query$GetFilmById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetFilmById? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetFilmById? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$GetFilmById(data),
               ),
         onError: onError,
         document: documentNodeQueryGetFilmById,
         parserFn: _parserFn$Query$GetFilmById,
       );

  final OnQueryComplete$Query$GetFilmById? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$GetFilmById
    extends graphql.WatchQueryOptions<Query$GetFilmById> {
  WatchOptions$Query$GetFilmById({
    String? operationName,
    required Variables$Query$GetFilmById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetFilmById? typedOptimisticResult,
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
         document: documentNodeQueryGetFilmById,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$GetFilmById,
       );
}

class FetchMoreOptions$Query$GetFilmById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetFilmById({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetFilmById variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryGetFilmById,
       );
}

extension ClientExtension$Query$GetFilmById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetFilmById>> query$GetFilmById(
    Options$Query$GetFilmById options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$GetFilmById> watchQuery$GetFilmById(
    WatchOptions$Query$GetFilmById options,
  ) => this.watchQuery(options);
  void writeQuery$GetFilmById({
    required Query$GetFilmById data,
    required Variables$Query$GetFilmById variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryGetFilmById),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$GetFilmById? readQuery$GetFilmById({
    required Variables$Query$GetFilmById variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetFilmById),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetFilmById.fromJson(result);
  }
}

class Query$GetFilmById$film {
  Query$GetFilmById$film({
    required this.id,
    this.title,
    this.director,
    this.releaseDate,
    this.episodeID,
    this.openingCrawl,
    this.characterConnection,
    this.planetConnection,
    this.$__typename = 'Film',
  });

  factory Query$GetFilmById$film.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$director = json['director'];
    final l$releaseDate = json['releaseDate'];
    final l$episodeID = json['episodeID'];
    final l$openingCrawl = json['openingCrawl'];
    final l$characterConnection = json['characterConnection'];
    final l$planetConnection = json['planetConnection'];
    final l$$__typename = json['__typename'];
    return Query$GetFilmById$film(
      id: (l$id as String),
      title: (l$title as String?),
      director: (l$director as String?),
      releaseDate: (l$releaseDate as String?),
      episodeID: (l$episodeID as int?),
      openingCrawl: (l$openingCrawl as String?),
      characterConnection: l$characterConnection == null
          ? null
          : Query$GetFilmById$film$characterConnection.fromJson(
              (l$characterConnection as Map<String, dynamic>),
            ),
      planetConnection: l$planetConnection == null
          ? null
          : Query$GetFilmById$film$planetConnection.fromJson(
              (l$planetConnection as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final String? director;

  final String? releaseDate;

  final int? episodeID;

  final String? openingCrawl;

  final Query$GetFilmById$film$characterConnection? characterConnection;

  final Query$GetFilmById$film$planetConnection? planetConnection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$director = director;
    _resultData['director'] = l$director;
    final l$releaseDate = releaseDate;
    _resultData['releaseDate'] = l$releaseDate;
    final l$episodeID = episodeID;
    _resultData['episodeID'] = l$episodeID;
    final l$openingCrawl = openingCrawl;
    _resultData['openingCrawl'] = l$openingCrawl;
    final l$characterConnection = characterConnection;
    _resultData['characterConnection'] = l$characterConnection?.toJson();
    final l$planetConnection = planetConnection;
    _resultData['planetConnection'] = l$planetConnection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$director = director;
    final l$releaseDate = releaseDate;
    final l$episodeID = episodeID;
    final l$openingCrawl = openingCrawl;
    final l$characterConnection = characterConnection;
    final l$planetConnection = planetConnection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$director,
      l$releaseDate,
      l$episodeID,
      l$openingCrawl,
      l$characterConnection,
      l$planetConnection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFilmById$film || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$director = director;
    final lOther$director = other.director;
    if (l$director != lOther$director) {
      return false;
    }
    final l$releaseDate = releaseDate;
    final lOther$releaseDate = other.releaseDate;
    if (l$releaseDate != lOther$releaseDate) {
      return false;
    }
    final l$episodeID = episodeID;
    final lOther$episodeID = other.episodeID;
    if (l$episodeID != lOther$episodeID) {
      return false;
    }
    final l$openingCrawl = openingCrawl;
    final lOther$openingCrawl = other.openingCrawl;
    if (l$openingCrawl != lOther$openingCrawl) {
      return false;
    }
    final l$characterConnection = characterConnection;
    final lOther$characterConnection = other.characterConnection;
    if (l$characterConnection != lOther$characterConnection) {
      return false;
    }
    final l$planetConnection = planetConnection;
    final lOther$planetConnection = other.planetConnection;
    if (l$planetConnection != lOther$planetConnection) {
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

extension UtilityExtension$Query$GetFilmById$film on Query$GetFilmById$film {
  CopyWith$Query$GetFilmById$film<Query$GetFilmById$film> get copyWith =>
      CopyWith$Query$GetFilmById$film(this, (i) => i);
}

abstract class CopyWith$Query$GetFilmById$film<TRes> {
  factory CopyWith$Query$GetFilmById$film(
    Query$GetFilmById$film instance,
    TRes Function(Query$GetFilmById$film) then,
  ) = _CopyWithImpl$Query$GetFilmById$film;

  factory CopyWith$Query$GetFilmById$film.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFilmById$film;

  TRes call({
    String? id,
    String? title,
    String? director,
    String? releaseDate,
    int? episodeID,
    String? openingCrawl,
    Query$GetFilmById$film$characterConnection? characterConnection,
    Query$GetFilmById$film$planetConnection? planetConnection,
    String? $__typename,
  });
  CopyWith$Query$GetFilmById$film$characterConnection<TRes>
  get characterConnection;
  CopyWith$Query$GetFilmById$film$planetConnection<TRes> get planetConnection;
}

class _CopyWithImpl$Query$GetFilmById$film<TRes>
    implements CopyWith$Query$GetFilmById$film<TRes> {
  _CopyWithImpl$Query$GetFilmById$film(this._instance, this._then);

  final Query$GetFilmById$film _instance;

  final TRes Function(Query$GetFilmById$film) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? director = _undefined,
    Object? releaseDate = _undefined,
    Object? episodeID = _undefined,
    Object? openingCrawl = _undefined,
    Object? characterConnection = _undefined,
    Object? planetConnection = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetFilmById$film(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      title: title == _undefined ? _instance.title : (title as String?),
      director: director == _undefined
          ? _instance.director
          : (director as String?),
      releaseDate: releaseDate == _undefined
          ? _instance.releaseDate
          : (releaseDate as String?),
      episodeID: episodeID == _undefined
          ? _instance.episodeID
          : (episodeID as int?),
      openingCrawl: openingCrawl == _undefined
          ? _instance.openingCrawl
          : (openingCrawl as String?),
      characterConnection: characterConnection == _undefined
          ? _instance.characterConnection
          : (characterConnection
                as Query$GetFilmById$film$characterConnection?),
      planetConnection: planetConnection == _undefined
          ? _instance.planetConnection
          : (planetConnection as Query$GetFilmById$film$planetConnection?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetFilmById$film$characterConnection<TRes>
  get characterConnection {
    final local$characterConnection = _instance.characterConnection;
    return local$characterConnection == null
        ? CopyWith$Query$GetFilmById$film$characterConnection.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetFilmById$film$characterConnection(
            local$characterConnection,
            (e) => call(characterConnection: e),
          );
  }

  CopyWith$Query$GetFilmById$film$planetConnection<TRes> get planetConnection {
    final local$planetConnection = _instance.planetConnection;
    return local$planetConnection == null
        ? CopyWith$Query$GetFilmById$film$planetConnection.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetFilmById$film$planetConnection(
            local$planetConnection,
            (e) => call(planetConnection: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetFilmById$film<TRes>
    implements CopyWith$Query$GetFilmById$film<TRes> {
  _CopyWithStubImpl$Query$GetFilmById$film(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? director,
    String? releaseDate,
    int? episodeID,
    String? openingCrawl,
    Query$GetFilmById$film$characterConnection? characterConnection,
    Query$GetFilmById$film$planetConnection? planetConnection,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetFilmById$film$characterConnection<TRes>
  get characterConnection =>
      CopyWith$Query$GetFilmById$film$characterConnection.stub(_res);

  CopyWith$Query$GetFilmById$film$planetConnection<TRes> get planetConnection =>
      CopyWith$Query$GetFilmById$film$planetConnection.stub(_res);
}

class Query$GetFilmById$film$characterConnection {
  Query$GetFilmById$film$characterConnection({
    this.characters,
    this.$__typename = 'FilmCharactersConnection',
  });

  factory Query$GetFilmById$film$characterConnection.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$GetFilmById$film$characterConnection(
      characters: (l$characters as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetFilmById$film$characterConnection$characters.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFilmById$film$characterConnection$characters?>?
  characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characters = characters;
    _resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFilmById$film$characterConnection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$GetFilmById$film$characterConnection
    on Query$GetFilmById$film$characterConnection {
  CopyWith$Query$GetFilmById$film$characterConnection<
    Query$GetFilmById$film$characterConnection
  >
  get copyWith =>
      CopyWith$Query$GetFilmById$film$characterConnection(this, (i) => i);
}

abstract class CopyWith$Query$GetFilmById$film$characterConnection<TRes> {
  factory CopyWith$Query$GetFilmById$film$characterConnection(
    Query$GetFilmById$film$characterConnection instance,
    TRes Function(Query$GetFilmById$film$characterConnection) then,
  ) = _CopyWithImpl$Query$GetFilmById$film$characterConnection;

  factory CopyWith$Query$GetFilmById$film$characterConnection.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFilmById$film$characterConnection;

  TRes call({
    List<Query$GetFilmById$film$characterConnection$characters?>? characters,
    String? $__typename,
  });
  TRes characters(
    Iterable<Query$GetFilmById$film$characterConnection$characters?>? Function(
      Iterable<
        CopyWith$Query$GetFilmById$film$characterConnection$characters<
          Query$GetFilmById$film$characterConnection$characters
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetFilmById$film$characterConnection<TRes>
    implements CopyWith$Query$GetFilmById$film$characterConnection<TRes> {
  _CopyWithImpl$Query$GetFilmById$film$characterConnection(
    this._instance,
    this._then,
  );

  final Query$GetFilmById$film$characterConnection _instance;

  final TRes Function(Query$GetFilmById$film$characterConnection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetFilmById$film$characterConnection(
      characters: characters == _undefined
          ? _instance.characters
          : (characters
                as List<
                  Query$GetFilmById$film$characterConnection$characters?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes characters(
    Iterable<Query$GetFilmById$film$characterConnection$characters?>? Function(
      Iterable<
        CopyWith$Query$GetFilmById$film$characterConnection$characters<
          Query$GetFilmById$film$characterConnection$characters
        >?
      >?,
    )
    _fn,
  ) => call(
    characters: _fn(
      _instance.characters?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetFilmById$film$characterConnection$characters(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetFilmById$film$characterConnection<TRes>
    implements CopyWith$Query$GetFilmById$film$characterConnection<TRes> {
  _CopyWithStubImpl$Query$GetFilmById$film$characterConnection(this._res);

  TRes _res;

  call({
    List<Query$GetFilmById$film$characterConnection$characters?>? characters,
    String? $__typename,
  }) => _res;

  characters(_fn) => _res;
}

class Query$GetFilmById$film$characterConnection$characters {
  Query$GetFilmById$film$characterConnection$characters({
    this.name,
    this.birthYear,
    this.eyeColor,
    this.gender,
    this.$__typename = 'Person',
  });

  factory Query$GetFilmById$film$characterConnection$characters.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$birthYear = json['birthYear'];
    final l$eyeColor = json['eyeColor'];
    final l$gender = json['gender'];
    final l$$__typename = json['__typename'];
    return Query$GetFilmById$film$characterConnection$characters(
      name: (l$name as String?),
      birthYear: (l$birthYear as String?),
      eyeColor: (l$eyeColor as String?),
      gender: (l$gender as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? birthYear;

  final String? eyeColor;

  final String? gender;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$birthYear = birthYear;
    _resultData['birthYear'] = l$birthYear;
    final l$eyeColor = eyeColor;
    _resultData['eyeColor'] = l$eyeColor;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$birthYear = birthYear;
    final l$eyeColor = eyeColor;
    final l$gender = gender;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$birthYear,
      l$eyeColor,
      l$gender,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFilmById$film$characterConnection$characters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$birthYear = birthYear;
    final lOther$birthYear = other.birthYear;
    if (l$birthYear != lOther$birthYear) {
      return false;
    }
    final l$eyeColor = eyeColor;
    final lOther$eyeColor = other.eyeColor;
    if (l$eyeColor != lOther$eyeColor) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
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

extension UtilityExtension$Query$GetFilmById$film$characterConnection$characters
    on Query$GetFilmById$film$characterConnection$characters {
  CopyWith$Query$GetFilmById$film$characterConnection$characters<
    Query$GetFilmById$film$characterConnection$characters
  >
  get copyWith =>
      CopyWith$Query$GetFilmById$film$characterConnection$characters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFilmById$film$characterConnection$characters<
  TRes
> {
  factory CopyWith$Query$GetFilmById$film$characterConnection$characters(
    Query$GetFilmById$film$characterConnection$characters instance,
    TRes Function(Query$GetFilmById$film$characterConnection$characters) then,
  ) = _CopyWithImpl$Query$GetFilmById$film$characterConnection$characters;

  factory CopyWith$Query$GetFilmById$film$characterConnection$characters.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetFilmById$film$characterConnection$characters;

  TRes call({
    String? name,
    String? birthYear,
    String? eyeColor,
    String? gender,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFilmById$film$characterConnection$characters<TRes>
    implements
        CopyWith$Query$GetFilmById$film$characterConnection$characters<TRes> {
  _CopyWithImpl$Query$GetFilmById$film$characterConnection$characters(
    this._instance,
    this._then,
  );

  final Query$GetFilmById$film$characterConnection$characters _instance;

  final TRes Function(Query$GetFilmById$film$characterConnection$characters)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? birthYear = _undefined,
    Object? eyeColor = _undefined,
    Object? gender = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetFilmById$film$characterConnection$characters(
      name: name == _undefined ? _instance.name : (name as String?),
      birthYear: birthYear == _undefined
          ? _instance.birthYear
          : (birthYear as String?),
      eyeColor: eyeColor == _undefined
          ? _instance.eyeColor
          : (eyeColor as String?),
      gender: gender == _undefined ? _instance.gender : (gender as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetFilmById$film$characterConnection$characters<
  TRes
>
    implements
        CopyWith$Query$GetFilmById$film$characterConnection$characters<TRes> {
  _CopyWithStubImpl$Query$GetFilmById$film$characterConnection$characters(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? birthYear,
    String? eyeColor,
    String? gender,
    String? $__typename,
  }) => _res;
}

class Query$GetFilmById$film$planetConnection {
  Query$GetFilmById$film$planetConnection({
    this.planets,
    this.$__typename = 'FilmPlanetsConnection',
  });

  factory Query$GetFilmById$film$planetConnection.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$planets = json['planets'];
    final l$$__typename = json['__typename'];
    return Query$GetFilmById$film$planetConnection(
      planets: (l$planets as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetFilmById$film$planetConnection$planets.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFilmById$film$planetConnection$planets?>? planets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$planets = planets;
    _resultData['planets'] = l$planets?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$planets = planets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$planets == null ? null : Object.hashAll(l$planets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFilmById$film$planetConnection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$planets = planets;
    final lOther$planets = other.planets;
    if (l$planets != null && lOther$planets != null) {
      if (l$planets.length != lOther$planets.length) {
        return false;
      }
      for (int i = 0; i < l$planets.length; i++) {
        final l$planets$entry = l$planets[i];
        final lOther$planets$entry = lOther$planets[i];
        if (l$planets$entry != lOther$planets$entry) {
          return false;
        }
      }
    } else if (l$planets != lOther$planets) {
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

extension UtilityExtension$Query$GetFilmById$film$planetConnection
    on Query$GetFilmById$film$planetConnection {
  CopyWith$Query$GetFilmById$film$planetConnection<
    Query$GetFilmById$film$planetConnection
  >
  get copyWith =>
      CopyWith$Query$GetFilmById$film$planetConnection(this, (i) => i);
}

abstract class CopyWith$Query$GetFilmById$film$planetConnection<TRes> {
  factory CopyWith$Query$GetFilmById$film$planetConnection(
    Query$GetFilmById$film$planetConnection instance,
    TRes Function(Query$GetFilmById$film$planetConnection) then,
  ) = _CopyWithImpl$Query$GetFilmById$film$planetConnection;

  factory CopyWith$Query$GetFilmById$film$planetConnection.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFilmById$film$planetConnection;

  TRes call({
    List<Query$GetFilmById$film$planetConnection$planets?>? planets,
    String? $__typename,
  });
  TRes planets(
    Iterable<Query$GetFilmById$film$planetConnection$planets?>? Function(
      Iterable<
        CopyWith$Query$GetFilmById$film$planetConnection$planets<
          Query$GetFilmById$film$planetConnection$planets
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetFilmById$film$planetConnection<TRes>
    implements CopyWith$Query$GetFilmById$film$planetConnection<TRes> {
  _CopyWithImpl$Query$GetFilmById$film$planetConnection(
    this._instance,
    this._then,
  );

  final Query$GetFilmById$film$planetConnection _instance;

  final TRes Function(Query$GetFilmById$film$planetConnection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? planets = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetFilmById$film$planetConnection(
          planets: planets == _undefined
              ? _instance.planets
              : (planets
                    as List<Query$GetFilmById$film$planetConnection$planets?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes planets(
    Iterable<Query$GetFilmById$film$planetConnection$planets?>? Function(
      Iterable<
        CopyWith$Query$GetFilmById$film$planetConnection$planets<
          Query$GetFilmById$film$planetConnection$planets
        >?
      >?,
    )
    _fn,
  ) => call(
    planets: _fn(
      _instance.planets?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetFilmById$film$planetConnection$planets(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetFilmById$film$planetConnection<TRes>
    implements CopyWith$Query$GetFilmById$film$planetConnection<TRes> {
  _CopyWithStubImpl$Query$GetFilmById$film$planetConnection(this._res);

  TRes _res;

  call({
    List<Query$GetFilmById$film$planetConnection$planets?>? planets,
    String? $__typename,
  }) => _res;

  planets(_fn) => _res;
}

class Query$GetFilmById$film$planetConnection$planets {
  Query$GetFilmById$film$planetConnection$planets({
    this.name,
    this.population,
    this.climates,
    this.$__typename = 'Planet',
  });

  factory Query$GetFilmById$film$planetConnection$planets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$population = json['population'];
    final l$climates = json['climates'];
    final l$$__typename = json['__typename'];
    return Query$GetFilmById$film$planetConnection$planets(
      name: (l$name as String?),
      population: (l$population as num?)?.toDouble(),
      climates: (l$climates as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final double? population;

  final List<String?>? climates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$population = population;
    _resultData['population'] = l$population;
    final l$climates = climates;
    _resultData['climates'] = l$climates?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$population = population;
    final l$climates = climates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$population,
      l$climates == null ? null : Object.hashAll(l$climates.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFilmById$film$planetConnection$planets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$population = population;
    final lOther$population = other.population;
    if (l$population != lOther$population) {
      return false;
    }
    final l$climates = climates;
    final lOther$climates = other.climates;
    if (l$climates != null && lOther$climates != null) {
      if (l$climates.length != lOther$climates.length) {
        return false;
      }
      for (int i = 0; i < l$climates.length; i++) {
        final l$climates$entry = l$climates[i];
        final lOther$climates$entry = lOther$climates[i];
        if (l$climates$entry != lOther$climates$entry) {
          return false;
        }
      }
    } else if (l$climates != lOther$climates) {
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

extension UtilityExtension$Query$GetFilmById$film$planetConnection$planets
    on Query$GetFilmById$film$planetConnection$planets {
  CopyWith$Query$GetFilmById$film$planetConnection$planets<
    Query$GetFilmById$film$planetConnection$planets
  >
  get copyWith =>
      CopyWith$Query$GetFilmById$film$planetConnection$planets(this, (i) => i);
}

abstract class CopyWith$Query$GetFilmById$film$planetConnection$planets<TRes> {
  factory CopyWith$Query$GetFilmById$film$planetConnection$planets(
    Query$GetFilmById$film$planetConnection$planets instance,
    TRes Function(Query$GetFilmById$film$planetConnection$planets) then,
  ) = _CopyWithImpl$Query$GetFilmById$film$planetConnection$planets;

  factory CopyWith$Query$GetFilmById$film$planetConnection$planets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetFilmById$film$planetConnection$planets;

  TRes call({
    String? name,
    double? population,
    List<String?>? climates,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFilmById$film$planetConnection$planets<TRes>
    implements CopyWith$Query$GetFilmById$film$planetConnection$planets<TRes> {
  _CopyWithImpl$Query$GetFilmById$film$planetConnection$planets(
    this._instance,
    this._then,
  );

  final Query$GetFilmById$film$planetConnection$planets _instance;

  final TRes Function(Query$GetFilmById$film$planetConnection$planets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? population = _undefined,
    Object? climates = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetFilmById$film$planetConnection$planets(
      name: name == _undefined ? _instance.name : (name as String?),
      population: population == _undefined
          ? _instance.population
          : (population as double?),
      climates: climates == _undefined
          ? _instance.climates
          : (climates as List<String?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetFilmById$film$planetConnection$planets<TRes>
    implements CopyWith$Query$GetFilmById$film$planetConnection$planets<TRes> {
  _CopyWithStubImpl$Query$GetFilmById$film$planetConnection$planets(this._res);

  TRes _res;

  call({
    String? name,
    double? population,
    List<String?>? climates,
    String? $__typename,
  }) => _res;
}

class Variables$Query$GetAllPeople {
  factory Variables$Query$GetAllPeople({int? first, String? after}) =>
      Variables$Query$GetAllPeople._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
      });

  Variables$Query$GetAllPeople._(this._$data);

  factory Variables$Query$GetAllPeople.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$GetAllPeople._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAllPeople<Variables$Query$GetAllPeople>
  get copyWith => CopyWith$Variables$Query$GetAllPeople(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllPeople ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAllPeople<TRes> {
  factory CopyWith$Variables$Query$GetAllPeople(
    Variables$Query$GetAllPeople instance,
    TRes Function(Variables$Query$GetAllPeople) then,
  ) = _CopyWithImpl$Variables$Query$GetAllPeople;

  factory CopyWith$Variables$Query$GetAllPeople.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllPeople;

  TRes call({int? first, String? after});
}

class _CopyWithImpl$Variables$Query$GetAllPeople<TRes>
    implements CopyWith$Variables$Query$GetAllPeople<TRes> {
  _CopyWithImpl$Variables$Query$GetAllPeople(this._instance, this._then);

  final Variables$Query$GetAllPeople _instance;

  final TRes Function(Variables$Query$GetAllPeople) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? first = _undefined, Object? after = _undefined}) => _then(
    Variables$Query$GetAllPeople._({
      ..._instance._$data,
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAllPeople<TRes>
    implements CopyWith$Variables$Query$GetAllPeople<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllPeople(this._res);

  TRes _res;

  call({int? first, String? after}) => _res;
}

class Query$GetAllPeople {
  Query$GetAllPeople({this.allPeople, this.$__typename = 'Root'});

  factory Query$GetAllPeople.fromJson(Map<String, dynamic> json) {
    final l$allPeople = json['allPeople'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPeople(
      allPeople: l$allPeople == null
          ? null
          : Query$GetAllPeople$allPeople.fromJson(
              (l$allPeople as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllPeople$allPeople? allPeople;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allPeople = allPeople;
    _resultData['allPeople'] = l$allPeople?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allPeople = allPeople;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allPeople, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPeople || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allPeople = allPeople;
    final lOther$allPeople = other.allPeople;
    if (l$allPeople != lOther$allPeople) {
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

extension UtilityExtension$Query$GetAllPeople on Query$GetAllPeople {
  CopyWith$Query$GetAllPeople<Query$GetAllPeople> get copyWith =>
      CopyWith$Query$GetAllPeople(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPeople<TRes> {
  factory CopyWith$Query$GetAllPeople(
    Query$GetAllPeople instance,
    TRes Function(Query$GetAllPeople) then,
  ) = _CopyWithImpl$Query$GetAllPeople;

  factory CopyWith$Query$GetAllPeople.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPeople;

  TRes call({Query$GetAllPeople$allPeople? allPeople, String? $__typename});
  CopyWith$Query$GetAllPeople$allPeople<TRes> get allPeople;
}

class _CopyWithImpl$Query$GetAllPeople<TRes>
    implements CopyWith$Query$GetAllPeople<TRes> {
  _CopyWithImpl$Query$GetAllPeople(this._instance, this._then);

  final Query$GetAllPeople _instance;

  final TRes Function(Query$GetAllPeople) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allPeople = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllPeople(
      allPeople: allPeople == _undefined
          ? _instance.allPeople
          : (allPeople as Query$GetAllPeople$allPeople?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAllPeople$allPeople<TRes> get allPeople {
    final local$allPeople = _instance.allPeople;
    return local$allPeople == null
        ? CopyWith$Query$GetAllPeople$allPeople.stub(_then(_instance))
        : CopyWith$Query$GetAllPeople$allPeople(
            local$allPeople,
            (e) => call(allPeople: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAllPeople<TRes>
    implements CopyWith$Query$GetAllPeople<TRes> {
  _CopyWithStubImpl$Query$GetAllPeople(this._res);

  TRes _res;

  call({Query$GetAllPeople$allPeople? allPeople, String? $__typename}) => _res;

  CopyWith$Query$GetAllPeople$allPeople<TRes> get allPeople =>
      CopyWith$Query$GetAllPeople$allPeople.stub(_res);
}

const documentNodeQueryGetAllPeople = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllPeople'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'allPeople'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'birthYear'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'eyeColor'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'gender'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'height'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'mass'),
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
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'hasNextPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'endCursor'),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Query$GetAllPeople _parserFn$Query$GetAllPeople(Map<String, dynamic> data) =>
    Query$GetAllPeople.fromJson(data);
typedef OnQueryComplete$Query$GetAllPeople =
    FutureOr<void> Function(Map<String, dynamic>?, Query$GetAllPeople?);

class Options$Query$GetAllPeople
    extends graphql.QueryOptions<Query$GetAllPeople> {
  Options$Query$GetAllPeople({
    String? operationName,
    Variables$Query$GetAllPeople? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllPeople? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllPeople? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$GetAllPeople(data),
               ),
         onError: onError,
         document: documentNodeQueryGetAllPeople,
         parserFn: _parserFn$Query$GetAllPeople,
       );

  final OnQueryComplete$Query$GetAllPeople? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$GetAllPeople
    extends graphql.WatchQueryOptions<Query$GetAllPeople> {
  WatchOptions$Query$GetAllPeople({
    String? operationName,
    Variables$Query$GetAllPeople? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllPeople? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryGetAllPeople,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$GetAllPeople,
       );
}

class FetchMoreOptions$Query$GetAllPeople extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllPeople({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllPeople? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryGetAllPeople,
       );
}

extension ClientExtension$Query$GetAllPeople on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllPeople>> query$GetAllPeople([
    Options$Query$GetAllPeople? options,
  ]) async => await this.query(options ?? Options$Query$GetAllPeople());
  graphql.ObservableQuery<Query$GetAllPeople> watchQuery$GetAllPeople([
    WatchOptions$Query$GetAllPeople? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$GetAllPeople());
  void writeQuery$GetAllPeople({
    required Query$GetAllPeople data,
    Variables$Query$GetAllPeople? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryGetAllPeople),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$GetAllPeople? readQuery$GetAllPeople({
    Variables$Query$GetAllPeople? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetAllPeople),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllPeople.fromJson(result);
  }
}

class Query$GetAllPeople$allPeople {
  Query$GetAllPeople$allPeople({
    this.edges,
    required this.pageInfo,
    this.$__typename = 'PeopleConnection',
  });

  factory Query$GetAllPeople$allPeople.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPeople$allPeople(
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAllPeople$allPeople$edges.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      pageInfo: Query$GetAllPeople$allPeople$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllPeople$allPeople$edges?>? edges;

  final Query$GetAllPeople$allPeople$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPeople$allPeople ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$GetAllPeople$allPeople
    on Query$GetAllPeople$allPeople {
  CopyWith$Query$GetAllPeople$allPeople<Query$GetAllPeople$allPeople>
  get copyWith => CopyWith$Query$GetAllPeople$allPeople(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPeople$allPeople<TRes> {
  factory CopyWith$Query$GetAllPeople$allPeople(
    Query$GetAllPeople$allPeople instance,
    TRes Function(Query$GetAllPeople$allPeople) then,
  ) = _CopyWithImpl$Query$GetAllPeople$allPeople;

  factory CopyWith$Query$GetAllPeople$allPeople.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPeople$allPeople;

  TRes call({
    List<Query$GetAllPeople$allPeople$edges?>? edges,
    Query$GetAllPeople$allPeople$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
    Iterable<Query$GetAllPeople$allPeople$edges?>? Function(
      Iterable<
        CopyWith$Query$GetAllPeople$allPeople$edges<
          Query$GetAllPeople$allPeople$edges
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetAllPeople$allPeople$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetAllPeople$allPeople<TRes>
    implements CopyWith$Query$GetAllPeople$allPeople<TRes> {
  _CopyWithImpl$Query$GetAllPeople$allPeople(this._instance, this._then);

  final Query$GetAllPeople$allPeople _instance;

  final TRes Function(Query$GetAllPeople$allPeople) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllPeople$allPeople(
      edges: edges == _undefined
          ? _instance.edges
          : (edges as List<Query$GetAllPeople$allPeople$edges?>?),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetAllPeople$allPeople$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes edges(
    Iterable<Query$GetAllPeople$allPeople$edges?>? Function(
      Iterable<
        CopyWith$Query$GetAllPeople$allPeople$edges<
          Query$GetAllPeople$allPeople$edges
        >?
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAllPeople$allPeople$edges(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetAllPeople$allPeople$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAllPeople$allPeople$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAllPeople$allPeople<TRes>
    implements CopyWith$Query$GetAllPeople$allPeople<TRes> {
  _CopyWithStubImpl$Query$GetAllPeople$allPeople(this._res);

  TRes _res;

  call({
    List<Query$GetAllPeople$allPeople$edges?>? edges,
    Query$GetAllPeople$allPeople$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  edges(_fn) => _res;

  CopyWith$Query$GetAllPeople$allPeople$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetAllPeople$allPeople$pageInfo.stub(_res);
}

class Query$GetAllPeople$allPeople$edges {
  Query$GetAllPeople$allPeople$edges({
    this.node,
    this.$__typename = 'PeopleEdge',
  });

  factory Query$GetAllPeople$allPeople$edges.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPeople$allPeople$edges(
      node: l$node == null
          ? null
          : Query$GetAllPeople$allPeople$edges$node.fromJson(
              (l$node as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllPeople$allPeople$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPeople$allPeople$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$GetAllPeople$allPeople$edges
    on Query$GetAllPeople$allPeople$edges {
  CopyWith$Query$GetAllPeople$allPeople$edges<
    Query$GetAllPeople$allPeople$edges
  >
  get copyWith => CopyWith$Query$GetAllPeople$allPeople$edges(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPeople$allPeople$edges<TRes> {
  factory CopyWith$Query$GetAllPeople$allPeople$edges(
    Query$GetAllPeople$allPeople$edges instance,
    TRes Function(Query$GetAllPeople$allPeople$edges) then,
  ) = _CopyWithImpl$Query$GetAllPeople$allPeople$edges;

  factory CopyWith$Query$GetAllPeople$allPeople$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPeople$allPeople$edges;

  TRes call({
    Query$GetAllPeople$allPeople$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$GetAllPeople$allPeople$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetAllPeople$allPeople$edges<TRes>
    implements CopyWith$Query$GetAllPeople$allPeople$edges<TRes> {
  _CopyWithImpl$Query$GetAllPeople$allPeople$edges(this._instance, this._then);

  final Query$GetAllPeople$allPeople$edges _instance;

  final TRes Function(Query$GetAllPeople$allPeople$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAllPeople$allPeople$edges(
          node: node == _undefined
              ? _instance.node
              : (node as Query$GetAllPeople$allPeople$edges$node?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetAllPeople$allPeople$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$GetAllPeople$allPeople$edges$node.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAllPeople$allPeople$edges$node(
            local$node,
            (e) => call(node: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAllPeople$allPeople$edges<TRes>
    implements CopyWith$Query$GetAllPeople$allPeople$edges<TRes> {
  _CopyWithStubImpl$Query$GetAllPeople$allPeople$edges(this._res);

  TRes _res;

  call({Query$GetAllPeople$allPeople$edges$node? node, String? $__typename}) =>
      _res;

  CopyWith$Query$GetAllPeople$allPeople$edges$node<TRes> get node =>
      CopyWith$Query$GetAllPeople$allPeople$edges$node.stub(_res);
}

class Query$GetAllPeople$allPeople$edges$node {
  Query$GetAllPeople$allPeople$edges$node({
    required this.id,
    this.name,
    this.birthYear,
    this.eyeColor,
    this.gender,
    this.height,
    this.mass,
    this.$__typename = 'Person',
  });

  factory Query$GetAllPeople$allPeople$edges$node.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$birthYear = json['birthYear'];
    final l$eyeColor = json['eyeColor'];
    final l$gender = json['gender'];
    final l$height = json['height'];
    final l$mass = json['mass'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPeople$allPeople$edges$node(
      id: (l$id as String),
      name: (l$name as String?),
      birthYear: (l$birthYear as String?),
      eyeColor: (l$eyeColor as String?),
      gender: (l$gender as String?),
      height: (l$height as int?),
      mass: (l$mass as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String? birthYear;

  final String? eyeColor;

  final String? gender;

  final int? height;

  final double? mass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$birthYear = birthYear;
    _resultData['birthYear'] = l$birthYear;
    final l$eyeColor = eyeColor;
    _resultData['eyeColor'] = l$eyeColor;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$height = height;
    _resultData['height'] = l$height;
    final l$mass = mass;
    _resultData['mass'] = l$mass;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$birthYear = birthYear;
    final l$eyeColor = eyeColor;
    final l$gender = gender;
    final l$height = height;
    final l$mass = mass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$birthYear,
      l$eyeColor,
      l$gender,
      l$height,
      l$mass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPeople$allPeople$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$birthYear = birthYear;
    final lOther$birthYear = other.birthYear;
    if (l$birthYear != lOther$birthYear) {
      return false;
    }
    final l$eyeColor = eyeColor;
    final lOther$eyeColor = other.eyeColor;
    if (l$eyeColor != lOther$eyeColor) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$height = height;
    final lOther$height = other.height;
    if (l$height != lOther$height) {
      return false;
    }
    final l$mass = mass;
    final lOther$mass = other.mass;
    if (l$mass != lOther$mass) {
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

extension UtilityExtension$Query$GetAllPeople$allPeople$edges$node
    on Query$GetAllPeople$allPeople$edges$node {
  CopyWith$Query$GetAllPeople$allPeople$edges$node<
    Query$GetAllPeople$allPeople$edges$node
  >
  get copyWith =>
      CopyWith$Query$GetAllPeople$allPeople$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPeople$allPeople$edges$node<TRes> {
  factory CopyWith$Query$GetAllPeople$allPeople$edges$node(
    Query$GetAllPeople$allPeople$edges$node instance,
    TRes Function(Query$GetAllPeople$allPeople$edges$node) then,
  ) = _CopyWithImpl$Query$GetAllPeople$allPeople$edges$node;

  factory CopyWith$Query$GetAllPeople$allPeople$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPeople$allPeople$edges$node;

  TRes call({
    String? id,
    String? name,
    String? birthYear,
    String? eyeColor,
    String? gender,
    int? height,
    double? mass,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllPeople$allPeople$edges$node<TRes>
    implements CopyWith$Query$GetAllPeople$allPeople$edges$node<TRes> {
  _CopyWithImpl$Query$GetAllPeople$allPeople$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetAllPeople$allPeople$edges$node _instance;

  final TRes Function(Query$GetAllPeople$allPeople$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? birthYear = _undefined,
    Object? eyeColor = _undefined,
    Object? gender = _undefined,
    Object? height = _undefined,
    Object? mass = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllPeople$allPeople$edges$node(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined ? _instance.name : (name as String?),
      birthYear: birthYear == _undefined
          ? _instance.birthYear
          : (birthYear as String?),
      eyeColor: eyeColor == _undefined
          ? _instance.eyeColor
          : (eyeColor as String?),
      gender: gender == _undefined ? _instance.gender : (gender as String?),
      height: height == _undefined ? _instance.height : (height as int?),
      mass: mass == _undefined ? _instance.mass : (mass as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllPeople$allPeople$edges$node<TRes>
    implements CopyWith$Query$GetAllPeople$allPeople$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetAllPeople$allPeople$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? birthYear,
    String? eyeColor,
    String? gender,
    int? height,
    double? mass,
    String? $__typename,
  }) => _res;
}

class Query$GetAllPeople$allPeople$pageInfo {
  Query$GetAllPeople$allPeople$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAllPeople$allPeople$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPeople$allPeople$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPeople$allPeople$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$GetAllPeople$allPeople$pageInfo
    on Query$GetAllPeople$allPeople$pageInfo {
  CopyWith$Query$GetAllPeople$allPeople$pageInfo<
    Query$GetAllPeople$allPeople$pageInfo
  >
  get copyWith =>
      CopyWith$Query$GetAllPeople$allPeople$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPeople$allPeople$pageInfo<TRes> {
  factory CopyWith$Query$GetAllPeople$allPeople$pageInfo(
    Query$GetAllPeople$allPeople$pageInfo instance,
    TRes Function(Query$GetAllPeople$allPeople$pageInfo) then,
  ) = _CopyWithImpl$Query$GetAllPeople$allPeople$pageInfo;

  factory CopyWith$Query$GetAllPeople$allPeople$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPeople$allPeople$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$GetAllPeople$allPeople$pageInfo<TRes>
    implements CopyWith$Query$GetAllPeople$allPeople$pageInfo<TRes> {
  _CopyWithImpl$Query$GetAllPeople$allPeople$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAllPeople$allPeople$pageInfo _instance;

  final TRes Function(Query$GetAllPeople$allPeople$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllPeople$allPeople$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllPeople$allPeople$pageInfo<TRes>
    implements CopyWith$Query$GetAllPeople$allPeople$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetAllPeople$allPeople$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}
