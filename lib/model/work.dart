class Work {
  String? id;
  String? worktext;
  bool isDone;

  Work({
    required this.id,
    required this.worktext,
    this.isDone = false,
  });

  static List<Work> worklist() {
    return [
      Work(id: '01', worktext: 'Prayers', isDone: true),
      Work(id: '02', worktext: 'Breakfast', isDone: true),
      Work(id: '03', worktext: 'Programming Practice', isDone: true),
      Work(id: '04', worktext: 'Meeting'),
      Work(id: '05', worktext: 'Attened Class'),
      Work(id: '06', worktext: 'Lunch'),
      Work(id: '07', worktext: 'Dinner', isDone: true),
    ];
  }
}
