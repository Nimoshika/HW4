class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.similar(id)
    director=Movie.find(id).director
    return nil if director.nil? or director.blank?
     self.where(director: Movie.find(id).director)
  end
end
