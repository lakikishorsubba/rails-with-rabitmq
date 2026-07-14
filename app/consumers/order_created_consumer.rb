class OrderCreatedConsumer
  include Hutch::Consumer

  consume "my_app.order.created"

  def process(message)
    payload = message.to_h
    Rails.logget.info("revieved order #{payload}")
  end
end
