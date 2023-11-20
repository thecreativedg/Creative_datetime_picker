import 'package:creative_datetime_picker/creative_datetime_picker.dart';
import 'package:flutter/material.dart';
import 'package:creative_datetime_picker/src/variants/creative_datetime_range_picker_variants/creative_dtp_range.dart';

class CreativeDateTimeRangePicker extends StatelessWidget {
  const CreativeDateTimeRangePicker({
    super.key,
    this.startInitialDate,
    this.startFirstDate,
    this.startLastDate,
    this.endInitialDate,
    this.endFirstDate,
    this.endLastDate,
    this.isShowSeconds,
    this.is24HourMode,
    this.minutesInterval,
    this.secondsInterval,
    this.isForce2Digits,
    this.borderRadius,
    this.constraints,
    required this.type,
    this.selectableDayPredicate,
    this.defaultView = DefaultView.start,
  });

  final DateTime? startInitialDate;
  final DateTime? startFirstDate;
  final DateTime? startLastDate;

  final DateTime? endInitialDate;
  final DateTime? endFirstDate;
  final DateTime? endLastDate;
  final bool? isShowSeconds;
  final bool? is24HourMode;
  final int? minutesInterval;
  final int? secondsInterval;
  final bool? isForce2Digits;
  final BorderRadiusGeometry? borderRadius;
  final BoxConstraints? constraints;
  final CreativeDateTimePickerType type;
  final bool Function(DateTime)? selectableDayPredicate;
  final DefaultView defaultView;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      shape: Theme.of(context).useMaterial3
          ? null
          : borderRadius != null
              ? RoundedRectangleBorder(
                  borderRadius: borderRadius!,
                )
              : null,
      child: CreativeDtpRange(
        startInitialDate: startInitialDate,
        startFirstDate: startFirstDate,
        startLastDate: startLastDate,
        endInitialDate: endInitialDate,
        endFirstDate: endFirstDate,
        endLastDate: endLastDate,
        is24HourMode: is24HourMode,
        isShowSeconds: isShowSeconds,
        minutesInterval: minutesInterval,
        secondsInterval: secondsInterval,
        isForce2Digits: isForce2Digits,
        constraints: constraints,
        type: type,
        selectableDayPredicate: selectableDayPredicate,
        defaultView: defaultView,
      ),
    );
  }
}
