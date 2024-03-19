class Task {
  final String id;
  final String title;
  final String body;
  final bool isCompleted;
  final int streak;

  Task({
    required this.isCompleted,
    required this.id,
    required this.streak,
    required this.title,
    required this.body,
  });
}
