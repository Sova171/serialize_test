# frozen_string_literal: true

class CommentSerializer
  include JSONAPI::Serializer

  attributes :author, :body
end
