module Mutations
  class TaskCreate < Mutations::AuthMutation
    argument :params, InputTypes::Task, required: true

    field :task, ObjectTypes::Task, null: false

    def resolve(params:)
      user = context[:current_user]
      task = user.tasks.create!(params.to_h)

      { task: }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
