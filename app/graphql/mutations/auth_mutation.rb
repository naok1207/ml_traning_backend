module Mutations
  class AuthMutation < BaseMutation
    def authorized?(*_args)
      unless context[:current_user]
        raise GraphQL::ExecutionError.new(
          'permission denied',
          extensions: {
            code: 'AUTHENTICATION_ERROR'
          }
        )
      end

      true
    end
  end
end
