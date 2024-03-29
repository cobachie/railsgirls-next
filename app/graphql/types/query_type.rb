module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :idea, IdeaType, null: true do
      description "Find a idea by ID"
      argument :id, ID, required: true
    end

    def idea(id:)
      Idea.find(id)
    end
  end
end
