import 'package:course_flutter_slidy_modular_3/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:course_flutter_slidy_modular_3/app/app_widget.dart';
import 'package:course_flutter_slidy_modular_3/app/modules/home/home_module.dart';
import 'package:course_flutter_slidy_modular_3/app/shared/repositories/localstorage/local_storage_hive.dart';
import 'package:course_flutter_slidy_modular_3/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:course_flutter_slidy_modular_3/app/shared/repositories/localstorage/local_storage_share.dart';

import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        //  Bind((i) => LocalStorageHive()),
        Bind<ILocalStorage>((i) => LocalStorageShared()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject.of();
}
