import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pracica1/viewModel/UserviewModel.dart';

class Profileuser extends StatefulWidget {
  const Profileuser({super.key});

  @override
  State<Profileuser> createState() => _ProfileuserState();
}

class _ProfileuserState extends State<Profileuser> {
  @override
  void initState(){
  Provider.of<UserViewmodel>(context,listen:false).loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    final userVm = Provider.of<UserViewmodel>(context);

    return Scaffold(
      appBar: AppBar(
        title: userVm.user == null ? const Text('Cargando...') : Text('userVm.user!.userName'),
      ),
      body:userVm.loading == true ?
      const Center(child: CircularProgressIndicator(),) :
      userVm.user != null
        ? const Center(child: Text('userVm.user!.name'))
        : const Center(child: Text('userVm.message Error al cargar el usuario'))
    );
  }
}

