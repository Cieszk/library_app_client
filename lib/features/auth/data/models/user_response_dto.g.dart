// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) =>
    UserResponseDto(
      (json['id'] as num).toInt(),
      json['username'] as String,
      json['email'] as String,
      json['isActive'] as bool,
      $enumDecode(_$UserRoleEnumMap, json['role']),
      (json['reviews'] as List<dynamic>)
          .map((e) => ReviewResponseDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
      (json['reservations'] as List<dynamic>)
          .map(
              (e) => ReservationResponseDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
      (json['bookLoans'] as List<dynamic>)
          .map((e) => BookLoanResponseDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$UserResponseDtoToJson(UserResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'isActive': instance.isActive,
      'role': _$UserRoleEnumMap[instance.role]!,
      'reviews': instance.reviews.toList(),
      'reservations': instance.reservations.toList(),
      'bookLoans': instance.bookLoans.toList(),
    };

const _$UserRoleEnumMap = {
  UserRole.admin: 'ADMIN',
  UserRole.user: 'USER',
};
