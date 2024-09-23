import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:no_screenshot/no_screenshot.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

import '../common/design_kit/app_theme.dart';
import '../common/gen/assets.gen.dart';
import '../common/router/agate_router.dart';
import '../core/extensions/extensions.dart';
import '../core/services/auth/auth_service.dart';
import '../core/services/logger/logger.dart';
import '../core/widgets/widgets.dart';
import '../features/user/presentation/controllers/controllers.dart';

part 'bootstrap.dart';
part 'view/app.dart';
