module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :service_options, [ServiceOptionType], null: false
    def service_options
      ServiceOption.all
    end
  end
end
