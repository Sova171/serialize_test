# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @facade = ::Posts::IndexFacade.new

    respond_to do |format|
      format.html
      format.json do
        render json: JSON.pretty_generate(PostSerializer.new(@facade.posts).serializable_hash)
      end
    end
  end
end
