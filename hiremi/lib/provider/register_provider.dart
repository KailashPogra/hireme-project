import 'package:flutter/foundation.dart';
import 'package:flutter_layout/provider/textediting_controller.dart';

class RegisterProvider extends ChangeNotifier {
  String _genderSelector = "";
  String get genderSelector => _genderSelector;

  bool _isMaleSelected = false;
  bool get isMaleSelected => _isMaleSelected;

  bool _isFemaleSelected = false;
  bool get isFemaleSelected => _isFemaleSelected;

  bool _isOtherSelected = false;
  bool get isOtherSelected => _isOtherSelected;

  void toggleGenderSelectionmale() {
    _isMaleSelected = true;
    _isFemaleSelected = false;
    _isOtherSelected = false;
    _genderSelector = "Male";
    notifyListeners();
  }

  void toggleGenderSelectionfemail() {
    _isFemaleSelected = true;
    _isMaleSelected = false;
    _isOtherSelected = false;
    _genderSelector = "Female";
    notifyListeners();
  }

  void toggleGenderSelectionOther() {
    _isOtherSelected = true;
    _isFemaleSelected = false;
    _isMaleSelected = false;
    _genderSelector = "other";
    notifyListeners();
  }

  // isVerified is use to check if the user is verified or not

  bool? _isVerified;

  bool? get isVerified => _isVerified;

  set isVerified(bool? value) {
    _isVerified = value;
    notifyListeners();
  }

  final MyTextEditingController _firstnameController =
      MyTextEditingController();
  final MyTextEditingController _lastnameController = MyTextEditingController();
  final MyTextEditingController _fatherFirstController =
      MyTextEditingController();
  final MyTextEditingController _fatherLastController =
      MyTextEditingController();

  final MyTextEditingController _emailController = MyTextEditingController();
  final MyTextEditingController _dateOfBirthController =
      MyTextEditingController();
  final MyTextEditingController _addressController = MyTextEditingController();

  final MyTextEditingController _birthStateController =
      MyTextEditingController();

  final MyTextEditingController _phoneNumberController =
      MyTextEditingController();
  final MyTextEditingController _whatsAppNumberController =
      MyTextEditingController();

  final MyTextEditingController _passwordController = MyTextEditingController();
  final MyTextEditingController _conformPasswordController =
      MyTextEditingController();

// for login controller
  final MyTextEditingController _loginEmailController =
      MyTextEditingController();
  final MyTextEditingController _loginPasswordController =
      MyTextEditingController();

  // now creating gatter
  MyTextEditingController get loginEmailController => _loginEmailController;
  MyTextEditingController get loginPasswordController =>
      _loginPasswordController;
  MyTextEditingController get firstnameController => _firstnameController;
  MyTextEditingController get lastnameController => _lastnameController;
  MyTextEditingController get fatherFirstController => _fatherFirstController;
  MyTextEditingController get fatherLastController => _fatherLastController;

  MyTextEditingController get emailController => _emailController;

  MyTextEditingController get dateOfBirthController => _dateOfBirthController;
  MyTextEditingController get addressController => _addressController;
  MyTextEditingController get birthStateController => _birthStateController;

  MyTextEditingController get phoneNumberController => _phoneNumberController;
  MyTextEditingController get whatsAppNumberController =>
      _whatsAppNumberController;

  MyTextEditingController get passwordController => _passwordController;
  MyTextEditingController get conformPasswordController =>
      _conformPasswordController;

  // Add more controllers as needed

  // Create a function to reset all controllers
  void resetControllers() {
    _loginEmailController.controller.clear();
    _loginPasswordController.controller.clear();
    _firstnameController.controller.clear();
    _lastnameController.controller.clear();
    _fatherFirstController.controller.clear();
    _fatherLastController.controller.clear();

    _emailController.controller.clear();
    _dateOfBirthController.controller.clear();
    _addressController.controller.clear();

    _birthStateController.controller.clear();

    _phoneNumberController.controller.clear();
    _whatsAppNumberController.controller.clear();

    _passwordController.controller.clear();
    _conformPasswordController.controller.clear();

    // Reset other controllers as well
  }
}
