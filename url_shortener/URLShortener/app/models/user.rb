class User < ApplicationRecord
  #
  # t.string "email", null: false
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.index ["email"], name: "index_users_on_email"

  validates :email, presence: true, uniqueness: true

  has_many :submitted_urls,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :ShortenedUrl
end
