import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';

class CustomInput extends StatelessWidget {
  final Widget leading;
  final Widget suffix;
  final Widget prefix;
  final TextInputType keyboardType;
  final TextEditingController textEditingController;
  final String labelText;
  final FormFieldValidator<String> validator;
  final FormFieldSetter<String> onSave;
  final String hintText;
  final String helpText;
  final bool isOutline;
  final bool avtoFocus;
  final Key key;
  final EdgeInsets contentPadding;
  final Key inputKey;
  final int maxLength;
  final int maxLines;
  final bool obscure;
  final bool enabled;
  final bool enableClearBtn;
  final dynamic mask;
  final Function onChanged;
  final EdgeInsets margin;

  CustomInput(
      {this.maxLength,
      this.maxLines,
      this.mask,
      this.leading,
      this.suffix,
      this.prefix,
      this.keyboardType,
      this.hintText,
      this.labelText,
      this.isOutline = true,
      this.avtoFocus = false,
      this.helpText,
      this.textEditingController,
      this.validator,
      this.onSave,
      this.inputKey,
      this.contentPadding,
      this.key,
      this.obscure = false,
      this.enabled = true,
      this.enableClearBtn = true,
      this.margin,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? null,
      child: TextFormField(
        inputFormatters: this.mask,
        key: inputKey,
        autofocus: avtoFocus,
        autocorrect: false,
        enabled: enabled,
        keyboardType: keyboardType,
        controller: textEditingController,
        validator: validator,
        onSaved: onSave,
        onChanged: (val) {
          onChanged(val);
        },
        maxLength: maxLength,
        maxLines: maxLines,
        obscureText: obscure,
        decoration: InputDecoration(
            fillColor: TaskColors.background2,
            filled: true,
            // prefix: leading,
            icon: leading,
            prefix: prefix,
            counterStyle: TextStyle(color: Colors.transparent),
            suffix: suffix,
            contentPadding: contentPadding ??
                EdgeInsets.only(left: 10, right: 6, bottom: 6),
            border: isOutline == true
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe5e5e5), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe5e5e5), width: 1),
                  ),
            enabledBorder: isOutline == true
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe5e5e5), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe5e5e5), width: 1),
                  ),
            focusedBorder: isOutline == true
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF90640), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF90640), width: 2)),
            focusedErrorBorder: isOutline == true
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF68080), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF68080), width: 2)),
            errorBorder: isOutline == true
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF68080), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF68080), width: 2)),
            labelText: labelText,
            helperText: helpText,
            hintText: hintText),
      ),
    );
  }
}
