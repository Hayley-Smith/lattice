class Day {
  final String id;
  final DateTime start;
  late DateTime end;
  final List<String> meals;

  Day({
    required this.meals,
    required this.id,
    required this.start,
  });
}
