import 'dart:io';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/storage/storage_service.dart';
import '../../data/data_sources/local_user_data_source.dart';
import '../../data/repositories/agate_user_repository.dart';
import '../../domain/entities/entities.dart';
import '../../domain/use_cases/use_cases.dart';

part 'controllers.g.dart';

part 'preferences_controller.dart';
