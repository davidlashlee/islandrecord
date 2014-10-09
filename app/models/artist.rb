class Artist < ActiveRecord::Base
has_one :contract
has_many :tours
has_many :albums
end