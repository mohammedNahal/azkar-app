import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
   TextFormFieldWidget({
    required this.controller,
    this.hint,
    this.hintDuration,
    this.hintDirection = TextDirection.ltr,
    this.hintTextStyle,
    this.hintMaxLines = 1,
    this.label,
    this.labelTextStyle,
    this.keyboardType,
    this.fillColor,
    this.isFilled = false,
    this.prefixIcon,
    this.prefixText,
    this.suffixIcon,
    this.suffixText,
    this.isEnable = true,
    this.enableRadiusOutline = 10.0,
    this.enableColorOutline,
    this.enableWidthOutline = 1.0,
    this.disableRadiusOutline = 10.0,
    this.disableColorOutline,
    this.disableWidthOutline = 1.0,
    this.focusedRadiusOutline = 10.0,
    this.focusedColorOutline,
    this.focusedWidthOutline = 1.0,
    this.errorRadiusOutline = 10.0,
    this.errorColorOutline,
    this.errorWidthOutline = 1.0,
    this.counterMaxLength,
    this.onTapSuffixIcon,
    this.buildCounter,
    this.counterText,
    this.helper,
    this.errorText,
    this.minLines,
    this.maxLines,
    this.styleInput,
    this.cursorAnimationShowHidden = true,
    this.cursorColor,
    this.cursorHeight,
    this.cursorRadius = 0.0,
    this.cursorWidth = 1.0,
    this.onChange,
    this.sizeTextField,
    this.isReadOnly = false,
    this.onTapTextField,
    this.isPass = false,
    this.suffixIconColor,
    this.prefixIconColor,
    this.focusedErrorColorOutline,
    this.focusedErrorRadiusOutline = 10,
    this.focusedErrorWidthOutline = 1,
    this.onValidator,
    super.key,
});

  // controller textField
  final TextEditingController controller;

  // key board type.
  final TextInputType? keyboardType;

  // hint.
  final String? hint;
  final int hintMaxLines;
  final TextStyle? hintTextStyle;
  final TextDirection hintDirection;
  final Duration? hintDuration;

  // label.
  final Widget? label;
  final TextStyle? labelTextStyle;

  // fill color.
  final Color? fillColor;
  final bool isFilled;

  // prefix.
  final IconData? prefixIcon;
  final String? prefixText;
  final Color? prefixIconColor;

  // suffix.
  final IconData? suffixIcon;
  final void Function()? onTapSuffixIcon;
  final String? suffixText;
  final Color? suffixIconColor;

  // borders.
  final bool isEnable;
  final double enableRadiusOutline;
  final Color? enableColorOutline;
  final double enableWidthOutline;
  final double disableRadiusOutline;
  final Color? disableColorOutline;
  final double disableWidthOutline;
  final double focusedRadiusOutline;
  final Color? focusedColorOutline;
  final double focusedWidthOutline;
  final double errorRadiusOutline;
  final Color? errorColorOutline;
  final double errorWidthOutline;
  final double focusedErrorRadiusOutline;
  final Color? focusedErrorColorOutline;
  final double focusedErrorWidthOutline;

  // counter & management the style of counter.
  final int? counterMaxLength;

  // here is management style of counter.
  final Widget? Function(
      /// The build context.
      BuildContext, {

      /// The length of the string currently in the input.
      required int currentLength,

      /// Whether or not the TextField is currently focused. Mainly provided for
      /// the [liveRegion] parameter in the [Semantics] widget for accessibility.
      required bool isFocused,

      /// The maximum string length that can be entered into the TextField.
      required int? maxLength,
      })?
  buildCounter;
  final String? counterText;

  // helper text string.
  final String? helper;

  // error text string.
  final String? errorText;

  // max & min lines.
  final int? minLines;
  final int? maxLines;

  // style input text in textField.
  final TextStyle? styleInput;

  // cursor.
  final bool cursorAnimationShowHidden;
  final Color? cursorColor;
  final double cursorWidth;
  final double? cursorHeight;
  final double cursorRadius;

  // on change.
  final void Function(String)? onChange;

  // management width and height of textField.
  final BoxConstraints? sizeTextField;

  // is read only
  final bool isReadOnly;

  // if tap user on textField.
  final void Function()? onTapTextField;

  // is password
  final bool isPass;

  // validator
  String? Function(String?)? onValidator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      /// KEYBOARD TYPE
      keyboardType: keyboardType,

      /// COUNTER
      maxLength: counterMaxLength,

      /// COUNTER - VISIBILITY
      buildCounter: buildCounter,

      /// MAX & MIN LINES
      // minLines: minLines,
      // maxLines: maxLines,

      /// MANAGEMENT STYLE OF TEXT {INPUT} INTO TEXT FIELD
      style: styleInput,

      /// CURSOR SETTINGS
      cursorOpacityAnimates: cursorAnimationShowHidden,
      cursorColor: cursorColor,
      cursorHeight: cursorHeight,
      cursorRadius: Radius.circular(cursorRadius),
      cursorWidth: cursorWidth,

      /// IF READ ONLY WE USE readOnly PR.
      readOnly: isReadOnly,

      /// ON CHANGE AND EDITING TEXT INPUT TEXT FIELD
      onChanged: onChange,

      /// ON VALIDATOR TEXT FORM FIELD SETTING.
      validator: onValidator,

      /// MANAGEMENT ON TAP TEXT FIELD
      onTap: onTapTextField,

      /// OBSCURE TEXT
      obscureText: isPass,

      /// INPUT DECORATION
      decoration: InputDecoration(
        /// COUNTER VISIBILITY STEP2
        counterText: counterText,

        /// HINT TEXT
        hintText: hint,
        hintMaxLines: hintMaxLines,
        hintStyle: hintTextStyle,
        hintTextDirection: hintDirection,
        hintFadeDuration: hintDuration,

        /// LABEL WIDGET
        label: label,
        labelStyle: labelTextStyle,

        /// FILL COLOR
        fillColor: fillColor,
        filled: isFilled,

        /// PREFIX
        prefixIcon: Icon(prefixIcon),
        prefixText: prefixText,
        prefixIconColor: prefixIconColor ?? Colors.grey,


        /// SUFFIX
        suffixIcon: IconButton(
          onPressed: onTapSuffixIcon,
          icon: Icon(suffixIcon),
        ),
        suffixText: suffixText,
        suffixIconColor: suffixIconColor ?? Colors.black,

        /// BORDERS
        enabled: isEnable,
        // enabledBorder: UnderlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide(
        //     color: Colors.grey,
        //     width: 1,
        //   ),
        // ),
        enabledBorder: myBorder(
          width: enableWidthOutline,
          color: enableColorOutline ?? Colors.grey,
          radius: enableRadiusOutline,
        ),
        disabledBorder: myBorder(
          width: disableWidthOutline,
          color: disableColorOutline ?? Colors.grey,
          radius: disableRadiusOutline,
        ),
        focusedBorder: myBorder(
          width: focusedWidthOutline,
          color: focusedColorOutline ?? Colors.grey,
          radius: focusedRadiusOutline,
        ),
        errorBorder: myBorder(
          width: errorWidthOutline,
          color: errorColorOutline ?? Colors.red,
          radius: errorRadiusOutline,
        ),
        focusedErrorBorder: myBorder(
          width: focusedErrorWidthOutline,
          color: focusedErrorColorOutline ?? Colors.red,
          radius: focusedErrorRadiusOutline,
        ),

        /// HELPER TEXT STRING ONLY
        helperText: helper,

        /// ERROR TEXT STRING ONLY.
        errorText: errorText,

        /// MANAGEMENT OF TEXT FIELD SIZED (width - height).
        constraints: sizeTextField,

        /// PADDING.
        contentPadding: EdgeInsetsDirectional.zero,
      ),
    );
  }
  /// Function it be return Outline border
  OutlineInputBorder myBorder({
    Color color = Colors.grey,
    double width = 1.0,
    double radius = 0.0,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
