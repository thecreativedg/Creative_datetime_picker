import 'package:creative_datetime_picker/creative_datetime_picker.dart';
import 'package:creative_datetime_picker/src/variants/creative_datetime_picker_variants/creative_dtp_basic.dart';
import 'package:flutter/material.dart';

class CreativeDateTimePicker extends StatelessWidget {
  const CreativeDateTimePicker({
    Key? key,
    this.separator,
    this.title,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.isShowSeconds,
    this.is24HourMode,
    this.minutesInterval,
    this.secondsInterval,
    this.isForce2Digits,
    this.borderRadius,
    this.constraints,
    required this.type,
    this.selectableDayPredicate,
  }) : super(key: key);

  final Widget? separator;
  final Widget? title;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool? isShowSeconds;
  final bool? is24HourMode;
  final int? minutesInterval;
  final int? secondsInterval;
  final bool? isForce2Digits;
  final BorderRadiusGeometry? borderRadius;
  final BoxConstraints? constraints;
  final CreativeDateTimePickerType type;
  final bool Function(DateTime)? selectableDayPredicate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
        child: CreativeDtpBasic(
          title: title,
          separator: separator,
          initialDate: initialDate,
          firstDate: firstDate,
          lastDate: lastDate,
          is24HourMode: is24HourMode,
          isShowSeconds: isShowSeconds,
          minutesInterval: minutesInterval,
          secondsInterval: secondsInterval,
          isForce2Digits: isForce2Digits,
          constraints: constraints,
          type: type,
          selectableDayPredicate: selectableDayPredicate,
        ),
      ),
    );
  }
}
