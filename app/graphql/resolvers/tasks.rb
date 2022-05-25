module Resolvers
  class Tasks < Resolvers::BaseQuery
    type [ObjectTypes::Task], null: false

    def resolve
      ::Task.all.order(:id)
    end
  end
end
