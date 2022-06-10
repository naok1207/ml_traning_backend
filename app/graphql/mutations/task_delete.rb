module Mutations
  class TaskDelete < Mutations::AuthMutation
    argument :id, ID, required: true

    field :id, ID, null: false

    def resolve(id:)
      user = context[:current_user]
      user.tasks.find(id).delete

      { id: }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
