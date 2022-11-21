# frozen_string_literal: true

class PostSerializer
  include JSONAPI::Serializer

  attributes :title, :content

  attribute :comments do |object|
    CommentSerializer.new(object.comments).serializable_hash
  end
end
