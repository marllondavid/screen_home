import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //variáveis para colocar as cores segundo a identidade do cliente
  Color topColor = Colors.black;
  Color bottomColor = const Color.fromARGB(255, 95, 190, 219);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            topColor,
            bottomColor,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/yes.png",
              height: 140,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    autofocus: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white,
                      )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    autofocus: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white,
                      )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            //tudo fica clicável dentro deste comando
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Esqueceu a senha?",
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 30)),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Entrar",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 80)),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Não possui uma conta? Cadastre-se?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
