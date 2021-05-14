String isRequiredValidator(String val) {
  if (val == null || val?.isEmpty == true) {
    return 'Обязательное поле';
  }
  return null;
}
