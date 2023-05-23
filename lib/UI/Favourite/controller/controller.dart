import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/UI/Favourite/controller/states.dart';
import 'package:travita/UI/Favourite/models.dart';
import 'package:travita/core/database/remote/dioHelper/dioHelper.dart';

class FavoritesController extends Cubit<FavoriteStates> {
  FavoritesController() : super(FavoritesInitial());

  static FavoritesController get(context) => BlocProvider.of(context);

  late FavoritesModel favoritesModel;

  void getFavorite() {
    emit(GetFavoritesLoading());
    DioHelper.getFavoriteData().then((value) {
      favoritesModel = FavoritesModel.fromJson(value.data);
      emit(GetFavoritesSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(GetFavoritesError());
    });
  }

  void putInFavorite({
    required Map<String, String> data,
  }) {
    emit(PutInFavoritesLoading());
    DioHelper.postFavorite(data: data).then((value) {
      emit(PutInFavoritesSuccess());
    }).catchError((error) {
      print(error.toString());

      emit(PutInFavoritesError());
    });
  }

  void deleteFromFavorite({
    required String subType,
    required String id,
  }) {
    emit(DeleteFromFavoritesLoading());
    DioHelper.deleteFavorite(
      subType: subType,
      id: id,
    ).then((value) {
      emit(DeleteFromFavoritesSuccess());
    }).catchError((error) {
      print(error.toString());

      emit(DeleteFromFavoritesError());
    });
  }
}
