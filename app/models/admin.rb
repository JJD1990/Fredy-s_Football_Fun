class Admin < ApplicationRecord
=begin
This Class shows the authentication functions that are available through the devise gem, you can validate through postgresql, 
register new users, recover their password if lost and remember users. 
=end 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :posts

        end

