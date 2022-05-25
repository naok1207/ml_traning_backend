module Mutations
  class TaskUpdate < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :params, InputTypes::Task, required: true

    field :task, ObjectTypes::Task, null: false

    def resolve(id:, params:)
      task = Task.find(id)
      task.update!(params.to_h)

      { task: }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
