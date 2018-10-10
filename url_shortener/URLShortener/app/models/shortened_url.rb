class ShortenedUrl < ApplicationRecord

  # t.string "short_url", null: false
  # t.string "long_url", null: false
  # t.integer "user_id", null: false
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false

  validates :user_id, :long_url, presence: true

  belongs_to :submitter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  def self.create!(user, long_url)
    ShortenedUrl.new(user_id: user.id, long_url: long_url, short_url: ShortenedUrl.random_code)
  end

  def self.random_code
    random_code = SecureRandom.urlsafe_base64
    while ShortenedUrl.exists?(:short_url => random_code)
      random_code = SecureRandom.urlsafe_base64
    end
    random_code
  end

end
