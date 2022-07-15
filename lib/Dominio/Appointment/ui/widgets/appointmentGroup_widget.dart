import 'package:flutter/material.dart';
import 'package:telemedinaweb/Dominio/Appointment/model/appointment.dart';
import 'package:telemedinaweb/Dominio/Appointment/ui/widgets/listScheduleAppointment_widget.dart';

class ScheduleAppointment extends StatelessWidget {
  const ScheduleAppointment({
    required this.title,
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String title;
  final List<AppointmentRequest> data;
  final Function(int index, AppointmentRequest data) onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 10.0),
          ...data
              .asMap()
              .entries
              .map((e) => ListScheduleAppointment(
                    data: e.value,
                    onPressed: () {},
                    dividerColor: _getSequenceColor(e.key),
                  ))
              .toList()
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      title,
      // ignore: prefer_const_constructors
      style: TextStyle(
        color: Colors.blueGrey,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Color _getSequenceColor(int index) {
    int val = index % 3;

    if (val == 2) {
      return Colors.lightBlue;
    } else if (val == 1) {
      return Colors.amber;
    } else {
      return Colors.redAccent;
    }
  }
}
