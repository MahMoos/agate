// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exploreRepositoryHash() => r'4d0a000600491af1d1510ac3440037fff5c431a4';

/// See also [exploreRepository].
@ProviderFor(exploreRepository)
final exploreRepositoryProvider = FutureProvider<ExploreRepository>.internal(
  exploreRepository,
  name: r'exploreRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$exploreRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ExploreRepositoryRef = FutureProviderRef<ExploreRepository>;
String _$bookCategoryHash() => r'6e440e3a137c34d157707dfe388c65922177f759';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [bookCategory].
@ProviderFor(bookCategory)
const bookCategoryProvider = BookCategoryFamily();

/// See also [bookCategory].
class BookCategoryFamily extends Family<AsyncValue<Subject>> {
  /// See also [bookCategory].
  const BookCategoryFamily();

  /// See also [bookCategory].
  BookCategoryProvider call(
    String id,
  ) {
    return BookCategoryProvider(
      id,
    );
  }

  @override
  BookCategoryProvider getProviderOverride(
    covariant BookCategoryProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookCategoryProvider';
}

/// See also [bookCategory].
class BookCategoryProvider extends AutoDisposeFutureProvider<Subject> {
  /// See also [bookCategory].
  BookCategoryProvider(
    String id,
  ) : this._internal(
          (ref) => bookCategory(
            ref as BookCategoryRef,
            id,
          ),
          from: bookCategoryProvider,
          name: r'bookCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookCategoryHash,
          dependencies: BookCategoryFamily._dependencies,
          allTransitiveDependencies:
              BookCategoryFamily._allTransitiveDependencies,
          id: id,
        );

  BookCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Subject> Function(BookCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookCategoryProvider._internal(
        (ref) => create(ref as BookCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Subject> createElement() {
    return _BookCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookCategoryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BookCategoryRef on AutoDisposeFutureProviderRef<Subject> {
  /// The parameter `id` of this provider.
  String get id;
}

class _BookCategoryProviderElement
    extends AutoDisposeFutureProviderElement<Subject> with BookCategoryRef {
  _BookCategoryProviderElement(super.provider);

  @override
  String get id => (origin as BookCategoryProvider).id;
}

String _$bookHash() => r'9deafaaf0a2fa9527dcac7c6edbb0e86552aa8cf';

/// See also [book].
@ProviderFor(book)
const bookProvider = BookFamily();

/// See also [book].
class BookFamily extends Family<AsyncValue<Book>> {
  /// See also [book].
  const BookFamily();

  /// See also [book].
  BookProvider call(
    String id,
  ) {
    return BookProvider(
      id,
    );
  }

  @override
  BookProvider getProviderOverride(
    covariant BookProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookProvider';
}

/// See also [book].
class BookProvider extends AutoDisposeFutureProvider<Book> {
  /// See also [book].
  BookProvider(
    String id,
  ) : this._internal(
          (ref) => book(
            ref as BookRef,
            id,
          ),
          from: bookProvider,
          name: r'bookProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$bookHash,
          dependencies: BookFamily._dependencies,
          allTransitiveDependencies: BookFamily._allTransitiveDependencies,
          id: id,
        );

  BookProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Book> Function(BookRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookProvider._internal(
        (ref) => create(ref as BookRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Book> createElement() {
    return _BookProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BookRef on AutoDisposeFutureProviderRef<Book> {
  /// The parameter `id` of this provider.
  String get id;
}

class _BookProviderElement extends AutoDisposeFutureProviderElement<Book>
    with BookRef {
  _BookProviderElement(super.provider);

  @override
  String get id => (origin as BookProvider).id;
}

String _$departmentHash() => r'bbfbc0e942cb1ee1a4466867040676a707a06cd6';

/// See also [department].
@ProviderFor(department)
const departmentProvider = DepartmentFamily();

/// See also [department].
class DepartmentFamily extends Family<AsyncValue<Department>> {
  /// See also [department].
  const DepartmentFamily();

  /// See also [department].
  DepartmentProvider call(
    String id,
  ) {
    return DepartmentProvider(
      id,
    );
  }

  @override
  DepartmentProvider getProviderOverride(
    covariant DepartmentProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'departmentProvider';
}

/// See also [department].
class DepartmentProvider extends AutoDisposeFutureProvider<Department> {
  /// See also [department].
  DepartmentProvider(
    String id,
  ) : this._internal(
          (ref) => department(
            ref as DepartmentRef,
            id,
          ),
          from: departmentProvider,
          name: r'departmentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$departmentHash,
          dependencies: DepartmentFamily._dependencies,
          allTransitiveDependencies:
              DepartmentFamily._allTransitiveDependencies,
          id: id,
        );

  DepartmentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Department> Function(DepartmentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DepartmentProvider._internal(
        (ref) => create(ref as DepartmentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Department> createElement() {
    return _DepartmentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DepartmentProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DepartmentRef on AutoDisposeFutureProviderRef<Department> {
  /// The parameter `id` of this provider.
  String get id;
}

class _DepartmentProviderElement
    extends AutoDisposeFutureProviderElement<Department> with DepartmentRef {
  _DepartmentProviderElement(super.provider);

  @override
  String get id => (origin as DepartmentProvider).id;
}

String _$homeHash() => r'7c4f7e3fb9faaa7231facced6276e4a7caab5582';

/// See also [home].
@ProviderFor(home)
final homeProvider = AutoDisposeFutureProvider<Home>.internal(
  home,
  name: r'homeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HomeRef = AutoDisposeFutureProviderRef<Home>;
String _$mcqGameHash() => r'5ce493ebaa9d02f1c299f3b7767f986b95d7dbb4';

/// See also [mcqGame].
@ProviderFor(mcqGame)
const mcqGameProvider = McqGameFamily();

/// See also [mcqGame].
class McqGameFamily extends Family<AsyncValue<McqGame>> {
  /// See also [mcqGame].
  const McqGameFamily();

  /// See also [mcqGame].
  McqGameProvider call(
    String id,
  ) {
    return McqGameProvider(
      id,
    );
  }

  @override
  McqGameProvider getProviderOverride(
    covariant McqGameProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mcqGameProvider';
}

/// See also [mcqGame].
class McqGameProvider extends AutoDisposeFutureProvider<McqGame> {
  /// See also [mcqGame].
  McqGameProvider(
    String id,
  ) : this._internal(
          (ref) => mcqGame(
            ref as McqGameRef,
            id,
          ),
          from: mcqGameProvider,
          name: r'mcqGameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mcqGameHash,
          dependencies: McqGameFamily._dependencies,
          allTransitiveDependencies: McqGameFamily._allTransitiveDependencies,
          id: id,
        );

  McqGameProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<McqGame> Function(McqGameRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: McqGameProvider._internal(
        (ref) => create(ref as McqGameRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<McqGame> createElement() {
    return _McqGameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is McqGameProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin McqGameRef on AutoDisposeFutureProviderRef<McqGame> {
  /// The parameter `id` of this provider.
  String get id;
}

class _McqGameProviderElement extends AutoDisposeFutureProviderElement<McqGame>
    with McqGameRef {
  _McqGameProviderElement(super.provider);

  @override
  String get id => (origin as McqGameProvider).id;
}

String _$teacherHash() => r'b2bc8eb7d1008427d2f185f6e63115edbb2f13de';

/// See also [teacher].
@ProviderFor(teacher)
const teacherProvider = TeacherFamily();

/// See also [teacher].
class TeacherFamily extends Family<AsyncValue<Teacher>> {
  /// See also [teacher].
  const TeacherFamily();

  /// See also [teacher].
  TeacherProvider call(
    String id,
  ) {
    return TeacherProvider(
      id,
    );
  }

  @override
  TeacherProvider getProviderOverride(
    covariant TeacherProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'teacherProvider';
}

/// See also [teacher].
class TeacherProvider extends AutoDisposeFutureProvider<Teacher> {
  /// See also [teacher].
  TeacherProvider(
    String id,
  ) : this._internal(
          (ref) => teacher(
            ref as TeacherRef,
            id,
          ),
          from: teacherProvider,
          name: r'teacherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$teacherHash,
          dependencies: TeacherFamily._dependencies,
          allTransitiveDependencies: TeacherFamily._allTransitiveDependencies,
          id: id,
        );

  TeacherProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Teacher> Function(TeacherRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TeacherProvider._internal(
        (ref) => create(ref as TeacherRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Teacher> createElement() {
    return _TeacherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TeacherProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TeacherRef on AutoDisposeFutureProviderRef<Teacher> {
  /// The parameter `id` of this provider.
  String get id;
}

class _TeacherProviderElement extends AutoDisposeFutureProviderElement<Teacher>
    with TeacherRef {
  _TeacherProviderElement(super.provider);

  @override
  String get id => (origin as TeacherProvider).id;
}

String _$bookCategoriesHash() => r'421cb8257a194ff59e208bde1a2af828ffcea6b6';

abstract class _$BookCategories extends BuildlessAsyncNotifier<List<Subject>> {
  late final PaginatedParams params;

  FutureOr<List<Subject>> build(
    PaginatedParams params,
  );
}

/// See also [BookCategories].
@ProviderFor(BookCategories)
const bookCategoriesProvider = BookCategoriesFamily();

/// See also [BookCategories].
class BookCategoriesFamily extends Family<AsyncValue<List<Subject>>> {
  /// See also [BookCategories].
  const BookCategoriesFamily();

  /// See also [BookCategories].
  BookCategoriesProvider call(
    PaginatedParams params,
  ) {
    return BookCategoriesProvider(
      params,
    );
  }

  @override
  BookCategoriesProvider getProviderOverride(
    covariant BookCategoriesProvider provider,
  ) {
    return call(
      provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookCategoriesProvider';
}

/// See also [BookCategories].
class BookCategoriesProvider
    extends AsyncNotifierProviderImpl<BookCategories, List<Subject>> {
  /// See also [BookCategories].
  BookCategoriesProvider(
    PaginatedParams params,
  ) : this._internal(
          () => BookCategories()..params = params,
          from: bookCategoriesProvider,
          name: r'bookCategoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookCategoriesHash,
          dependencies: BookCategoriesFamily._dependencies,
          allTransitiveDependencies:
              BookCategoriesFamily._allTransitiveDependencies,
          params: params,
        );

  BookCategoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final PaginatedParams params;

  @override
  FutureOr<List<Subject>> runNotifierBuild(
    covariant BookCategories notifier,
  ) {
    return notifier.build(
      params,
    );
  }

  @override
  Override overrideWith(BookCategories Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookCategoriesProvider._internal(
        () => create()..params = params,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<BookCategories, List<Subject>> createElement() {
    return _BookCategoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookCategoriesProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BookCategoriesRef on AsyncNotifierProviderRef<List<Subject>> {
  /// The parameter `params` of this provider.
  PaginatedParams get params;
}

class _BookCategoriesProviderElement
    extends AsyncNotifierProviderElement<BookCategories, List<Subject>>
    with BookCategoriesRef {
  _BookCategoriesProviderElement(super.provider);

  @override
  PaginatedParams get params => (origin as BookCategoriesProvider).params;
}

String _$booksHash() => r'2e4c2c6e447f5f9b6e7f531d4d395c2016351a43';

abstract class _$Books extends BuildlessAsyncNotifier<List<Book>> {
  late final BooksParams params;

  FutureOr<List<Book>> build([
    BooksParams params = const BooksParams(),
  ]);
}

/// See also [Books].
@ProviderFor(Books)
const booksProvider = BooksFamily();

/// See also [Books].
class BooksFamily extends Family<AsyncValue<List<Book>>> {
  /// See also [Books].
  const BooksFamily();

  /// See also [Books].
  BooksProvider call([
    BooksParams params = const BooksParams(),
  ]) {
    return BooksProvider(
      params,
    );
  }

  @override
  BooksProvider getProviderOverride(
    covariant BooksProvider provider,
  ) {
    return call(
      provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'booksProvider';
}

/// See also [Books].
class BooksProvider extends AsyncNotifierProviderImpl<Books, List<Book>> {
  /// See also [Books].
  BooksProvider([
    BooksParams params = const BooksParams(),
  ]) : this._internal(
          () => Books()..params = params,
          from: booksProvider,
          name: r'booksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$booksHash,
          dependencies: BooksFamily._dependencies,
          allTransitiveDependencies: BooksFamily._allTransitiveDependencies,
          params: params,
        );

  BooksProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final BooksParams params;

  @override
  FutureOr<List<Book>> runNotifierBuild(
    covariant Books notifier,
  ) {
    return notifier.build(
      params,
    );
  }

  @override
  Override overrideWith(Books Function() create) {
    return ProviderOverride(
      origin: this,
      override: BooksProvider._internal(
        () => create()..params = params,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<Books, List<Book>> createElement() {
    return _BooksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BooksProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BooksRef on AsyncNotifierProviderRef<List<Book>> {
  /// The parameter `params` of this provider.
  BooksParams get params;
}

class _BooksProviderElement
    extends AsyncNotifierProviderElement<Books, List<Book>> with BooksRef {
  _BooksProviderElement(super.provider);

  @override
  BooksParams get params => (origin as BooksProvider).params;
}

String _$coursesHash() => r'cd9eba43ab76ee96b01a42cee00b656863bae99c';

abstract class _$Courses extends BuildlessAsyncNotifier<List<Course>> {
  late final CoursesParams params;

  FutureOr<List<Course>> build(
    CoursesParams params,
  );
}

/// See also [Courses].
@ProviderFor(Courses)
const coursesProvider = CoursesFamily();

/// See also [Courses].
class CoursesFamily extends Family<AsyncValue<List<Course>>> {
  /// See also [Courses].
  const CoursesFamily();

  /// See also [Courses].
  CoursesProvider call(
    CoursesParams params,
  ) {
    return CoursesProvider(
      params,
    );
  }

  @override
  CoursesProvider getProviderOverride(
    covariant CoursesProvider provider,
  ) {
    return call(
      provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'coursesProvider';
}

/// See also [Courses].
class CoursesProvider extends AsyncNotifierProviderImpl<Courses, List<Course>> {
  /// See also [Courses].
  CoursesProvider(
    CoursesParams params,
  ) : this._internal(
          () => Courses()..params = params,
          from: coursesProvider,
          name: r'coursesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$coursesHash,
          dependencies: CoursesFamily._dependencies,
          allTransitiveDependencies: CoursesFamily._allTransitiveDependencies,
          params: params,
        );

  CoursesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final CoursesParams params;

  @override
  FutureOr<List<Course>> runNotifierBuild(
    covariant Courses notifier,
  ) {
    return notifier.build(
      params,
    );
  }

  @override
  Override overrideWith(Courses Function() create) {
    return ProviderOverride(
      origin: this,
      override: CoursesProvider._internal(
        () => create()..params = params,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<Courses, List<Course>> createElement() {
    return _CoursesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CoursesProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CoursesRef on AsyncNotifierProviderRef<List<Course>> {
  /// The parameter `params` of this provider.
  CoursesParams get params;
}

class _CoursesProviderElement
    extends AsyncNotifierProviderElement<Courses, List<Course>>
    with CoursesRef {
  _CoursesProviderElement(super.provider);

  @override
  CoursesParams get params => (origin as CoursesProvider).params;
}

String _$departmentsHash() => r'2bf054f6578255deecb1a403de6a508ee4032cde';

/// See also [Departments].
@ProviderFor(Departments)
final departmentsProvider =
    AsyncNotifierProvider<Departments, List<Department>>.internal(
  Departments.new,
  name: r'departmentsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$departmentsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Departments = AsyncNotifier<List<Department>>;
String _$mcqGamesHash() => r'198e714a43342b15ca89d4d332e93c3643976f99';

abstract class _$McqGames extends BuildlessAsyncNotifier<List<McqGame>> {
  late final McqGamesParams params;

  FutureOr<List<McqGame>> build([
    McqGamesParams params = const McqGamesParams(),
  ]);
}

/// See also [McqGames].
@ProviderFor(McqGames)
const mcqGamesProvider = McqGamesFamily();

/// See also [McqGames].
class McqGamesFamily extends Family<AsyncValue<List<McqGame>>> {
  /// See also [McqGames].
  const McqGamesFamily();

  /// See also [McqGames].
  McqGamesProvider call([
    McqGamesParams params = const McqGamesParams(),
  ]) {
    return McqGamesProvider(
      params,
    );
  }

  @override
  McqGamesProvider getProviderOverride(
    covariant McqGamesProvider provider,
  ) {
    return call(
      provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mcqGamesProvider';
}

/// See also [McqGames].
class McqGamesProvider
    extends AsyncNotifierProviderImpl<McqGames, List<McqGame>> {
  /// See also [McqGames].
  McqGamesProvider([
    McqGamesParams params = const McqGamesParams(),
  ]) : this._internal(
          () => McqGames()..params = params,
          from: mcqGamesProvider,
          name: r'mcqGamesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mcqGamesHash,
          dependencies: McqGamesFamily._dependencies,
          allTransitiveDependencies: McqGamesFamily._allTransitiveDependencies,
          params: params,
        );

  McqGamesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final McqGamesParams params;

  @override
  FutureOr<List<McqGame>> runNotifierBuild(
    covariant McqGames notifier,
  ) {
    return notifier.build(
      params,
    );
  }

  @override
  Override overrideWith(McqGames Function() create) {
    return ProviderOverride(
      origin: this,
      override: McqGamesProvider._internal(
        () => create()..params = params,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<McqGames, List<McqGame>> createElement() {
    return _McqGamesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is McqGamesProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin McqGamesRef on AsyncNotifierProviderRef<List<McqGame>> {
  /// The parameter `params` of this provider.
  McqGamesParams get params;
}

class _McqGamesProviderElement
    extends AsyncNotifierProviderElement<McqGames, List<McqGame>>
    with McqGamesRef {
  _McqGamesProviderElement(super.provider);

  @override
  McqGamesParams get params => (origin as McqGamesProvider).params;
}

String _$myCoursesHash() => r'7e322199aa8efde14f528ea415e45df120647e1e';

/// See also [MyCourses].
@ProviderFor(MyCourses)
final myCoursesProvider =
    AsyncNotifierProvider<MyCourses, List<MyCourse>>.internal(
  MyCourses.new,
  name: r'myCoursesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$myCoursesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MyCourses = AsyncNotifier<List<MyCourse>>;
String _$subjectsHash() => r'86cad2fb00e5060564a2b43650d936fe5cf6dd19';

abstract class _$Subjects extends BuildlessAsyncNotifier<List<Subject>> {
  late final SubjectsParams params;

  FutureOr<List<Subject>> build(
    SubjectsParams params,
  );
}

/// See also [Subjects].
@ProviderFor(Subjects)
const subjectsProvider = SubjectsFamily();

/// See also [Subjects].
class SubjectsFamily extends Family<AsyncValue<List<Subject>>> {
  /// See also [Subjects].
  const SubjectsFamily();

  /// See also [Subjects].
  SubjectsProvider call(
    SubjectsParams params,
  ) {
    return SubjectsProvider(
      params,
    );
  }

  @override
  SubjectsProvider getProviderOverride(
    covariant SubjectsProvider provider,
  ) {
    return call(
      provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'subjectsProvider';
}

/// See also [Subjects].
class SubjectsProvider
    extends AsyncNotifierProviderImpl<Subjects, List<Subject>> {
  /// See also [Subjects].
  SubjectsProvider(
    SubjectsParams params,
  ) : this._internal(
          () => Subjects()..params = params,
          from: subjectsProvider,
          name: r'subjectsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subjectsHash,
          dependencies: SubjectsFamily._dependencies,
          allTransitiveDependencies: SubjectsFamily._allTransitiveDependencies,
          params: params,
        );

  SubjectsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final SubjectsParams params;

  @override
  FutureOr<List<Subject>> runNotifierBuild(
    covariant Subjects notifier,
  ) {
    return notifier.build(
      params,
    );
  }

  @override
  Override overrideWith(Subjects Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubjectsProvider._internal(
        () => create()..params = params,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<Subjects, List<Subject>> createElement() {
    return _SubjectsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubjectsProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SubjectsRef on AsyncNotifierProviderRef<List<Subject>> {
  /// The parameter `params` of this provider.
  SubjectsParams get params;
}

class _SubjectsProviderElement
    extends AsyncNotifierProviderElement<Subjects, List<Subject>>
    with SubjectsRef {
  _SubjectsProviderElement(super.provider);

  @override
  SubjectsParams get params => (origin as SubjectsProvider).params;
}

String _$subjectControllerHash() => r'b22978dc02240c477da6e58f1b1cbd26b340ea0a';

abstract class _$SubjectController extends BuildlessAsyncNotifier<Subject> {
  late final String id;

  FutureOr<Subject> build(
    String id,
  );
}

/// See also [SubjectController].
@ProviderFor(SubjectController)
const subjectControllerProvider = SubjectControllerFamily();

/// See also [SubjectController].
class SubjectControllerFamily extends Family<AsyncValue<Subject>> {
  /// See also [SubjectController].
  const SubjectControllerFamily();

  /// See also [SubjectController].
  SubjectControllerProvider call(
    String id,
  ) {
    return SubjectControllerProvider(
      id,
    );
  }

  @override
  SubjectControllerProvider getProviderOverride(
    covariant SubjectControllerProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'subjectControllerProvider';
}

/// See also [SubjectController].
class SubjectControllerProvider
    extends AsyncNotifierProviderImpl<SubjectController, Subject> {
  /// See also [SubjectController].
  SubjectControllerProvider(
    String id,
  ) : this._internal(
          () => SubjectController()..id = id,
          from: subjectControllerProvider,
          name: r'subjectControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subjectControllerHash,
          dependencies: SubjectControllerFamily._dependencies,
          allTransitiveDependencies:
              SubjectControllerFamily._allTransitiveDependencies,
          id: id,
        );

  SubjectControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<Subject> runNotifierBuild(
    covariant SubjectController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(SubjectController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubjectControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<SubjectController, Subject> createElement() {
    return _SubjectControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubjectControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SubjectControllerRef on AsyncNotifierProviderRef<Subject> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SubjectControllerProviderElement
    extends AsyncNotifierProviderElement<SubjectController, Subject>
    with SubjectControllerRef {
  _SubjectControllerProviderElement(super.provider);

  @override
  String get id => (origin as SubjectControllerProvider).id;
}

String _$teachersHash() => r'764fa2b476c9a13d145b1da29c0415152fcc37e1';

/// See also [Teachers].
@ProviderFor(Teachers)
final teachersProvider =
    AsyncNotifierProvider<Teachers, List<Teacher>>.internal(
  Teachers.new,
  name: r'teachersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$teachersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Teachers = AsyncNotifier<List<Teacher>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
