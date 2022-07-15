import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:telemedinaweb/Dominio/Appointment/model/appointment.dart';


class ListScheduleAppointment extends StatelessWidget {
  const ListScheduleAppointment(
      {required this.data,
      required this.onPressed,
      this.dividerColor,
      Key? key})
      : super(key: key);

  final AppointmentRequest data;
  final Function() onPressed;
  final Color? dividerColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildHours(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: _buildDivider(),
        ),
        _buildImage(),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCompleteName(),
              const SizedBox(height: 5),
              _buildDescription()
              ],
          ),
        ),
        const SizedBox(width: 10),
        _callButton(),
        _cancelAppointmentButton(),
      ],
    );
  }

  Widget _buildImage() {
    return CircleAvatar(
      radius: 25,
      backgroundImage: NetworkImage(data.imagePatient),
    );
  }

  Widget _buildHours(){
    return Text(
      data.hourAppointment,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  Widget _buildDescription() {
    return Text(
      data.descriptionAppointment,
      maxLines: 2,
      style: const TextStyle(fontWeight: FontWeight.w400),
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 3,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        gradient: LinearGradient(
          colors: [
            dividerColor ?? Colors.amber,
            dividerColor?.withOpacity(.6) ?? Colors.amber.withOpacity(.6),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget _buildCompleteName() {
    return Text(
      data.namePatient + data.lastNamePatient,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w200,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _callButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(EvaIcons.phoneCallOutline),
      tooltip: "Call", 
      color: Colors.green,
      hoverColor: Colors.transparent,
    );
  }

  Widget _cancelAppointmentButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(EvaIcons.closeCircleOutline),
      tooltip: "Cancel", 
      color: Colors.red,
      hoverColor: Colors.transparent,    
    );
  }

}

