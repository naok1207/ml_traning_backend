module Types
  class QueryType < Types::BaseObject
    description 'Query'
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :tasks, resolver: Resolvers::Tasks
    field :task,  resolver: Resolvers::Task
  end
end
