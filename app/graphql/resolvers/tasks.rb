module Resolvers
  class Tasks < Resolvers::AuthQuery
    type [ObjectTypes::Task], null: false

    def resolve
      ::Task.all.order(:id)
    end
  end
end
