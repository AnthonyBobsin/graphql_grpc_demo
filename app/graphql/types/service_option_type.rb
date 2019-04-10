module Types
  class ServiceOptionType < Types::BaseObject
    description 'A time range of service offered'

    field :id, ID, null: false
    field :warehouse_location_id, Integer, null: true
    field :start_at, String, null: true
    field :end_at, String, null: true
    field :window_description, String, null: true
  end
end
