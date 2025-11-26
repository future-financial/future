import 'package:future/entities/goal/model/goal_model.dart';
import 'package:future/shared/lib/supabase/instance.dart';

class GoalService {
  Future<GoalModel> getPinnedGoal() async {
    try {
      final response = await supabase
          .from('goals')
          .select('*')
          .eq('is_pinned', true)
          .single();

      return GoalModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
