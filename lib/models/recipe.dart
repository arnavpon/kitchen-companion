// modeling for a recipe as a tree
// recipe is composed of ingredients + instructions
// ingredients are themselves composed of ingredients, combined/modified using actions

class Meal {
  String name;
  String type;
  String genre;
  List<Recipe> recipes;

  Meal({
    required this.name,
    required this.type,
    required this.genre,
    required this.recipes,
  });
}

class Recipe {
  Uri documentURI; // reference to file with XML of the recipe
  String name;
  List<Ingredient> ingredients;
  List<Instruction> preparationSteps;
  List<Instruction> cookingSteps;
  List<Equipment> equipment;
  Map<String, dynamic>? metadata; // contains info like portion size

  Recipe({
    required this.documentURI,
    required this.name,
    required this.ingredients,
    required this.preparationSteps,
    required this.cookingSteps,
    required this.equipment,
    this.metadata,
  });

  // Instance Methods

  void scaleIngredientsForPortionSize(int size) {
    /// scales the ingredients using specified portionSize in metadata compared to desired size
    return null;
  }
}

class Ingredient {
  String name;
  int quantity;
  String unit; // e.g. cup, tbsp
  List composition =
      []; // graphical representation of how ingredient was created
  String? nutritionLabel;

  Ingredient({
    required this.name,
    required this.quantity,
    required this.unit,
  });
}

class IngredientQuantity {
  double amount;
  String unit; // make into enum containing various types of units

  IngredientQuantity({
    required this.amount,
    required this.unit,
  });
}

class Instruction {
  String description;
  int time;
  String? utensil; // optional
  Instruction({
    required this.description,
    required this.time,
    this.utensil,
  });
}

class Action {
  int id;
  String action; // textual representation of action
  ActionTypes
      type; // either a combination or modification, e.g. chopping is modification, mixing is a combination action
  Action({
    required this.id,
    required this.action,
    required this.type,
  });
}

class ActionDuration {
  String modifier; // textual representation for action duration
  int duration =
      -1; // how long action takes to complete in seconds; what if time is unknown like cutting a vegetable? Should we even include this within the action object, since timing depends on what is being acted on (e.g. cutting depends on what is being cut, as does boiling, steaming, etc.)

  ActionDuration({
    required this.modifier,
    required this.duration,
  });
}

abstract class ActionTypes {
  Ingredient applyAction() {
    return Ingredient(name: "", quantity: 0, unit: "");
  }
}

class CombinationAction extends ActionTypes {
  @override
  Ingredient applyAction() {
    return Ingredient(name: "", quantity: 0, unit: "");
  }
}

class ModificationAction extends ActionTypes {
  @override
  Ingredient applyAction() {
    return Ingredient(name: "", quantity: 0, unit: "");
  }
}

class Equipment {
  String name; // textual representation
  String type; // e.g. pot, pan, bowl, etc. -> useful for flexibility
  Equipment({
    required this.name,
    required this.type,
  });
}
