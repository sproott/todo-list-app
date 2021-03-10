import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user-dto.model.freezed.dart';
part 'user-dto.model.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({required String username, required String password}) =
      _UserDto;
  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
