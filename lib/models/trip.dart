
enum Season {
  //yemchy kima lclass
  winter,
  spring,
  summer,
  autumn,
}

enum TripType {
  // ignore: constant_identifier_names
  Exploration,
  // ignore: constant_identifier_names
  Recovery,
  activities,
  therapy,
}

class Trip {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> activities;
  final List<String> program;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamily;

  const Trip(
      {required this.isInSummer,
      required this.isForFamily,
      required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.activities,
      required this.isInWinter,
      required this.program,
      required this.duration,
      required this.season,
      required this.tripType});
}//const bech matetbedel ken mel data 
