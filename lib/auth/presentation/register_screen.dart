import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelingo/auth/application/auth_bloc.dart';
import 'package:freelingo/navigation/app_router.dart';
import 'package:freelingo/widgets/fl_text_button.dart';
import 'package:freelingo/widgets/fl_text_field.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool obscureText = true;

  final AuthBloc _authBloc = GetIt.I.get<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: _authBloc,
      listener: (context, state) {
        if (state.user != null) {
          context.replaceRoute(const HomeRoute());
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text('Registration'),
              ),
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              FlTextField(
                                controller: emailController,
                                labelText: 'Email',
                              ),
                              const SizedBox(height: 16),
                              FlTextField(
                                controller: passwordController,
                                labelText: 'Password',
                                obscureText: obscureText,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please fill password';
                                  } else if (value.trim() == '') {
                                    return 'Please fill password';
                                  }
                                  if (value.length < 6) {
                                    return 'The password must contain more than 6 characters';
                                  }
                                  return null;
                                },
                                suffixIcon: IconButton(
                                  icon: Icon(obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(height: 16),
                              FlTextField(
                                controller: repeatPasswordController,
                                labelText: 'Repeat password',
                                obscureText: obscureText,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please repeat password';
                                  } else if (value.trim() == '') {
                                    return 'Please repeat password';
                                  }
                                  if (value != passwordController.text) {
                                    return 'Passwords don\'t match';
                                  }
                                  return null;
                                },
                                suffixIcon: IconButton(
                                  icon: Icon(obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        FlTextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _authBloc.add(
                                CreateUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              );
                            }
                          },
                          child: const Text('Register'),
                        ),
                        const SizedBox(height: 24),
                        const Text('Or continue with:'),
                        Center(
                          child: IconButton(
                            onPressed: () {
                              _authBloc.add(const AuthEvent.signInWithGoogle());
                            },
                            icon: SizedBox(
                              height: 24,
                              width: 24,
                              child:
                                  SvgPicture.asset('assets/icons/google.svg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
