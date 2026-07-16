class EventPublisher
  def self.publish(routing_key, payload)
    Hutch.connect unless Hutch.connected?
    Hutch.publish(routing_key, payload)

  rescue StandardError => e
    Rails.logger.error("Failed to publish message: #{e.message}")
    raise
  end
end
