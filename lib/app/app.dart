import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../common/design_kit/app_theme.dart';
import '../common/router/agate_router.dart';
import '../core/extensions/extensions.dart';
import '../features/user/presentation/controllers/controllers.dart';

part 'bootstrap.dart';
part 'view/app.dart';
