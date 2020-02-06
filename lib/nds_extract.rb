$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)

  return_hash = {}
  director_counter = 0


  while director_counter < nds.length do
    director_sum = 0
    movie_counter = 0
    director_data = nds[director_counter]
    director_name = director_data[:name]
    director_movies = director_data[:movies]
    while movie_counter < director_movies.length do
      current_movie = director_movies[movie_counter]
      director_sum += current_movie[:worldwide_gross]
      movie_counter += 1
    end

    return_hash[director_name] = director_sum
    director_counter += 1
  end
  return_hash
end
