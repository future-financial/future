import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    hide AsyncValue, AsyncData;
import 'package:future/app/routes/routes.dart';
import 'package:future/entities/user/view_model/user_notifier_provider.dart';
import 'package:future/shared/extensions/async_value_extensions.dart';
import 'package:future/shared/ui/avatar.dart';
import 'package:go_router/go_router.dart';

class UserAvatar extends ConsumerWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userNotifierProvider);
    final userAvatarUrl = userState.data?.userMetadata?['avatar_url'];

    return GestureDetector(
      onTap: () {
        context.push(Routes.profile);
      },
      child: SizedBox(
        height: 50,
        width: 50,
        child: Avatar(imageUrl: userAvatarUrl, shape: AvatarShape.circle),
      ),
    );
  }
}
