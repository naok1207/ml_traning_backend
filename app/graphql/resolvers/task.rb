module Resolvers
  class Task < Resolvers::AuthQuery
    argument :id, ID, required: true

    type ObjectTypes::Task, null: false

    def resolve(id:)
      user = context[:current_user]
      user.tasks.find(id)
    end
  end
end
