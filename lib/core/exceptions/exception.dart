import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/router/agate_router.dart';
import '../extensions/extensions.dart';
import 'http_exception.dart';

FutureOr<Null> handleSubscriptionException(Object e) {
  final context = rootNavigatorKey.currentContext;
  if (context == null) return null;
  if (e is HttpException &&
      e.message != null &&
      (e.message!.contains('wallet') || e.message!.contains('balance'))) {
    context.showSnackBar(
      SnackBar(
        content: Text(context.strings.walletEmpty),
        action: SnackBarAction(
          label: context.strings.deposit,
          onPressed: () => context.pushNamed('deposit'),
        ),
      ),
    );
  } else {
    context.showSnackBarMessage(
      context.strings.errorOccurred,
    );
  }
}
