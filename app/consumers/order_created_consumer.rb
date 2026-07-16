class OrderCreatedConsumer
  include Hutch::Consumer

  consume "my_app.order.created"

  def process(message)
    payload = message.body
    Rails.logget.info("revieved order #{payload}")
  end
end
