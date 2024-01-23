String? validEmail(String? input) {
  if (input == null) {
    return 'Bitte Email eingeben';
  }
  if (validateEmailRules(input)) {
    return null;
  }else {
    return 'Bitte eine valide Email eingeben';
  }
}

bool validateEmailRules(String input) {
  if (!input.contains('@')) {
    return false;
  }
  return true;
}