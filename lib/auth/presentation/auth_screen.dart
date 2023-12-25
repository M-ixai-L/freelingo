import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelingo/auth/application/auth_bloc.dart';
import 'package:freelingo/navigation/app_router.dart';
import 'package:freelingo/widgets/fl_text_button.dart';
import 'package:freelingo/widgets/fl_text_field.dart';
import 'package:get_it/get_it.dart';
import 'package:rive/rive.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool obscureText = true;

  final AuthBloc _authBloc = GetIt.I.get<AuthBloc>();

  @override
  void initState() {
    super.initState();
    _authBloc.add(const AuthEvent.init());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: _authBloc,
      listener: (context, state) {
        if (state.user != null) {
          context.replaceRoute(const AppSkeletonRoute());
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            body: Stack(
              children: [
                // Stack(
                //   children: [
                const RiveAnimation.asset('assets/animations/freelingo.riv'),
                //     Positioned(
                //       bottom: 220,
                //       right: 15,
                //       child: Container(
                //         height: 35,
                //         width: 150,
                //         color: Theme.of(context).scaffoldBackgroundColor,
                //       ),
                //     )
                //   ],
                // ),
                state.isLoading || state.user != null
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Center(
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
                                        SignInWithEmailAndPassword(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text('Continue'),
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Haven\'t account?'),
                                    InkWell(
                                      borderRadius: BorderRadius.circular(10),
                                      onTap: () {
                                        context
                                            .pushRoute(const RegisterRoute());
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          ' Register now',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                const Text('Continue with:'),
                                Center(
                                  child: IconButton(
                                    onPressed: () {
                                      _authBloc.add(
                                          const AuthEvent.signInWithGoogle());
                                    },
                                    icon: SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: SvgPicture.asset(
                                          'assets/icons/google.svg'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
