module Fog
  module Monitoring
    class Rackspace
      class Real

        # attribute :label
        # attribute :criteria
        # attribute :check_type
        # attribute :check_id
        # attribute :notification_plan_id


        def create_alarm(entity_id, notification_plan_id, options = {})
          data = {}
          data['label'] = options['label'] if options['label']
          data['criteria'] = options['criteria'] if options['criteria']
          data['check_type'] = options['check_type'] if options['check_type']
          data['check_id'] = options['check_id'] if options['check_id']
          data['notification_plan_id'] = notification_plan_id
          request(
            :body     => MultiJson.encode(options),
            :expects  => [201],
            :method   => 'POST',
            :path     => "entities/#{entity_id}/alarms"
          )
        end
      end
    end
  end
end

