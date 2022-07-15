class AppointmentRequest {
  final String namePatient;
  final String lastNamePatient;
  final String imagePatient;
  final String descriptionAppointment;
  final DateTime dateAppointment;
  final String hourAppointment;

  const AppointmentRequest({
    required this.namePatient,
    required this.lastNamePatient,
    required this.imagePatient,
    required this.descriptionAppointment,
    required this.dateAppointment,
    required this.hourAppointment,
  });
}
