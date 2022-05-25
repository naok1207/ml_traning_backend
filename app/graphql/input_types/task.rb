module InputTypes
  class Task < Types::BaseInputObject
    graphql_name 'TaskAttributes'

    argument :description, String, required: false
    argument :title, String, required: true
  end
end
