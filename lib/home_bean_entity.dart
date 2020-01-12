import 'package:flutter_app/generated/json/base/json_convert_content.dart';
import 'package:flutter_app/generated/json/base/json_filed.dart';

class HomeBeanEntity with JsonConvert<HomeBeanEntity> {
	List<HomeBeanResult> result;
	String message;
	String status;

}

class HomeBeanResult with JsonConvert<HomeBeanResult> {
	String director;
	String horizontalImage;
	String imageUrl;
	int movieId;
	String name;
	double score;
	String starring;


}
