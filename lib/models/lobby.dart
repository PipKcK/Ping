class Lobby {
  final String id;
  final String name;
  final bool isPrivate;
  final int maxSeats;
  final int participants;

  Lobby({
    required this.id,
    required this.name,
    required this.isPrivate,
    required this.maxSeats,
    required this.participants,
  });
}
