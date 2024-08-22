import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  // ignore: non_constant_identifier_names
  Message ToMessageEntity() => Message(
        text: answer == 'yes' ? 'Sí' : 'No',
        fromWho: FromWho.other,
        imageUrl: image,
      );
}
