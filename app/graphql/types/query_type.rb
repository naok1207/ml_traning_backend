module Types
  class QueryType < Types::BaseObject
    description 'Query'
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :task,  resolver: Resolvers::Task
    field :tasks, resolver: Resolvers::Tasks
    field :current_user, resolver: Resolvers::CurrentUser
  end
end
