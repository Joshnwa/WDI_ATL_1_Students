class FanMailer < ActionMailer::Base
  default from: "marc.wright@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.fan_mailer.welcome.subject
  #
  def welcome(fan_id)
    @fan = Fan.find(fan_id)

    mail(to: @fan.email,
    subject: "Welcome to Kitty App!",
    from: "Marc <marc.wright@gmail.com>")
  end
end
