class Todo {
  final String name;
  final DateTime createdAt;

  Todo(this.name, this.createdAt);

  @override
  String toString() {
    return 'Todo{name: $name, createdAt: $createdAt}';
  }
}
