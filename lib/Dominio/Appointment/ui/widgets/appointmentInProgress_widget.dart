import 'package:flutter/material.dart';
import '../../model/appointment.dart';
import 'appointmentRequest_widget.dart';

class AppointmentInProgress extends StatelessWidget {
  const AppointmentInProgress({
    required this.data,
    Key? key,
  }) : super(key: key);

  final List<AppointmentRequest> data;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: SizedBox(
        height: 250,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CardAppointmentRequest(
              data: data[index],
              primary: _getSequenceColor(index),
              onPrimary: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Color _getSequenceColor(int index) {
    int val = index % 4;
    if (val == 3) {
      return Colors.indigo;
    } else if (val == 2) {
      return Colors.grey;
    } else if (val == 1) {
      return Colors.redAccent;
    } else {
      return Colors.lightBlue;
    }
  }
}
