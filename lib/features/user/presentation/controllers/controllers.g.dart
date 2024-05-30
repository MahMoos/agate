// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRepositoryHash() => r'e26abbcfa8b708d18fc924b2e0ea12db9652ad40';

/// See also [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = FutureProvider<UserRepository>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRepositoryRef = FutureProviderRef<UserRepository>;
String _$preferencesControllerHash() =>
    r'8f113fd6108a8352cc86f50090c6bdc5365cf7d1';

/// See also [PreferencesController].
@ProviderFor(PreferencesController)
final preferencesControllerProvider =
    AsyncNotifierProvider<PreferencesController, Preferences>.internal(
  PreferencesController.new,
  name: r'preferencesControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$preferencesControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PreferencesController = AsyncNotifier<Preferences>;
String _$transactionsHash() => r'dc3236cb6e616a8ac9f13c228004e6f685f8e00d';

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

abstract class _$Transactions
    extends BuildlessAsyncNotifier<List<Transaction>> {
  late final String language;
  late final TransactionType? type;

  FutureOr<List<Transaction>> build({
    required String language,
    TransactionType? type,
  });
}

/// See also [Transactions].
@ProviderFor(Transactions)
const transactionsProvider = TransactionsFamily();

/// See also [Transactions].
class TransactionsFamily extends Family<AsyncValue<List<Transaction>>> {
  /// See also [Transactions].
  const TransactionsFamily();

  /// See also [Transactions].
  TransactionsProvider call({
    required String language,
    TransactionType? type,
  }) {
    return TransactionsProvider(
      language: language,
      type: type,
    );
  }

  @override
  TransactionsProvider getProviderOverride(
    covariant TransactionsProvider provider,
  ) {
    return call(
      language: provider.language,
      type: provider.type,
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
  String? get name => r'transactionsProvider';
}

/// See also [Transactions].
class TransactionsProvider
    extends AsyncNotifierProviderImpl<Transactions, List<Transaction>> {
  /// See also [Transactions].
  TransactionsProvider({
    required String language,
    TransactionType? type,
  }) : this._internal(
          () => Transactions()
            ..language = language
            ..type = type,
          from: transactionsProvider,
          name: r'transactionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$transactionsHash,
          dependencies: TransactionsFamily._dependencies,
          allTransitiveDependencies:
              TransactionsFamily._allTransitiveDependencies,
          language: language,
          type: type,
        );

  TransactionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.language,
    required this.type,
  }) : super.internal();

  final String language;
  final TransactionType? type;

  @override
  FutureOr<List<Transaction>> runNotifierBuild(
    covariant Transactions notifier,
  ) {
    return notifier.build(
      language: language,
      type: type,
    );
  }

  @override
  Override overrideWith(Transactions Function() create) {
    return ProviderOverride(
      origin: this,
      override: TransactionsProvider._internal(
        () => create()
          ..language = language
          ..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        language: language,
        type: type,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<Transactions, List<Transaction>>
      createElement() {
    return _TransactionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionsProvider &&
        other.language == language &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TransactionsRef on AsyncNotifierProviderRef<List<Transaction>> {
  /// The parameter `language` of this provider.
  String get language;

  /// The parameter `type` of this provider.
  TransactionType? get type;
}

class _TransactionsProviderElement
    extends AsyncNotifierProviderElement<Transactions, List<Transaction>>
    with TransactionsRef {
  _TransactionsProviderElement(super.provider);

  @override
  String get language => (origin as TransactionsProvider).language;
  @override
  TransactionType? get type => (origin as TransactionsProvider).type;
}

String _$walletControllerHash() => r'82c598d03e2e1547fc9a73b0670e94f8017e9436';

/// See also [WalletController].
@ProviderFor(WalletController)
final walletControllerProvider =
    AsyncNotifierProvider<WalletController, Balance>.internal(
  WalletController.new,
  name: r'walletControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$walletControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WalletController = AsyncNotifier<Balance>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
