import 'dart:developer';

// basic format: initialize the validator class & configure w/ the requirements
// then run the inputs through the validator, which tells you if the input conforms, & if not, generates a useful error message to you & the user

class BaseFormInputValidator {
  // base validator
  BaseFormInputValidator();

  String? validateInput(String? input) {
    // validates default form field input (ensures value is non-empty)
    if (input == null || input.isEmpty) {
      return "enter a value";
    }
    return null; // valid input
  }
}

class StringFormInputValidator extends BaseFormInputValidator {
  // for validating text inputs
  StringFormInputValidator() : super();

  // what are the different things you can validate?
  // min & max length of string
}

class NumericalFormInputValidator extends BaseFormInputValidator {
  // for validating numerical inputs (defaults to double value)
  NumericalFormInputValidator() : super();

  @override
  String? validateInput(String? input) {
    var _topLevelValidation = super.validateInput(input);
    if (_topLevelValidation != null) {
      // check return value of superclass first
      return _topLevelValidation;
    }
    try {
      double _ = double.parse(input!);
    } catch (error) {
      log(error.toString());
      return "enter valid number"; // non-numerical entry
    }
    return null; // valid input
  }
}

class IntegerFormInputValidator extends NumericalFormInputValidator {
  // for validating integer inputs
  IntegerFormInputValidator() : super();

  @override
  String? validateInput(String? input) {
    var _topLevelValidation = super.validateInput(input);
    if (_topLevelValidation != null) {
      // check return value of superclass first
      return _topLevelValidation;
    }
    try {
      int _ = int.parse(input!);
    } catch (error) {
      log(error.toString());
      return "enter a whole number";
    }
    return null; // valid input
  }
}
