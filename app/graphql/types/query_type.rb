require 'ServiceOptions_services_pb'

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :service_options, [ServiceOptionType], null: false
    def service_options
      # ServiceOption.all
      begin
        client = ::Gruf::Client.new(service: ::Rpc::ServiceOptions)
        response = client.call(:GetServiceOptions, {})
        response.message
      rescue Gruf::Client::Error => e
        puts e.error.inspect
      end
    end
  end
end
