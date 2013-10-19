class Entry
  include Virtus.model
  include Concerns::Indexable
  include ActiveModel::Validations
  include ActiveModel::Conversion

  attribute :transcription, String
  attribute :tags,          Array[String]
  attribute :flags,         Array[String]
  attribute :reviewed,      Boolean, :default => false
  attribute :language,      String
  attribute :dialect,       String
  attribute :copyright,     Copyright
  attribute :video,         Video

  validates_presence_of :transcription,
                        :tags,
                        :flags,
                        :reviewed,
                        :language#,
                        #:video
end
