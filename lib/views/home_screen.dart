import 'package:flutter/material.dart';
import 'package:kitchen_companion/views/widgets/add_recipe_widget.dart';

//  Home Screen for application
//  Displays the meal schedule for the current week
//      - Idea is that user can create a master list of meals that are known to them in terms of preparation, and continue to build this list over time. Refer to this list when menu planning, inputting these recipes into the schedule.
//      - At meal scheduling time: assign a meal to a particular part of the day or days. Can increase structure of the meal schedule by building constraints, say Friday is Fish Day, Monday is Vegetarian, etc. These constraints can guide the AUTO-ASSIGNING process for meals. On auto-assign, populate specific meals from the availability list, then use the final schedule to generate a grocery list.
//      - System should also be able to incorporate TEST meals, which aren't yet in our meal list but are meals we wish to learn.
//      - Users should be able to go back and view meals from previous weeks, so we need to cache the meal schedule over time (& prevent editing after date has passed). Store data in AWS.
//      - Add recipe name to list, tag by type & genre, use color tagging for folders on Mac as inspiration. The meal display list has 3 LEVELS - (1) sort characteristic (type, genre, or a different index); (2) meals belonging to the category; (3) recipes for the specific meal. User can choose different sort characteristics to view meals in different ways (need scalable method for this that uses index & enables referencing by index).

// First flow is for menu planning
// 1) need a way to add/edit MEAL names & display in table view
// create repository of MEALS - a single meal can have multiple recipes to make it
// each meal name should be unique, e.g. "Garlic & Oil Pasta" w/ any number of linked recipes
// tag/categorize recipes based on type of cuisine
// Read up on how to user CoreData again, create Fetch & lookup methods
//  - how to handle recipe metadata w/ portionSize
//  - how to handle utensils (e.g. pots/pans required), in metadata?
// Meals are displayed in side bar along left side of home screen, where user can add/remove/edit
//  - First level in OutlineView is some sort of tag (type/genre) to categorize/sort meals
//  - Second level is list of meals of the specified tag type
//  - Third level is recipes linked to the specified meal
// search functionality, how to arrange meals in view, editing views (allow reordering?)

// 2) need a way to schedule meals for the week. needs to be flexible to accommodate variety of eating routines (breakfast + dinner, B/L/D, etc.) & time frames (does user schedule week by week, longer or shorter periods, etc).
// needs to understand user's meal habits. ask how many meals per day, which ones need assigning
// calendar, can assign meals to particular days of the week
// can set constraints (e.g. Friday is "Italian" day)
// user can auto-schedule meals (done based on constraints) or add recipe to a day manually
// attempts to maximize time between repetitions
// needs to understand how long given meal will last for

// 3) convert the menu for the week into a recipe -> grocery list -> mobile app companion
//  All recipes are represented by a recipe XML format (document) backing up the recipe name, for document persistence (iCloud vs. AWS document storage vs. local file storage) AND a recipe object built in code that maps directly to & from the XML.
// part 0 of XML document will be METADATA (info on portionSize, required utensils, etc.)
// part 1 of XML document will be INGREDIENTS
// part 2 of XML document will be PREPARATION (instructions)
// part 3 of XML document will be COOKING (instructions)
// create a data object in code to back up XML to enable recipe scaling based on # needed to feed.
// sync XML documents w/ iCloud (or use AWS for better control)
// need to use Cloud to hold grocery list & pull when user loads iPhone app (AWS)

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Input'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AddRecipeWidget(),
          ],
        ),
      ),
    );
  }
}
