class Comment < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  enum status: %w[publish ban]
end
