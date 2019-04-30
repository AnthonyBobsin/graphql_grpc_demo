class ServiceOption < ApplicationRecord

  def to_proto
    Rpc::ServiceOption.new(
      slice(:id, :warehouse_location_id, :start_at, :end_at, :window_description)
    )
  end
end
