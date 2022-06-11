class User {
  final String id;
  final String name;
  final String email;
  final bool admin;
  final bool authorized;
  final List<String> providers;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.admin,
    required this.authorized,
    required this.providers,
  });
}
