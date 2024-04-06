/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2024  Dino PH Leung
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

part of '../model.dart';

@JsonEnum()
enum ReactionEmoji {
  @JsonValue('👍')
  thumbsUp,
  @JsonValue('👎')
  thumbsDown,
  @JsonValue('❤')
  heart,
  @JsonValue('🔥')
  fire,
  @JsonValue('🥰')
  inLove,
  @JsonValue('👏')
  clappingHands,
  @JsonValue('😁')
  grinningFace,
  @JsonValue('🤔')
  thinkingFace,
  @JsonValue('🤯')
  mindBlown,
  @JsonValue('😱')
  screamingInFear,
  @JsonValue('🤬')
  swearing,
  @JsonValue('😢')
  crying,
  @JsonValue('🎉')
  partyPopper,
  @JsonValue('🤩')
  starStruck,
  @JsonValue('🤮')
  vomiting,
  @JsonValue('💩')
  poo,
  @JsonValue('🙏')
  prayingHands,
  @JsonValue('👌')
  okHand,
  @JsonValue('🕊')
  dove,
  @JsonValue('🤡')
  clownFace,
  @JsonValue('🥱')
  yawningFace,
  @JsonValue('🥴')
  woozyFace,
  @JsonValue('😍')
  heartEyes,
  @JsonValue('🐳')
  whale,
  @JsonValue('❤‍🔥')
  heartOnFire,
  @JsonValue('🌚')
  newMoonFace,
  @JsonValue('🌭')
  hotDog,
  @JsonValue('💯')
  hundredPoints,
  @JsonValue('🤣')
  rollingOnTheFloorLaughing,
  @JsonValue('⚡')
  lightningBolt,
  @JsonValue('🍌')
  banana,
  @JsonValue('🏆')
  trophy,
  @JsonValue('💔')
  brokenHeart,
  @JsonValue('🤨')
  raisedEyebrow,
  @JsonValue('😐')
  neutralFace,
  @JsonValue('🍓')
  strawberry,
  @JsonValue('🍾')
  bottleWithPoppingCork,
  @JsonValue('💋')
  kissMark,
  @JsonValue('🖕')
  middleFinger,
  @JsonValue('😈')
  smilingFaceWithHorns,
  @JsonValue('😴')
  sleepingFace,
  @JsonValue('😭')
  loudlyCryingFace,
  @JsonValue('🤓')
  nerdFace,
  @JsonValue('👻')
  ghost,
  @JsonValue('👨‍💻')
  manTechnologist,
  @JsonValue('👀')
  eyes,
  @JsonValue('🎃')
  jackOLantern,
  @JsonValue('🙈')
  seeNoEvilMonkey,
  @JsonValue('😇')
  smilingFaceWithHalo,
  @JsonValue('😨')
  fearfulFace,
  @JsonValue('🤝')
  handshake,
  @JsonValue('✍')
  writingHand,
  @JsonValue('🤗')
  huggingFace,
  @JsonValue('🫡')
  salutingFace,
  @JsonValue('🎅')
  santaClaus,
  @JsonValue('🎄')
  christmasTree,
  @JsonValue('☃')
  snowman,
  @JsonValue('💅')
  nailPolish,
  @JsonValue('🤪')
  zanyFace,
  @JsonValue('🗿')
  moai,
  @JsonValue('🆒')
  cool,
  @JsonValue('💘')
  heartWithArrow,
  @JsonValue('🙉')
  hearNoEvilMonkey,
  @JsonValue('🦄')
  unicorn,
  @JsonValue('😘')
  faceBlowingAKiss,
  @JsonValue('💊')
  pill,
  @JsonValue('🙊')
  speakNoEvilMonkey,
  @JsonValue('😎')
  sunglasses,
  @JsonValue('👾')
  alienMonster,
  @JsonValue('🤷‍♂️')
  manShrugging,
  @JsonValue('🤷')
  personShrugging,
  @JsonValue('🤷‍♀️')
  womanShrugging,
  @JsonValue('😡')
  poutingFace
}

extension ReactionEmojiExtenson on ReactionEmoji {
  String value() => _$ReactionEmojiEnumMap[this]!;
}

/// The reaction is based on an emoji.
///
/// https://core.telegram.org/bots/api#reactiontypeemoji
@JsonSerializable(fieldRename: FieldRename.snake)
class ReactionTypeEmoji implements ReactionType {
  @override
  ReactionTypeType type;
  ReactionEmoji emoji;

  ReactionTypeEmoji({this.type = ReactionTypeType.emoji, required this.emoji});
  
  factory ReactionTypeEmoji.fromJson(Map<String, dynamic> json) =>
      _$ReactionTypeEmojiFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ReactionTypeEmojiToJson(this);
}