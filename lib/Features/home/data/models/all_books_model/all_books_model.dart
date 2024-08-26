import 'package:equatable/equatable.dart';

import 'attachment.dart';
import 'prepared_by.dart';

class AllBooksModel extends Equatable {
  final int? id;
  final int? sourceId;
  final String? title;
  final String? type;
  final int? addDate;
  final int? updateDate;
  final String? description;
  final dynamic fullDescription;
  final String? sourceLanguage;
  final String? translatedLanguage;
  final String? importanceLevel;
  final dynamic image;
  final String? apiUrl;
  final List<PreparedBy>? preparedBy;
  final List<Attachment>? attachments;
  final List<dynamic>? locales;

  const AllBooksModel({
    this.id,
    this.sourceId,
    this.title,
    this.type,
    this.addDate,
    this.updateDate,
    this.description,
    this.fullDescription,
    this.sourceLanguage,
    this.translatedLanguage,
    this.importanceLevel,
    this.image,
    this.apiUrl,
    this.preparedBy,
    this.attachments,
    this.locales,
  });

  factory AllBooksModel.fromJson(Map<String, dynamic> json) => AllBooksModel(
        id: json['id'] as int?,
        sourceId: json['source_id'] as int?,
        title: json['title'] as String?,
        type: json['type'] as String?,
        addDate: json['add_date'] as int?,
        updateDate: json['update_date'] as int?,
        description: json['description'] as String?,
        fullDescription: json['full_description'] as dynamic,
        sourceLanguage: json['source_language'] as String?,
        translatedLanguage: json['translated_language'] as String?,
        importanceLevel: json['importance_level'] as String?,
        image: json['image'] as dynamic,
        apiUrl: json['api_url'] as String?,
        preparedBy: (json['prepared_by'] as List<dynamic>?)
            ?.map((e) => PreparedBy.fromJson(e as Map<String, dynamic>))
            .toList(),
        attachments: (json['attachments'] as List<dynamic>?)
            ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
            .toList(),
        locales: json['locales'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'source_id': sourceId,
        'title': title,
        'type': type,
        'add_date': addDate,
        'update_date': updateDate,
        'description': description,
        'full_description': fullDescription,
        'source_language': sourceLanguage,
        'translated_language': translatedLanguage,
        'importance_level': importanceLevel,
        'image': image,
        'api_url': apiUrl,
        'prepared_by': preparedBy?.map((e) => e.toJson()).toList(),
        'attachments': attachments?.map((e) => e.toJson()).toList(),
        'locales': locales,
      };

  @override
  List<Object?> get props {
    return [
      id,
      sourceId,
      title,
      type,
      addDate,
      updateDate,
      description,
      fullDescription,
      sourceLanguage,
      translatedLanguage,
      importanceLevel,
      image,
      apiUrl,
      preparedBy,
      attachments,
      locales,
    ];
  }
}
