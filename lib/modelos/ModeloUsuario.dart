import 'package:scoped_model/scoped_model.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';


class ModeloUsuario extends Model {

  FirebaseAuth _auth = FirebaseAuth.instance;

  final User = Uuid;
  Map<String, dynamic> userData = Map();

  bool isLoading = false;

  void signUp({required Map<String, dynamic> userData,required String pass,required VoidCallback onSuccess,required VoidCallback onFail}) {
    isLoading = true;
    notifyListeners();

    _auth.createUserWithEmailAndPassword(
  email: userData["email"],
  password: pass
  ).then((user) async {
    final User = user;

    await _saveUserData(userData);

    onSuccess();
    isLoading = false;
    notifyListeners();

  }).catchError((e){
    onFail();
    isLoading = false;
    notifyListeners();
  });

  }

  void signIn() async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 3));

    isLoading = false;
    notifyListeners();
  }

  void RecoverPass() {

  }

  Future<Null>? _saveUserData(Map<String, dynamic> userData) {
    this.userData = userData;
    FirebaseFirestore.instance.collection("Usuario").doc(User.).set(userData);
  }
}