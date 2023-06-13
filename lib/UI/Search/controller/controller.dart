import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travita/UI/Search/controller/states.dart';

class SearchController extends Cubit<SearchStates> {
  SearchController() : super(SearchInitial());
  static SearchController get(context) => BlocProvider.of(context);
  late final FirebaseStorage fireStorage = FirebaseStorage.instance;
  late final TextEditingController searchController = TextEditingController();

  String? imageUrl;
  File? searchImage;

  Future<void> getSearchImage() async {
    //emit(GetProfileImageLocalLoadingState());
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );

    if (pickedImage != null) {
      searchImage = File(
        pickedImage.path,
      );
      emit(GetPhotoSuccess());
    } else {
      print("--------->No image selected");
      //emit(GetProfileImageLocalErrorState());
    }
  }

  void upLoadImage() {
    emit(UpLoadPhotoLoading());
    fireStorage
        .ref()
        .child("SearchImages/${Uri.file(searchImage!.path).pathSegments.last}")
        .putFile(searchImage!)
        .then((value) {
      value.ref.getDownloadURL().then((searchImageUrl) {
        imageUrl = searchImageUrl;
        print(imageUrl);
        searchImage = null;
        emit(UpLoadPhotoSuccess());
      }).catchError((error) {
        emit(UpLoadPhotoError());
      });
    }).catchError((bigError) {
      emit(UpLoadPhotoError());
    });
  }
}
