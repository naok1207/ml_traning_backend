module Resolvers
  class AuthQuery < Resolvers::BaseQuery
    def authorized?(*_args)
      raise GraphQL::ExecutionError, 'login required!!' unless context[:current_user]

      true
    end
  end
end
