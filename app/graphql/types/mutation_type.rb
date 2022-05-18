module Types
  class MutationType < Types::BaseObject
    description 'Mutation'

    field :create_task, mutation: Mutations::TaskCreate
    field :update_task, mutation: Mutations::TaskUpdate
  end
end
