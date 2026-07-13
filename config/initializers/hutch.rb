# config/initializers/hutch.rb
Hutch::Config.set(:mq_host, ENV.fetch('RABBITMQ_HOST', 'localhost'))
Hutch::Config.set(:mq_port, ENV.fetch('RABBITMQ_PORT', 5672).to_i)
Hutch::Config.set(:mq_username, ENV.fetch('RABBITMQ_USERNAME', 'guest'))
Hutch::Config.set(:mq_password, ENV.fetch('RABBITMQ_PASSWORD', 'guest'))
Hutch::Config.set(:mq_vhost, ENV.fetch('RABBITMQ_VHOST', '/'))
Hutch::Config.set(:mq_exchange, ENV.fetch('RABBITMQ_EXCHANGE', 'my_app_exchange'))
Hutch::Config.set(:heartbeat, 30)