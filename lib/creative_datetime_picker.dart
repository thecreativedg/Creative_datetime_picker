/// A DateTime picker to pick a single DateTime or a DateTime range.
///
/// Use [showCreativeDateTimePicker] to pick a single DateTime.
///
/// Use [showCreativeDateTimeRangePicker] to pick a DateTime range.
///
library creative_datetime_picker;

import 'package:creative_datetime_picker/src/creative_datetime_picker.dart';
import 'package:flutter/material.dart';
import 'package:creative_datetime_picker/src/creative_datetime_range_picker.dart';

/// Show bottom modal sheet of the [CreativeDateTimePicker]
///
/// Returns a DateTime
///
Future<DateTime?> showCreativeDateTimePicker({
  required BuildContext context,
  Widget? title,
  Widget? separator,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
  bool? is24HourMode,
  bool? isShowSeconds,
  int? minutesInterval,
  int? secondsInterval,
  bool? isForce2Digits,
  BorderRadiusGeometry? borderRadius,
  BoxConstraints? constraints,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
      transitionBuilder,
  Duration? transitionDuration,
  CreativeDateTimePickerType type = CreativeDateTimePickerType.dateAndTime,
  final bool Function(DateTime)? selectableDayPredicate,
  ThemeData? theme,
}) {
  return showModalBottomSheet(
    isScrollControlled: true, // Set this to true

    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(10),
      ),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 2.3 / 3,
        child: CreativeDateTimePicker(
          separator: separator,
          title: title,
          type: type,
          initialDate: initialDate,
          firstDate: firstDate,
          lastDate: lastDate,
          is24HourMode: is24HourMode,
          isShowSeconds: isShowSeconds,
          minutesInterval: minutesInterval,
          secondsInterval: secondsInterval,
          isForce2Digits: isForce2Digits,
          borderRadius: borderRadius,
          constraints: constraints,
          selectableDayPredicate: selectableDayPredicate,
        ),
      );
    },
  );
}

/// Show bottom modal sheet of the [CreativeDateTimeRangePicker]
///
/// Returns a List<DateTime>
/// with index 0 as startDateTime
/// and index 1 as endDateTime
///
Future<List<DateTime>?> showCreativeDateTimeRangePicker({
  required BuildContext context,
  DateTime? startInitialDate,
  DateTime? startFirstDate,
  DateTime? startLastDate,
  DateTime? endInitialDate,
  DateTime? endFirstDate,
  DateTime? endLastDate,
  bool? is24HourMode,
  bool? isShowSeconds,
  int? minutesInterval,
  int? secondsInterval,
  bool? isForce2Digits,
  BorderRadiusGeometry? borderRadius,
  BoxConstraints? constraints,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
      transitionBuilder,
  Duration? transitionDuration,
  bool? barrierDismissible,
  CreativeDateTimePickerType type = CreativeDateTimePickerType.dateAndTime,
  bool Function(DateTime)? selectableDayPredicate,
  ThemeData? theme,
  DefaultView defaultView = DefaultView.start,
}) {
  return showModalBottomSheet(
    isScrollControlled: true, // Set this to true

    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 2.3 / 3,
        child: CreativeDateTimeRangePicker(
          type: type,
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
          borderRadius: borderRadius,
          constraints: constraints,
          selectableDayPredicate: selectableDayPredicate,
          defaultView: defaultView,
        ),
      );
    },
  );
}

/// Type of the [CreativeDateTimePicker]
/// default to dateAndTime if not selected
enum CreativeDateTimePickerType {
  date,
  dateAndTime,
}

/// Decides which tab open by default
enum DefaultView { start, end }
