import 'dart:async';
import 'dart:developer';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../common/design_kit/app_theme.dart';
import '../common/router/agate_router.dart';
import '../core/widgets/widgets.dart';
import '../features/user/presentation/controllers/controllers.dart';
import 'amplifyconfiguration.dart';
import 'firebase_options.dart';

part 'bootstrap.dart';

part 'view/app.dart';
