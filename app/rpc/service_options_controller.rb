require 'ServiceOptions_services_pb'

class ServiceOptionsController < Gruf::Controllers::Base
  bind ::Rpc::ServiceOptions::Service

  ##
  # Illustrates a server streaming call
  #
  # @return [Rpc::Product] An enumerable of Products that is streamed
  #
  def get_service_options
    ServiceOption.all.map(&:to_proto)
  rescue => e
    fail!(:internal, :unknown, "Unknown error when listing ServiceOptions: #{e.message}")
  end
end