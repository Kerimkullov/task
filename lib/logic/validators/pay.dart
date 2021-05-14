String accValidator(String str) {
  if (str.isEmpty) {
    return 'Обязательное поле';
  }
  return null;
}

String sumValidator(String str, {double minSum, double maxSum}) {
  if (str.isEmpty) {
    return 'Обязательное поле';
  } else if (str.length > 5) {
    return 'Максимальная длина символов';
  }

  var regexp = RegExp(r'^[0-9]*$');

  if (!regexp.hasMatch(str)) {
    return 'Разрешены только целые числа';
  }

  var intVal = int.parse(str);

  var minSumVal = minSum ?? 1.0;
  var maxSumVal = maxSum ?? 99999999.0;

  if (intVal.toDouble() < minSumVal) {
    return 'Неверная минимальная сумма: ${minSumVal.toStringAsFixed(2)}';
  }

  if (intVal.toDouble() > maxSumVal) {
    return 'Неверная максимальная сумма сумма: ${maxSumVal.toStringAsFixed(2)}';
  }

  return null;
}

String sumValidatorDouble(String str) {
  if (str.isEmpty) {
    return 'Обязательное поле';
  } else if (str.length > 8) {
    return 'Максимальная длина символов';
  }

  var dVal = double.tryParse(str);

  if (dVal == null) {
    return 'Разрешены только целые числа';
  }

  if (dVal < 5.0) {
    return 'Минимальный платеж 5.00 сом';
  }

  return null;
}

String pinCodeValidator(String str) {
  if (str.isEmpty) {
    return 'validators.pay.enter_code';
  } else if (str.length > 4) {
    return 'validators.short_pin_len';
  }
  var regexp = RegExp(r'^[0-9]*$');

  if (!regexp.hasMatch(str)) {
    return 'validators.integers';
  }

  return null;
}

String addToFavoriteValidator(String str) {
  if (str.isEmpty) {
    return 'validators.required';
  } else if (str.length > 30) {
    return 'validators.pay.max_len';
  }

  return null;
}
