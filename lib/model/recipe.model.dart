class Recipe {
  String? id;
  String? image;
  String name;
  bool isPlanned;
  bool isInPlanningBag;
  Recipe({
    this.id,
    this.image,
    required this.name,
    this.isPlanned = false,
    this.isInPlanningBag = false,
  });

  @override
  String toString() {
    return 'Recipe{id: $id, image: $image, name: $name,isInPlanningBag: $isInPlanningBag,  isPlanned: $isPlanned}';
  }
}
