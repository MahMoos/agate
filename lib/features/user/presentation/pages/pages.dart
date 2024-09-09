import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';

import '../../../../common/gen/assets.gen.dart';
import '../../../../common/widgets/widgets.dart';
import '../../../../core/exceptions/http_exception.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/models/models.dart';
import '../../../../core/services/auth/auth_service.dart';
import '../../../../core/services/updater/updater_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../controllers/controllers.dart';
import '../widgets/widgets.dart';

part 'about_us_page.dart';
part 'deposit_page.dart';
part 'edit_profile_page.dart';
part 'login_page.dart';
part 'profile_page.dart';
part 'register_page.dart';
part 'wallet_page.dart';
