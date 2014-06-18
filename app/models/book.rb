class Book
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :_id, type: BSON::ObjectId, slug_id_strategy: lambda { |id| id =~ /^[[:alnum:]]+$/ }

  field :title, type: String
  field :author, type: String

  slug :title
end
