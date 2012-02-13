class RaportNote < ActionMailer::Base
  default from: "Notificari eCatalog notificari@ecatalog.com"
  def send_raport(nota)
    @student = nota.student.name
    @nota = nota
    mail(to: nota.student.parent_email,bcc: nota.student.email,subject: 'Notificare Ecatalog')
  end
end
