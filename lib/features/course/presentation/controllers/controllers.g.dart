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

String _$courseControllerHash() => r'3844ad253c0d13c21612f33a6374b14c8b768bf4';

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

String _$lectureControllerHash() => r'edf28fbc1a35897a0ae7b9c983bc31296b98ac20';

abstract class _$LectureController extends BuildlessAsyncNotifier<Lecture> {
  late final String id;
  late final String courseId;

  FutureOr<Lecture> build(
    String id,
    String courseId,
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
    String courseId,
  ) {
    return LectureControllerProvider(
      id,
      courseId,
    );
  }

  @override
  LectureControllerProvider getProviderOverride(
    covariant LectureControllerProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'lectureControllerProvider';
}

/// See also [LectureController].
class LectureControllerProvider
    extends AsyncNotifierProviderImpl<LectureController, Lecture> {
  /// See also [LectureController].
  LectureControllerProvider(
    String id,
    String courseId,
  ) : this._internal(
          () => LectureController()
            ..id = id
            ..courseId = courseId,
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
          courseId: courseId,
        );

  LectureControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.courseId,
  }) : super.internal();

  final String id;
  final String courseId;

  @override
  FutureOr<Lecture> runNotifierBuild(
    covariant LectureController notifier,
  ) {
    return notifier.build(
      id,
      courseId,
    );
  }

  @override
  Override overrideWith(LectureController Function() create) {
    return ProviderOverride(
      origin: this,
      override: LectureControllerProvider._internal(
        () => create()
          ..id = id
          ..courseId = courseId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        courseId: courseId,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<LectureController, Lecture> createElement() {
    return _LectureControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LectureControllerProvider &&
        other.id == id &&
        other.courseId == courseId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, courseId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LectureControllerRef on AsyncNotifierProviderRef<Lecture> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `courseId` of this provider.
  String get courseId;
}

class _LectureControllerProviderElement
    extends AsyncNotifierProviderElement<LectureController, Lecture>
    with LectureControllerRef {
  _LectureControllerProviderElement(super.provider);

  @override
  String get id => (origin as LectureControllerProvider).id;
  @override
  String get courseId => (origin as LectureControllerProvider).courseId;
}

String _$lecturesHash() => r'fffc37be93dd1ecec19d2e09089a5004a7b9da0c';

abstract class _$Lectures extends BuildlessAsyncNotifier<List<Lecture>> {
  late final String courseId;

  FutureOr<List<Lecture>> build(
    String courseId,
  );
}

/// See also [Lectures].
@ProviderFor(Lectures)
const lecturesProvider = LecturesFamily();

/// See also [Lectures].
class LecturesFamily extends Family<AsyncValue<List<Lecture>>> {
  /// See also [Lectures].
  const LecturesFamily();

  /// See also [Lectures].
  LecturesProvider call(
    String courseId,
  ) {
    return LecturesProvider(
      courseId,
    );
  }

  @override
  LecturesProvider getProviderOverride(
    covariant LecturesProvider provider,
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
  String? get name => r'lecturesProvider';
}

/// See also [Lectures].
class LecturesProvider
    extends AsyncNotifierProviderImpl<Lectures, List<Lecture>> {
  /// See also [Lectures].
  LecturesProvider(
    String courseId,
  ) : this._internal(
          () => Lectures()..courseId = courseId,
          from: lecturesProvider,
          name: r'lecturesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lecturesHash,
          dependencies: LecturesFamily._dependencies,
          allTransitiveDependencies: LecturesFamily._allTransitiveDependencies,
          courseId: courseId,
        );

  LecturesProvider._internal(
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
  FutureOr<List<Lecture>> runNotifierBuild(
    covariant Lectures notifier,
  ) {
    return notifier.build(
      courseId,
    );
  }

  @override
  Override overrideWith(Lectures Function() create) {
    return ProviderOverride(
      origin: this,
      override: LecturesProvider._internal(
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
  AsyncNotifierProviderElement<Lectures, List<Lecture>> createElement() {
    return _LecturesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LecturesProvider && other.courseId == courseId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, courseId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LecturesRef on AsyncNotifierProviderRef<List<Lecture>> {
  /// The parameter `courseId` of this provider.
  String get courseId;
}

class _LecturesProviderElement
    extends AsyncNotifierProviderElement<Lectures, List<Lecture>>
    with LecturesRef {
  _LecturesProviderElement(super.provider);

  @override
  String get courseId => (origin as LecturesProvider).courseId;
}

String _$reviewsHash() => r'19ca31c9388758b5a477c3d62091d50bf451a9c4';

abstract class _$Reviews extends BuildlessAsyncNotifier<List<Review>> {
  late final String courseId;
  late final String? lectureId;

  FutureOr<List<Review>> build(
    String courseId,
    String? lectureId,
  );
}

/// See also [Reviews].
@ProviderFor(Reviews)
const reviewsProvider = ReviewsFamily();

/// See also [Reviews].
class ReviewsFamily extends Family<AsyncValue<List<Review>>> {
  /// See also [Reviews].
  const ReviewsFamily();

  /// See also [Reviews].
  ReviewsProvider call(
    String courseId,
    String? lectureId,
  ) {
    return ReviewsProvider(
      courseId,
      lectureId,
    );
  }

  @override
  ReviewsProvider getProviderOverride(
    covariant ReviewsProvider provider,
  ) {
    return call(
      provider.courseId,
      provider.lectureId,
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
  String? get name => r'reviewsProvider';
}

/// See also [Reviews].
class ReviewsProvider extends AsyncNotifierProviderImpl<Reviews, List<Review>> {
  /// See also [Reviews].
  ReviewsProvider(
    String courseId,
    String? lectureId,
  ) : this._internal(
          () => Reviews()
            ..courseId = courseId
            ..lectureId = lectureId,
          from: reviewsProvider,
          name: r'reviewsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reviewsHash,
          dependencies: ReviewsFamily._dependencies,
          allTransitiveDependencies: ReviewsFamily._allTransitiveDependencies,
          courseId: courseId,
          lectureId: lectureId,
        );

  ReviewsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.courseId,
    required this.lectureId,
  }) : super.internal();

  final String courseId;
  final String? lectureId;

  @override
  FutureOr<List<Review>> runNotifierBuild(
    covariant Reviews notifier,
  ) {
    return notifier.build(
      courseId,
      lectureId,
    );
  }

  @override
  Override overrideWith(Reviews Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReviewsProvider._internal(
        () => create()
          ..courseId = courseId
          ..lectureId = lectureId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        courseId: courseId,
        lectureId: lectureId,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<Reviews, List<Review>> createElement() {
    return _ReviewsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReviewsProvider &&
        other.courseId == courseId &&
        other.lectureId == lectureId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, courseId.hashCode);
    hash = _SystemHash.combine(hash, lectureId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ReviewsRef on AsyncNotifierProviderRef<List<Review>> {
  /// The parameter `courseId` of this provider.
  String get courseId;

  /// The parameter `lectureId` of this provider.
  String? get lectureId;
}

class _ReviewsProviderElement
    extends AsyncNotifierProviderElement<Reviews, List<Review>>
    with ReviewsRef {
  _ReviewsProviderElement(super.provider);

  @override
  String get courseId => (origin as ReviewsProvider).courseId;
  @override
  String? get lectureId => (origin as ReviewsProvider).lectureId;
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
