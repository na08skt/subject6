class Relationship < ApplicationRecord
  # フォローする人
  belongs_to :follower, class_name: "User"
  # フォローされる人
  belongs_to :followed, class_name: "User"
end
