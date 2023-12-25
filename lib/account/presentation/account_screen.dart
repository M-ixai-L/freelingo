import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelingo/auth/application/auth_bloc.dart';
import 'package:freelingo/navigation/app_router.dart';
import 'package:freelingo/widgets/fl_text_button.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final AuthBloc _authBloc = GetIt.I.get<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
        bloc: _authBloc,
        listener: (context, state) {
          if (state.user == null) {
            context.replaceRoute(const AuthRoute());
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Your profile'),
            ),
            body: Center(
              child: Column(
                children: [
                  FlTextButton(
                    onPressed: () {
                      _authBloc.add(const AuthEvent.signOut());
                    },
                    child: const Text('Sign out'),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
