// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_app/home_bean_entity.dart';
import 'package:flutter_app/generated/json/home_bean_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case HomeBeanEntity:
			return homeBeanEntityFromJson(data as HomeBeanEntity, json) as T;			case HomeBeanResult:
			return homeBeanResultFromJson(data as HomeBeanResult, json) as T;    }
    return data as T;
  }  static _getToJson<T>(Type type, data) {
		switch (type) {			case HomeBeanEntity:
			return homeBeanEntityToJson(data as HomeBeanEntity);			case HomeBeanResult:
			return homeBeanResultToJson(data as HomeBeanResult);    }
    return data as T;
  }  static T fromJsonAsT<T>(json) {
    switch (T.toString()) {			case 'HomeBeanEntity':
			return HomeBeanEntity().fromJson(json) as T;			case 'HomeBeanResult':
			return HomeBeanResult().fromJson(json) as T;    }
    return null;
  }}