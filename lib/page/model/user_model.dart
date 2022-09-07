class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'assets/p1.png',
  isOnline: true,
);

// USERS
final User shantanu = User(
  id: 1,
  name: 'shantanu',
  imageUrl: 'assets/p1.png',
  isOnline: true,
);

final User Avinash = User(
  id: 2,
  name: 'Avinash',
  imageUrl: 'assets/p2.png',
  isOnline: true,
);

final User Luis = User(
  id: 3,
  name: 'Luis',
  imageUrl: 'assets/p3.png',
  isOnline: false,
);

final User John = User(
  id: 3,
  name: 'John',
  imageUrl: 'assets/p4.png',
  isOnline: false,
);

