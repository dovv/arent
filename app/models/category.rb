class Category < ApplicationRecord
  enum is_type: [
    :morning,
    :lunch,
    :dinner,
    :snack 
  ]
end
