class Club < ActiveRecord::Base
  has_many :events
  validates :name, presence: true
  validates :name, uniqueness: true
  extend FriendlyId
  friendly_id :name, use: :slugged
  geocoded_by :address
  after_validation :geocode
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Club.create! row.to_hash
    end
  end

end
