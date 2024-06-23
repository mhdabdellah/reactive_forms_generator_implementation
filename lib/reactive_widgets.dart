import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppTextInput extends StatelessWidget {
  final String formControlName;
  final FormControl<String> formControl;
  final String label;
  final IconData prefixIcon;
  final int? minLines;
  final int? maxLines;

  const AppTextInput({
    Key? key,
    required this.formControlName,
    required this.formControl,
    required this.label,
    required this.prefixIcon,
    this.minLines,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField<String>(
      // formControlName: formControlName,
      formControl:formControl,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefixIcon),
      ),
      minLines: minLines,
      maxLines: maxLines,
    );
  }
}

class AppSelector extends StatelessWidget {
  final String formControlName;
  final FormControl<String> formControl;
  final String label;
  final List<String> options;

  const AppSelector({
    Key? key,
    required this.formControlName,
    required this.label,
    required this.options,
    required this.formControl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveDropdownField<String>(
      // formControlName: formControlName,
      formControl:formControl,
      decoration: InputDecoration(
        labelText: label,
      ),
      items: options.map((option) {
        return DropdownMenuItem(
          value: option,
          child: Text(option),
        );
      }).toList(),
    );
  }
}

class AppDropDownSelector extends StatelessWidget {
  final String formControlName;
  final FormControl<String> formControl;
  final String label;
  final List<DropdownMenuItem<String>> items;

  const AppDropDownSelector({
    Key? key,
    required this.formControlName,
    required this.label,
    required this.items,
    required this.formControl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveDropdownField<String>(
      // formControlName: formControlName,
      formControl:formControl,
      decoration: InputDecoration(
        labelText: label,
      ),
      items: items,
    );
  }
}

class AppDateInput extends StatelessWidget {
  final String formControlName;
  final FormControl<DateTime> formControl;
  final String label;

  const AppDateInput({
    Key? key,
    required this.formControlName,
    required this.label,
    required this.formControl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField<DateTime>(
      // formControlName: formControlName,
      formControl:formControl,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(Icons.calendar_today),
      ),
      readOnly: true,
      onTap: (control) async {
        final date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );

        if (date != null) {
          control.value = date;
        }
      },
    );
  }
}


class AppCheckBox extends StatelessWidget {
  final String formControlName;
  final FormControl<bool> formControl;
  final String title;

  const AppCheckBox({
    Key? key,
    required this.formControlName,
    required this.title,
    required this.formControl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveCheckboxListTile(
      // formControlName: formControlName,
      formControl:formControl,
      title: Text(title),
    );
  }
}
