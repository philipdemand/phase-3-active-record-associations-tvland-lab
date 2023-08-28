class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    array = []
    self.characters.each do |character|
        array << "#{character.actor.first_name} #{character.actor.last_name}"
    end
    array
  end

end