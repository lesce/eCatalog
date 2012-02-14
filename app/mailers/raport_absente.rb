class RaportAbsente < ActionMailer::Base
  default from: "Notificari eCatalog notificari@ecatalog.com"
  def send_raport(absenta)
    @student = absenta.student.name
    @absenta = absenta
    mail(to: absenta.student.parent_email,subject: 'Notificare Ecatalog')
  end
end
