import 'package:flutter/material.dart';

// Allow user to add a recipe to the Recipe Box
// can either pull from a URL
// or can input manually
// once data is entered, parse the recipe into a standardized format, store as XML file?

class AddRecipeWidget extends StatefulWidget {
  const AddRecipeWidget({super.key});

  @override
  State<AddRecipeWidget> createState() => _AddRecipeWidgetState();
}

class _AddRecipeWidgetState extends State<AddRecipeWidget> {
  final _formKey = GlobalKey<FormState>();
  final _urlController = TextEditingController();
  final _nameController = TextEditingController();
  final _ingredientsController = TextEditingController();

  @override
  void dispose() {
    _urlController.dispose();
    _nameController.dispose();
    _ingredientsController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Handle form submission
      print("URL: ${_urlController.text}");
      print("Name: ${_nameController.text}");
      print("Ingredients: ${_ingredientsController.text}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text("URL"),
          TextFormField(
            controller: _urlController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a URL';
              }
              return null;
            },
          ),
          Text("Name"),
          TextFormField(
            controller: _nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a name';
              }
              return null;
            },
          ),
          Text("Ingredients"),
          TextFormField(
            controller: _ingredientsController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter ingredients';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: _submitForm,
            child: Text("Add Recipe"),
          ),
        ],
      ),
    );
  }
}
