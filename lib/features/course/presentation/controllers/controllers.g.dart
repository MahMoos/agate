// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lectureHash() => r'90ea92071b64439e37a083439170b7efe2671655';

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

/// See also [lecture].
@ProviderFor(lecture)
const lectureProvider = LectureFamily();

/// See also [lecture].
class LectureFamily extends Family<AsyncValue<Lecture>> {
  /// See also [lecture].
  const LectureFamily();

  /// See also [lecture].
  LectureProvider call(
    String id,
  ) {
    return LectureProvider(
      id,
    );
  }

  @override
  LectureProvider getProviderOverride(
    covariant LectureProvider provider,
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
  String? get name => r'lectureProvider';
}

/// See also [lecture].
class LectureProvider extends AutoDisposeFutureProvider<Lecture> {
  /// See also [lecture].
  LectureProvider(
    String id,
  ) : this._internal(
          (ref) => lecture(
            ref as LectureRef,
            id,
          ),
          from: lectureProvider,
          name: r'lectureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lectureHash,
          dependencies: LectureFamily._dependencies,
          allTransitiveDependencies: LectureFamily._allTransitiveDependencies,
          id: id,
        );

  LectureProvider._internal(
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
    FutureOr<Lecture> Function(LectureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LectureProvider._internal(
        (ref) => create(ref as LectureRef),
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
  AutoDisposeFutureProviderElement<Lecture> createElement() {
    return _LectureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LectureProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LectureRef on AutoDisposeFutureProviderRef<Lecture> {
  /// The parameter `id` of this provider.
  String get id;
}

class _LectureProviderElement extends AutoDisposeFutureProviderElement<Lecture>
    with LectureRef {
  _LectureProviderElement(super.provider);

  @override
  String get id => (origin as LectureProvider).id;
}

String _$sectionHash() => r'295a111a45d081e5d50126ee01462efb5de5655d';

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
class SectionProvider extends AutoDisposeFutureProvider<Section> {
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
  AutoDisposeFutureProviderElement<Section> createElement() {
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

mixin SectionRef on AutoDisposeFutureProviderRef<Section> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SectionProviderElement extends AutoDisposeFutureProviderElement<Section>
    with SectionRef {
  _SectionProviderElement(super.provider);

  @override
  String get id => (origin as SectionProvider).id;
}

String _$courseControllerHash() => r'65d10eead635c13e2374b795b7b82b1fe4521774';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
