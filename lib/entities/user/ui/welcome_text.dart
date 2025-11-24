import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future/entities/user/view_model/user_notifier_provider.dart';
import 'package:future/shared/extensions/async_value_extensions.dart';
import 'package:future/shared/extensions/date_time_extensions.dart';
import 'package:future/shared/extensions/string_extensions.dart';

class WelcomeText extends ConsumerWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userNotifierProvider);
    final user = userState.data;
    final userName = user?.userMetadata?['name'] as String?;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome, ${userName?.firstWord ?? 'Guest'}!',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          DateTime.now().toFullDateTime(),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
