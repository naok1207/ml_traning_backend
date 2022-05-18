module Types
  class MutationType < Types::BaseObject
    description 'Mutation'

    field :create_task, mutation: Mutations::TaskCreate
    field :update_task, mutation: Mutations::TaskUpdate
    field :delete_task, mutation: Mutations::TaskDelete
  end
end
