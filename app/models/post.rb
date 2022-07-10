class Post < ApplicationRecord
    validates :home, presence: true
    validates :away, presence: true
    validates :homescr, presence: true, numericality: {only_integer: true}
    validates :awayscr, presence: true, numericality: {only_integer: true}

    belongs_to :admin

scope :order_by_latest_first, -> { order(created_at: :desc) }
end
