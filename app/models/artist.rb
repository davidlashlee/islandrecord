class Artist < ActiveRecord::Base
	belongs_to :rep
has_one :contract
has_many :tours
has_many :albums


	def generate_artist
		@artist = Artist.new
end