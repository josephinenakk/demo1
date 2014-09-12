class OrderNotifier < ActionMailer::Base
  default from "josephine@gmail.com"
  def received(post)
    @greeting ="Hi"
    mail to "josephine@gmail.com"
  end
end
