import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/data/model/about_country_response.dart';
import 'package:flutter_sample/data/network/base_response.dart';
import 'package:flutter_sample/di/di_initializer.dart';
import 'package:flutter_sample/view/about_country/bloc/about_country_bloc.dart';
import 'package:flutter_sample/view/about_country/bloc/about_country_event.dart';
import 'package:flutter_sample/view/about_country/widget/about_country_widget.dart';

class AboutCountryPage extends StatelessWidget {
  AboutCountryPage({Key? key}) : super(key: key);

  final String loading = "Loading..";
  final TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AboutCountryBloc>(
      create: (context) => locate<AboutCountryBloc>(),
      child: BlocBuilder<AboutCountryBloc, AboutCountryState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: _getTitle(state)),
            body: _getMainBody(state, context),
          );
        },
      ),
    );
  }

  _getTitle(AboutCountryState state) {
    String title = loading;
    if (state is AboutCountryLoaded) {
      title = state.title;
    } else if (state is APIFailure) {
      APIFailure _apiFailure = state as APIFailure;
      title = _apiFailure.errorMessage ?? "";
    }
    return Center(
      child: Text(title),
    );
  }

  _getMainBody(AboutCountryState state, BuildContext context) {
    if (state is AboutCountryLoaded) {
      List<Rows>? rows = state.data;
      return RefreshIndicator(
        onRefresh: () {
          return Future.delayed(const Duration(seconds: 1), () {
            BlocProvider.of<AboutCountryBloc>(context)
                .add(const AboutCountryFetchUsersEvent());
          });
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Builder(builder: (context) {
                return _getSearchBar(context);
              }),
              if (rows != null && rows.isNotEmpty)
                ListView.builder(
                  itemBuilder: (context, index) {
                    Rows rowData = rows[index];
                    return AboutCountryWidget(rowData);
                  },
                  shrinkWrap: true,
                  primary: false,
                  itemCount: rows.length,
                )
              else
                _getTextContent("No data found")
            ],
          ),
        ),
      );
    } else {
      return _getTextContent(loading);
    }
  }

  void onSearchTextChanged(String value, BuildContext context) {
    BlocProvider.of<AboutCountryBloc>(context)
        .add(AboutCountrySearchEvent(value));
  }

  Widget _getTextContent(String data) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text(data),
    ));
  }

  _getSearchBar(BuildContext context) => Container(
        padding: const EdgeInsets.all(8.0),
        color: Theme.of(context).primaryColor,
        child: Card(
          child: ListTile(
            leading: const Icon(Icons.search),
            title: TextField(
              controller: searchFieldController,
              decoration: const InputDecoration(
                  hintText: 'Search', border: InputBorder.none),
              onChanged: (String value) {
                onSearchTextChanged(value, context);
              },
            ),
            trailing: IconButton(
              icon: const Icon(Icons.cancel),
              onPressed: () {
                searchFieldController.clear();
                onSearchTextChanged('', context);
              },
            ),
          ),
        ),
      );
}
