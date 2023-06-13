import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/UI/Details/controller/states.dart';
import 'package:travita/core/app_controller/appController.dart';

class DetailsController extends AppController {
  static DetailsController get(context) => BlocProvider.of(context);

  bool isFavorite = false;

  void newDetails({
    required String detailsType,
    required String detailsId,
  }) {
    super.checkIfExisted(
      type: detailsType,
      id: detailsId,
    );
    emit(DetailsNewItem());
  }

  void checkIfDetailsExisted({
    required String detailsType,
    required String detailsId,
  }) {
    isFavorite = super.checkIfExisted(
      type: detailsType,
      id: detailsId,
    );
  }
}
