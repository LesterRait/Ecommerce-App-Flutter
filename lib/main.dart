import 'package:ecommerce/domain/bloc/blog_bloc.dart';
import 'package:ecommerce/domain/bloc/product_bloc.dart';
import 'package:ecommerce/domain/repository/blog_repository.dart';
import 'package:ecommerce/domain/repository/product_repository.dart';
import 'package:ecommerce/ui/screens/auth.dart';
import 'package:ecommerce/ui/screens/blog.dart';
import 'package:ecommerce/ui/screens/cart.dart';
import 'package:ecommerce/ui/screens/favorite.dart';
import 'package:ecommerce/ui/screens/main.dart';
import 'package:ecommerce/ui/screens/privacy_policy.dart';
import 'package:ecommerce/ui/screens/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final blogRepository = BlogRepository();
  final productRepository = ProductRepository();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BlogBloc(blogRepository)..add(BlogLoadEvent()),
        ),
        BlocProvider(
          create: (context) =>
              ProductBloc(productRepository)..add(ProductLoadEvent(name: '')),
        )
      ],
      child: MaterialApp(
        title: 'Ecommerce App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            toolbarHeight: 42,
            elevation: 0,
          ),
          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          '/': (context) => const MainScreen(),
          '/blog': (context) => const BlogScreen(),
          '/auth': (context) => const AuthScreen(),
          '/registration': (context) => const RegistrationScreen(),
          '/favorite': (context) => const FavoriteScreen(),
          '/cart': (context) => const CartScreen(),
          '/privacy_policy': (context) => const PrivacyPolicyScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
