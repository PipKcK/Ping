import 'package:flutter/material.dart';
import '../models/lobby.dart';

class LobbyCard extends StatelessWidget {
  final Lobby lobby;
  final VoidCallback onTap;

  const LobbyCard({super.key, required this.lobby, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          lobby.name,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        subtitle: Text(
          '${lobby.participants}/${lobby.maxSeats} players',
          style: TextStyle(color: Colors.grey[400]),
        ),
        trailing: lobby.isPrivate
            ? const Icon(Icons.lock, color: Colors.redAccent)
            : const Icon(Icons.public, color: Colors.greenAccent),
        onTap: onTap,
      ),
    );
  }
}
