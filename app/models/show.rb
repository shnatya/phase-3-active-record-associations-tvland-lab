class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        arr =[]
        self.actors.each do |a|
          arr <<  "#{a.first_name} #{a.last_name}"
        end
        arr
    end
end