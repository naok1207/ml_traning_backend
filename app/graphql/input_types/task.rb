module InputTypes
  class Task < Types::BaseInputObject
    graphql_name 'TaskAttributes'

    argument :title, String, required: true
    argument :description, String, required: false
  end
end
