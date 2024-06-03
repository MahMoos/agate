// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$courseRepositoryHash() => r'e786585eec2bfbda14a43cac3781103461ac8d76';

/// See also [courseRepository].
@ProviderFor(courseRepository)
final courseRepositoryProvider = FutureProvider<CourseRepository>.internal(
  courseRepository,
  name: r'courseRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$courseRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CourseRepositoryRef = FutureProviderRef<CourseRepository>;

String _$sectionHash() => r'cac14e57d2269d106e24697521ca44e27bb1d4ac';

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

/// See also [section].
@ProviderFor(section)
const sectionProvider = SectionFamily();

/// See also [section].
class SectionFamily extends Family<AsyncValue<Section>> {
  /// See also [section].
  const SectionFamily();

  /// See also [section].
  SectionProvider call(
    String id,
  ) {
    return SectionProvider(
      id,
    );
  }

  @override
  SectionProvider getProviderOverride(
    covariant SectionProvider provider,
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
  String? get name => r'sectionProvider';
}

/// See also [section].
class SectionProvider extends FutureProvider<Section> {
  /// See also [section].
  SectionProvider(
    String id,
  ) : this._internal(
          (ref) => section(
            ref as SectionRef,
            id,
          ),
          from: sectionProvider,
          name: r'sectionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sectionHash,
          dependencies: SectionFamily._dependencies,
          allTransitiveDependencies: SectionFamily._allTransitiveDependencies,
          id: id,
        );

  SectionProvider._internal(
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
    FutureOr<Section> Function(SectionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SectionProvider._internal(
        (ref) => create(ref as SectionRef),
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
  FutureProviderElement<Section> createElement() {
    return _SectionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SectionProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SectionRef on FutureProviderRef<Section> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SectionProviderElement extends FutureProviderElement<Section>
    with SectionRef {
  _SectionProviderElement(super.provider);

  @override
  String get id => (origin as SectionProvider).id;
}

String _$courseControllerHash() => r'59746ec30dba58a964a90bd3812b6435e8d2f5a6';

abstract class _$CourseController
    extends BuildlessAsyncNotifier<CourseDetails> {
  late final String id;

  FutureOr<CourseDetails> build(
    String id,
  );
}

/// See also [CourseController].
@ProviderFor(CourseController)
const courseControllerProvider = CourseControllerFamily();

/// See also [CourseController].
class CourseControllerFamily extends Family<AsyncValue<CourseDetails>> {
  /// See also [CourseController].
  const CourseControllerFamily();

  /// See also [CourseController].
  CourseControllerProvider call(
    String id,
  ) {
    return CourseControllerProvider(
      id,
    );
  }

  @override
  CourseControllerProvider getProviderOverride(
    covariant CourseControllerProvider provider,
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
  String? get name => r'courseControllerProvider';
}

/// See also [CourseController].
class CourseControllerProvider
    extends AsyncNotifierProviderImpl<CourseController, CourseDetails> {
  /// See also [CourseController].
  CourseControllerProvider(
    String id,
  ) : this._internal(
          () => CourseController()..id = id,
          from: courseControllerProvider,
          name: r'courseControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$courseControllerHash,
          dependencies: CourseControllerFamily._dependencies,
          allTransitiveDependencies:
              CourseControllerFamily._allTransitiveDependencies,
          id: id,
        );

  CourseControllerProvider._internal(
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
  FutureOr<CourseDetails> runNotifierBuild(
    covariant CourseController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(CourseController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CourseControllerProvider._internal(
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
  AsyncNotifierProviderElement<CourseController, CourseDetails>
      createElement() {
    return _CourseControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CourseControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CourseControllerRef on AsyncNotifierProviderRef<CourseDetails> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CourseControllerProviderElement
    extends AsyncNotifierProviderElement<CourseController, CourseDetails>
    with CourseControllerRef {
  _CourseControllerProviderElement(super.provider);

  @override
  String get id => (origin as CourseControllerProvider).id;
}

String _$lectureControllerHash() => r'ad529ac391d713bdf1595ecbd7a7bbdab5b2cb13';

abstract class _$LectureController extends BuildlessAsyncNotifier<Lecture> {
  late final String id;

  FutureOr<Lecture> build(
    String id,
  );
}

/// See also [LectureController].
@ProviderFor(LectureController)
const lectureControllerProvider = LectureControllerFamily();

/// See also [LectureController].
class LectureControllerFamily extends Family<AsyncValue<Lecture>> {
  /// See also [LectureController].
  const LectureControllerFamily();

  /// See also [LectureController].
  LectureControllerProvider call(
    String id,
  ) {
    return LectureControllerProvider(
      id,
    );
  }

  @override
  LectureControllerProvider getProviderOverride(
    covariant LectureControllerProvider provider,
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
  String? get name => r'lectureControllerProvider';
}

/// See also [LectureController].
class LectureControllerProvider
    extends AsyncNotifierProviderImpl<LectureController, Lecture> {
  /// See also [LectureController].
  LectureControllerProvider(
    String id,
  ) : this._internal(
          () => LectureController()..id = id,
          from: lectureControllerProvider,
          name: r'lectureControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lectureControllerHash,
          dependencies: LectureControllerFamily._dependencies,
          allTransitiveDependencies:
              LectureControllerFamily._allTransitiveDependencies,
          id: id,
        );

  LectureControllerProvider._internal(
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
  FutureOr<Lecture> runNotifierBuild(
    covariant LectureController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(LectureController Function() create) {
    return ProviderOverride(
      origin: this,
      override: LectureControllerProvider._internal(
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
  AsyncNotifierProviderElement<LectureController, Lecture> createElement() {
    return _LectureControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LectureControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LectureControllerRef on AsyncNotifierProviderRef<Lecture> {
  /// The parameter `id` of this provider.
  String get id;
}

class _LectureControllerProviderElement
    extends AsyncNotifierProviderElement<LectureController, Lecture>
    with LectureControllerRef {
  _LectureControllerProviderElement(super.provider);

  @override
  String get id => (origin as LectureControllerProvider).id;
}

String _$lecturesHash() => r'c541f53a831635c6b9578983b0a279286455a9c8';

abstract class _$Lectures extends BuildlessAsyncNotifier<List<Lecture>> {
  late final String courseId;
  late final String sectionId;

  FutureOr<List<Lecture>> build({
    required String courseId,
    required String sectionId,
  });
}

/// See also [Lectures].
@ProviderFor(Lectures)
const lecturesProvider = LecturesFamily();

/// See also [Lectures].
class LecturesFamily extends Family<AsyncValue<List<Lecture>>> {
  /// See also [Lectures].
  const LecturesFamily();

  /// See also [Lectures].
  LecturesProvider call({
    required String courseId,
    required String sectionId,
  }) {
    return LecturesProvider(
      courseId: courseId,
      sectionId: sectionId,
    );
  }

  @override
  LecturesProvider getProviderOverride(
    covariant LecturesProvider provider,
  ) {
    return call(
      courseId: provider.courseId,
      sectionId: provider.sectionId,
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
  String? get name => r'lecturesProvider';
}

/// See also [Lectures].
class LecturesProvider
    extends AsyncNotifierProviderImpl<Lectures, List<Lecture>> {
  /// See also [Lectures].
  LecturesProvider({
    required String courseId,
    required String sectionId,
  }) : this._internal(
          () => Lectures()
            ..courseId = courseId
            ..sectionId = sectionId,
          from: lecturesProvider,
          name: r'lecturesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lecturesHash,
          dependencies: LecturesFamily._dependencies,
          allTransitiveDependencies: LecturesFamily._allTransitiveDependencies,
          courseId: courseId,
          sectionId: sectionId,
        );

  LecturesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.courseId,
    required this.sectionId,
  }) : super.internal();

  final String courseId;
  final String sectionId;

  @override
  FutureOr<List<Lecture>> runNotifierBuild(
    covariant Lectures notifier,
  ) {
    return notifier.build(
      courseId: courseId,
      sectionId: sectionId,
    );
  }

  @override
  Override overrideWith(Lectures Function() create) {
    return ProviderOverride(
      origin: this,
      override: LecturesProvider._internal(
        () => create()
          ..courseId = courseId
          ..sectionId = sectionId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        courseId: courseId,
        sectionId: sectionId,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<Lectures, List<Lecture>> createElement() {
    return _LecturesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LecturesProvider &&
        other.courseId == courseId &&
        other.sectionId == sectionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, courseId.hashCode);
    hash = _SystemHash.combine(hash, sectionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LecturesRef on AsyncNotifierProviderRef<List<Lecture>> {
  /// The parameter `courseId` of this provider.
  String get courseId;

  /// The parameter `sectionId` of this provider.
  String get sectionId;
}

class _LecturesProviderElement
    extends AsyncNotifierProviderElement<Lectures, List<Lecture>>
    with LecturesRef {
  _LecturesProviderElement(super.provider);

  @override
  String get courseId => (origin as LecturesProvider).courseId;
  @override
  String get sectionId => (origin as LecturesProvider).sectionId;
}

String _$sectionsHash() => r'e40ab060ff1e5b008d0faf84681335f144556a5c';

abstract class _$Sections extends BuildlessAsyncNotifier<List<Section>> {
  late final String courseId;

  FutureOr<List<Section>> build(
    String courseId,
  );
}

/// See also [Sections].
@ProviderFor(Sections)
const sectionsProvider = SectionsFamily();

/// See also [Sections].
class SectionsFamily extends Family<AsyncValue<List<Section>>> {
  /// See also [Sections].
  const SectionsFamily();

  /// See also [Sections].
  SectionsProvider call(
    String courseId,
  ) {
    return SectionsProvider(
      courseId,
    );
  }

  @override
  SectionsProvider getProviderOverride(
    covariant SectionsProvider provider,
  ) {
    return call(
      provider.courseId,
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
  String? get name => r'sectionsProvider';
}

/// See also [Sections].
class SectionsProvider
    extends AsyncNotifierProviderImpl<Sections, List<Section>> {
  /// See also [Sections].
  SectionsProvider(
    String courseId,
  ) : this._internal(
          () => Sections()..courseId = courseId,
          from: sectionsProvider,
          name: r'sectionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sectionsHash,
          dependencies: SectionsFamily._dependencies,
          allTransitiveDependencies: SectionsFamily._allTransitiveDependencies,
          courseId: courseId,
        );

  SectionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.courseId,
  }) : super.internal();

  final String courseId;

  @override
  FutureOr<List<Section>> runNotifierBuild(
    covariant Sections notifier,
  ) {
    return notifier.build(
      courseId,
    );
  }

  @override
  Override overrideWith(Sections Function() create) {
    return ProviderOverride(
      origin: this,
      override: SectionsProvider._internal(
        () => create()..courseId = courseId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        courseId: courseId,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<Sections, List<Section>> createElement() {
    return _SectionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SectionsProvider && other.courseId == courseId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, courseId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SectionsRef on AsyncNotifierProviderRef<List<Section>> {
  /// The parameter `courseId` of this provider.
  String get courseId;
}

class _SectionsProviderElement
    extends AsyncNotifierProviderElement<Sections, List<Section>>
    with SectionsRef {
  _SectionsProviderElement(super.provider);

  @override
  String get courseId => (origin as SectionsProvider).courseId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
