module Types
  class QueryType < Types::BaseObject
    description 'Query'
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :tasks, resolver: Queries::Tasks
    field :task,  resolver: Queries::Task
  end
end
