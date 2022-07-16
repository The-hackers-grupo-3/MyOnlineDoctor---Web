import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:telemedinaweb/Dominio/Appointment/ui/widgets/appointmentGroup_widget.dart';
//part 'lib/Dominio/Appointment/model/appointment.dart';

//Controller
import 'package:telemedinaweb/controllers/dashboard_controller.dart';

import '../widgets/appointmentInProgress_widget.dart';
import '../widgets/headerDate_widget.dart';
//import '../widgets/appointmentInProgress_widget.dart';

//part '../../../../bindings/dashboard_binding.dart';
//part '../../../../controllers/dashboard_controller.dart';

class DashBoardScreen extends GetView<DashBoardController> {
  const DashBoardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: _buildSideBar(),
            ),
          ),
          Expanded(
            flex: 10,
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: _buildTask(),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const VerticalDivider(),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: _buildAppointment(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSideBar() {
    return const Text("hola");
  }

  Widget _buildTask() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(children: [
        const SizedBox(height: 20.0),
        Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Expanded(child: HeaderText("Solicitudes de citas")),
            ],
          ),
        const SizedBox(height: 20.0),
        AppointmentInProgress(data: controller.appointmentRequest),
      ]),
    );
  }

  Widget _buildAppointment() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          Row(
            children: [
              const Expanded(child: HeaderText("Calendar")),
              IconButton(
                onPressed: controller.onPressedCalendar,
                icon: const Icon(EvaIcons.calendarOutline),
                tooltip: "calendar",
              )
            ],
          ),
          ...controller.scheduleAppointment
              .map((e) => ScheduleAppointment(
                    title: DateFormat('d MMMM').format(e[0].dateAppointment),
                    data: e,
                    onPressed: controller.onPressedScheduleAppointment,
                  ))
              .toList()
        ],
      ),
    );
  }
}
