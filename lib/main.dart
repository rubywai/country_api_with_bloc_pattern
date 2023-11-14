import 'package:country_api_with_bloc_pattern/bloc/country_list_bloc_cubit.dart';
import 'package:country_api_with_bloc_pattern/bloc/search/search_country_bloc.dart';
import 'package:country_api_with_bloc_pattern/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider<CountryListBlocCubit>(
          create: (context) => CountryListBlocCubit()
        ),
        BlocProvider<SearchCountryBloc>(
          create: (context) => SearchCountryBloc(),
        )
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

