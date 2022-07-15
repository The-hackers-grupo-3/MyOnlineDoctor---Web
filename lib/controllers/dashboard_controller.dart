import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../Dominio/Appointment/model/appointment.dart';

class DashBoardController extends GetxController {
  final appointmentRequest = [
    AppointmentRequest(
      namePatient: "Julio",
      lastNamePatient: "Iglesias",
      imagePatient:
          "https://media.lmneuquen.com/p/8ee2aaf2a8c3e90fdfa434901e86c809/adjuntos/195/imagenes/007/209/0007209841/770x0/smart/julio-iglesias-memes.png",
      descriptionAppointment: "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee",
      dateAppointment: DateTime.now().add(const Duration(days: 2, hours: 10)),
      hourAppointment: "8 am",
    ),
    AppointmentRequest(
      namePatient: "Laura",
      lastNamePatient: "Bozzo",
      imagePatient:
          "https://ca-times.brightspotcdn.com/dims4/default/9c2e946/2147483647/strip/true/crop/3433x2330+0+0/resize/840x570!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fbf%2F3f%2F791fe353304c600eddeaa209828a%2Fc9fe19823da54e79886bb24ed175b789",
      descriptionAppointment: "Dolor de cabeza",
      dateAppointment: DateTime.now().add(const Duration(days: 4, hours: 10)),
      hourAppointment: "11 am",
    ),
    AppointmentRequest(
      namePatient: "Rabindra",
      lastNamePatient: "Ronaldo",
      imagePatient:
          "https://ca-times.brightspotcdn.com/dims4/default/9c2e946/2147483647/strip/true/crop/3433x2330+0+0/resize/840x570!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fbf%2F3f%2F791fe353304c600eddeaa209828a%2Fc9fe19823da54e79886bb24ed175b789",
      descriptionAppointment: "Dolor de cabeza",
      dateAppointment: DateTime.now().add(const Duration(days: 5, hours: 10)),
      hourAppointment: "11 am",
    ),
    AppointmentRequest(
      namePatient: "Brayan",
      lastNamePatient: "Perez",
      imagePatient:
          "https://ca-times.brightspotcdn.com/dims4/default/9c2e946/2147483647/strip/true/crop/3433x2330+0+0/resize/840x570!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fbf%2F3f%2F791fe353304c600eddeaa209828a%2Fc9fe19823da54e79886bb24ed175b789",
      descriptionAppointment: "Dolor de cabeza",
      dateAppointment: DateTime.now().add(const Duration(days: 3, hours: 10)),
      hourAppointment: "11 am",
    ),
  ];

  final scheduleAppointment = [
    [
      AppointmentRequest(
        namePatient: "Rabindra",
        lastNamePatient: "Perez",
        imagePatient:
            "https://kavishalaa.s3.ap-south-1.amazonaws.com/post_pics/%40kavishala/None/RabindraNath_Tagore_09-07-2021_00-56-20-AM.png",
        descriptionAppointment: "Dolor de apendice",
        dateAppointment: DateTime.now().add(const Duration(days: 2, hours: 10)),
        hourAppointment: "2 pm",
      ),
      AppointmentRequest(
        namePatient: "Manuel",
        lastNamePatient: "De Olival",
        imagePatient:
            "https://lh3.googleusercontent.com/p/AF1QipNvO6vhKr6pERz6nAhRAUDMWQ0P9xIeewyQs_lf=w768-h768-n-o-v1",
        descriptionAppointment: "Dolor de espalda",
        dateAppointment: DateTime.now().add(const Duration(days: 2, hours: 11)),
        hourAppointment: "5 pm",
      )
    ],
    [
      AppointmentRequest(
        namePatient: "Jesus",
        lastNamePatient: "Gonzalez",
        imagePatient:
            "image.png",
        descriptionAppointment: "Dolor de tobillo",
        dateAppointment: DateTime.now().add(const Duration(days: 4, hours: 5)),
        hourAppointment: "7 pm",
      ),
      AppointmentRequest(
        namePatient: "Arturo",
        lastNamePatient: "Fernandez",
        imagePatient:
            "https://s1.eestatic.com/2019/07/04/cultura/arturo_fernandez-cine-teatro_411219711_127271810_1706x960.jpg",
        descriptionAppointment: "Dolor de brazo",
        dateAppointment: DateTime.now().add(const Duration(days: 4, hours: 6)),
        hourAppointment: "11 am",
      )
    ],
  ];

  void onPressedCalendar() {}

  void onPressedScheduleAppointment(int index, AppointmentRequest data){}
}
