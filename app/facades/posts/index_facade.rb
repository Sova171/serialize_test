# frozen_string_literal: true

module Posts
  class IndexFacade
    def posts
      @posts ||= Post.all
    end
  end
end
