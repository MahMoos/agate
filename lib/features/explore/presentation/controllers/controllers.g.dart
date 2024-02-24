// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$departmentHash() => r'd613e888ccdbe74011ba9c18f0cc7171e2259880';

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

String _$homeHash() => r'feb648c53d3ce15987a21952e0dfdcadc698416b';

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
String _$coursesHash() => r'bc1cc880c79bc3806117077ec16ca694837cb3d3';

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

String _$departmentsHash() => r'ab8173262fbcf03ce0748971c118a8cae9125644';

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
String _$myCoursesHash() => r'15ba09f8a55636e3e20be798564e05e049a52e1d';

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
String _$subjectsHash() => r'20069a961975016926cf342711cc6d08ca39abe3';

/// See also [Subjects].
@ProviderFor(Subjects)
final subjectsProvider =
    AsyncNotifierProvider<Subjects, List<Subject>>.internal(
  Subjects.new,
  name: r'subjectsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$subjectsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Subjects = AsyncNotifier<List<Subject>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
