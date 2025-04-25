// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_sheet_secrets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleSheetSecretsImpl _$$GoogleSheetSecretsImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleSheetSecretsImpl(
      sheetId: json['sheetId'] as String,
      serviceKey: Map<String, String>.from(json['serviceKey'] as Map),
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$$GoogleSheetSecretsImplToJson(
        _$GoogleSheetSecretsImpl instance) =>
    <String, dynamic>{
      'sheetId': instance.sheetId,
      'serviceKey': instance.serviceKey,
      'isActive': instance.isActive,
    };
