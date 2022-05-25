module Mutations
  class TaskCreate < Mutations::BaseMutation
    argument :params, InputTypes::Task, required: true

    field :task, ObjectTypes::Task, null: false

    def resolve(params:)
      task = Task.create!(params.to_h)

      { task: }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
