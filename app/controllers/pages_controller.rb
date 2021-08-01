class PagesController < ApplicationController
  def info
    query = <<~GQL
      {
        idea(id: #{@idea.id}) {
          id
          name
          createdAt
          likesCount
        }
      }
    GQL
    @result_hash = RailsgirlsNextSchema.execute(query)
  end
end
