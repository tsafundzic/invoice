import 'package:di/domain_module.dart';
import 'package:invoice/core/utils/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appRouterProvider = Provider((ref) => AppRouter(ref.watch(userUseCaseProvider)));
