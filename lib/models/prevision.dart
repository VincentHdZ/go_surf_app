class Prevision {
  final String id;
  final DateTime date;
  final int periode;
  final int temperature;
  final int coef;
  final String highTideInMorning;
  final String highTideAfternoon;
  final String lowTideInMorning;
  final String lowTideInAfternoon;
  final String idSpot;
  final conditions = const [
    {
      'hour': '6:00 at 9:00',
      'houle': '1',
      'dv': 'N',
    },
    {
      'hour': '9:00 at 12:00',
      'houle': '1',
      'dv': 'E',
    },
    {
      'hour': '12:00 at 15:00',
      'houle': '1',
      'dv': 'E',
    },
    {
      'hour': '15:00 at 18:00',
      'houle': '1.5',
      'dv': 'SE',
    },
    {
      'hour': '18:00 at 21:00',
      'houle': '1.80',
      'dv': 'NE',
    },
  ];

  Prevision(
    this.id,
    this.date,
    this.periode,
    this.temperature,
    this.coef,
    this.highTideAfternoon,
    this.highTideInMorning,
    this.lowTideInMorning,
    this.lowTideInAfternoon,
    this.idSpot,
  );
}
