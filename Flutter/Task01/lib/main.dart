import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task flutter 01',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var textPrimaryColor = Colors.white;
    return Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3),
            const LogoWidget(
              height: 105,
              width: 105,
              color: Color.fromRGBO(83, 100, 223, 1),
            ),
            const SizedBox(height: 40),
            Text(
              'Get you Money \nUnder Control',
              textAlign: TextAlign.center,
              style: textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold, color: textPrimaryColor),
            ),
            const SizedBox(height: 10),
            Text(
              'Manage your expenses, \nSeamlessly.',
              textAlign: TextAlign.center,
              style: textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
            ),
            const Spacer(flex: 2),
            ButtonWidget(
              onTap: () {},
              text: Text('Sign Up with Email ID',
                  style: textTheme.bodyMedium?.copyWith(
                      color: textPrimaryColor, fontWeight: FontWeight.bold)),
              background: const Color.fromRGBO(83, 100, 223, 1),
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              onTap: () {},
              icon: Image.network(
                  'http://pngimg.com/uploads/google/google_PNG19635.png',
                  height: 35,
                  fit: BoxFit.cover),
              text: Text(
                'Sign Up with Google',
                style:
                    textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              background: Colors.white,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: textTheme.bodyMedium?.copyWith(
                    color: textPrimaryColor,
                  ),
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () {},
                  child: Text('Sing In',
                      style: textTheme.bodyMedium?.copyWith(
                          color: textPrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: textPrimaryColor)),
                )
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.color});
  final double height;
  final double width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                height: 50,
                width: 50,
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
                height: 50,
                width: 50,
              )
            ],
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
            ),
            height: 100,
            width: 50,
          )
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.text,
      required this.background,
      this.icon,
      required this.onTap});
  final Widget text;
  final Color background;
  final Widget? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: background, borderRadius: BorderRadius.circular(10)),
        height: 60,
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? Container(),
              text,
            ],
          ),
        ),
      ),
    );
  }
}
