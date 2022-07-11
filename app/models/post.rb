class Post < ApplicationRecord
=begin
This Class adds validation to the form inwhich scores are input, it also makes sure the fixtures are listed by "latest first" scores.
=end    
    validates :home, presence: true
    validates :away, presence: true
    validates :homescr, presence: true, numericality: {only_integer: true}
    validates :awayscr, presence: true, numericality: {only_integer: true}

    belongs_to :admin

scope :order_by_latest_first, -> { order(created_at: :desc) }
end
