class MyRecord < ApplicationRecord
  belongs_to :user

  enum is_type: {
    day: 0,
    week: 1
  }
end
