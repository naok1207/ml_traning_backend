module Resolvers
  class Tasks < Resolvers::AuthQuery
    type [ObjectTypes::Task], null: false

    def resolve
      user = context[:current_user]
      user.tasks.order(:id)
    end
  end
end
