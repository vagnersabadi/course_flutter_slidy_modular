import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:course_flutter_slidy_modular_3/app/app_module.dart';
import 'package:course_flutter_slidy_modular_3/app/modules/home/home_bloc.dart';
import 'package:course_flutter_slidy_modular_3/app/modules/home/home_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(HomeModule());
  HomeBloc bloc;

  setUp(() {
    bloc = HomeModule.to.get<HomeBloc>();
  });

  group('HomeBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<HomeBloc>());
    });
  });
}