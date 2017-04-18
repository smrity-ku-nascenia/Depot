class Notifier < ApplicationMailer
  default :from => 'Pragmatic Bookself <pragmaticbookself@gmail.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received(order)
    @order = order

    mail to: order.email, :subject => "Pragmatic Store Order Confirmation"
  end

  def order_updated(order)
    @order = order

    mail to: order.email, :subject => "Order Updated"
  end

  def error_occurred(order)
    @order = order

    mail to: "pragmaticbookself@gmail.com", :subject => "A system error has occurred"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped(order)
    @order = order

    mail to: "order.email", :subject => "Order shipped"
  end
end
