String calculateGoalProgress(double currentAmount, double targetAmount) {
  if (targetAmount == 0) return '0%';
  final progress = (currentAmount / targetAmount) * 100;
  return '${progress.toStringAsFixed(1)}%';
}

double calculateGoalProgressValue(double currentAmount, double targetAmount) {
  if (targetAmount == 0) return 0.0;
  return currentAmount / targetAmount;
}
