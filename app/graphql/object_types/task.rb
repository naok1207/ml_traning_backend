# frozen_string_literal: true

module ObjectTypes
  class Task < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :description, String
    field :id, ID, null: false
    field :status, Integer, null: false
    field :title, String, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
