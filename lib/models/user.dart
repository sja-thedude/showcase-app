class User {
  final String name;
  final String email;
  final String avatarUrl;
  final String bio;

  const User({
    required this.name,
    required this.email,
    required this.avatarUrl,
    required this.bio,
  });

  static const mock = User(
    name: 'Juveria Afreen',
    email: 'juveria@example.com',
    avatarUrl: '',
    bio: 'Flutter developer & tech enthusiast. Building modern apps one widget at a time.',
  );
}
