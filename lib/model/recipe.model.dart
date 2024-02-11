class Recipe {
  String? id;
  String? image;
  String name;
  bool isPlanned;
  Recipe({
    this.id,
    this.image,
    required this.name,
    this.isPlanned = false,
  });

  @override
  String toString() {
    return 'Recipe{id: $id, image: $image, name: $name, isPlanned: $isPlanned}';
  }
}
