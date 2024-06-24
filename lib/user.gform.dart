// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'user.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveUserFormConsumer extends StatelessWidget {
  const ReactiveUserFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, UserForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserForm.of(context);

    if (formModel is! UserForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class UserFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const UserFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final UserForm form;
}

class ReactiveUserForm extends StatelessWidget {
  const ReactiveUserForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final UserForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static UserForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<UserFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<UserFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as UserFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return UserFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveUserFormExt on BuildContext {
  UserForm? userFormWatch() => ReactiveUserForm.of(this);

  UserForm? userFormRead() => ReactiveUserForm.of(this, listen: false);
}

class UserFormBuilder extends StatefulWidget {
  const UserFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final User? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context, UserForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, UserForm formModel)? initState;

  @override
  _UserFormBuilderState createState() => _UserFormBuilderState();
}

class _UserFormBuilderState extends State<UserFormBuilder> {
  late UserForm _formModel;

  @override
  void initState() {
    _formModel = UserForm(UserForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant UserFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveUserForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class UserForm implements FormModel<User> {
  UserForm(
    this.form,
    this.path,
  );

  static const String nicknameControlName = "nickname";

  static const String emailControlName = "email";

  static const String commentControlName = "comment";

  static const String genderControlName = "gender";

  static const String birthDateControlName = "birthDate";

  static const String termsAcceptedControlName = "termsAccepted";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String nicknameControlPath() => pathBuilder(nicknameControlName);

  String emailControlPath() => pathBuilder(emailControlName);

  String commentControlPath() => pathBuilder(commentControlName);

  String genderControlPath() => pathBuilder(genderControlName);

  String birthDateControlPath() => pathBuilder(birthDateControlName);

  String termsAcceptedControlPath() => pathBuilder(termsAcceptedControlName);

  String get _nicknameValue => nicknameControl.value as String;

  String get _emailValue => emailControl.value as String;

  String get _commentValue => commentControl.value as String;

  String get _genderValue => genderControl.value as String;

  DateTime get _birthDateValue => birthDateControl.value as DateTime;

  bool get _termsAcceptedValue => termsAcceptedControl.value as bool;

  bool get containsNickname {
    try {
      form.control(nicknameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsComment {
    try {
      form.control(commentControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsGender {
    try {
      form.control(genderControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBirthDate {
    try {
      form.control(birthDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTermsAccepted {
    try {
      form.control(termsAcceptedControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get nicknameErrors => nicknameControl.errors;

  Map<String, Object> get emailErrors => emailControl.errors;

  Map<String, Object> get commentErrors => commentControl.errors;

  Map<String, Object> get genderErrors => genderControl.errors;

  Map<String, Object> get birthDateErrors => birthDateControl.errors;

  Map<String, Object> get termsAcceptedErrors => termsAcceptedControl.errors;

  void get nicknameFocus => form.focus(nicknameControlPath());

  void get emailFocus => form.focus(emailControlPath());

  void get commentFocus => form.focus(commentControlPath());

  void get genderFocus => form.focus(genderControlPath());

  void get birthDateFocus => form.focus(birthDateControlPath());

  void get termsAcceptedFocus => form.focus(termsAcceptedControlPath());

  void nicknameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nicknameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void commentValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    commentControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthDateValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthDateControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void termsAcceptedValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    termsAcceptedControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nicknameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nicknameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void commentValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    commentControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthDateValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthDateControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void termsAcceptedValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    termsAcceptedControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nicknameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nicknameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void emailValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void commentValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      commentControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void genderValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      genderControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void birthDateValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthDateControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void termsAcceptedValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      termsAcceptedControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get nicknameControl =>
      form.control(nicknameControlPath()) as FormControl<String>;

  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;

  FormControl<String> get commentControl =>
      form.control(commentControlPath()) as FormControl<String>;

  FormControl<String> get genderControl =>
      form.control(genderControlPath()) as FormControl<String>;

  FormControl<DateTime> get birthDateControl =>
      form.control(birthDateControlPath()) as FormControl<DateTime>;

  FormControl<bool> get termsAcceptedControl =>
      form.control(termsAcceptedControlPath()) as FormControl<bool>;

  void nicknameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nicknameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nicknameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void commentSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      commentControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      commentControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void genderSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      genderControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      genderControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void birthDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthDateControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthDateControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void termsAcceptedSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      termsAcceptedControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      termsAcceptedControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  User get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'UserForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return User(
        nickname: _nicknameValue,
        email: _emailValue,
        comment: _commentValue,
        gender: _genderValue,
        birthDate: _birthDateValue,
        termsAccepted: _termsAcceptedValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  void submit({
    required void Function(User model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    User? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(UserForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    User? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(User? user) => FormGroup({
        nicknameControlName: FormControl<String>(
            value: user?.nickname,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: user?.email,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        commentControlName: FormControl<String>(
            value: user?.comment,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        genderControlName: FormControl<String>(
            value: user?.gender,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        birthDateControlName: FormControl<DateTime>(
            value: user?.birthDate,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        termsAcceptedControlName: FormControl<bool>(
            value: user?.termsAccepted,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveUserFormArrayBuilder<ReactiveUserFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveUserFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveUserFormArrayBuilderT>? formControl;

  final FormArray<ReactiveUserFormArrayBuilderT>? Function(UserForm formModel)?
      control;

  final Widget Function(
      BuildContext context, List<Widget> itemList, UserForm formModel)? builder;

  final Widget Function(BuildContext context, int i,
      ReactiveUserFormArrayBuilderT? item, UserForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveUserFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveUserFormFormGroupArrayBuilder<
    ReactiveUserFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveUserFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveUserFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveUserFormFormGroupArrayBuilderT>>
      Function(UserForm formModel)? getExtended;

  final Widget Function(
      BuildContext context, List<Widget> itemList, UserForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveUserFormFormGroupArrayBuilderT? item,
      UserForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveUserFormFormGroupArrayBuilderT>[])
                .asMap()
                .map((i, item) => MapEntry(
                      i,
                      itemBuilder(
                        context,
                        i,
                        item,
                        formModel,
                      ),
                    ))
                .values
                .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
