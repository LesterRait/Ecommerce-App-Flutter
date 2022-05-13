import 'package:sonoffkz/domain/bloc/blog/blog_bloc.dart';
import 'package:sonoffkz/domain/bloc/product/product_bloc.dart';
import 'package:sonoffkz/domain/repository/blog_repository.dart';
import 'package:sonoffkz/domain/repository/product_repository.dart';
import 'package:sonoffkz/ui/screens/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonoffkz/ui/screens/notification.dart';
import 'package:sonoffkz/ui/screens/order.dart';
import 'package:sonoffkz/ui/screens/orders_history.dart';

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
        title: 'sonoffkz App',
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
          '/order': (context) => const OrderScreen(),
          // '/product_detail': (context) => const ProductDetailScreen(),
          '/auth': (context) => const AuthScreen(),
          '/registration': (context) => const RegistrationScreen(),
          '/favorite': (context) => const FavoriteScreen(),
          '/cart': (context) => const CartScreen(),
          '/notification': (context) => const NotificationScreen(),
          '/privacy_policy': (context) => const PrivacyPolicyScreen(),
          '/order_history': (context) => const OrderHistoryScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
