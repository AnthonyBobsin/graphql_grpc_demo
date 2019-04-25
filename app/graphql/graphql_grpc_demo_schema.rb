class GraphqlGrpcDemoSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
