movie_list = [{:title=>"The Godfather",
     :studio=>"Paramount",
     :worldwide_gross=>134966411,
     :release_year=>1972},
    {:title=>"Apocalypse Now",
     :studio=>"MGM",
     :worldwide_gross=>83471511,
     :release_year=>1979},
    {:title=>"Apocalypse Now Redux",
     :studio=>"Miramax",
     :worldwide_gross=>83471511,
     :release_year=>2001},
    {:title=>"Bram Stoker's Dracula",
     :studio=>"Columbia",
     :worldwide_gross=>82522790,
     :release_year=>1992},
    {:title=>"The Godfather Part III",
     :studio=>"Paramount",
     :worldwide_gross=>66666062,
     :release_year=>1990},
    {:title=>"Jack",
     :studio=>"Buena Vista",
     :worldwide_gross=>58620973,
     :release_year=>1996}]

def gross_per_studio(collection)
  studio_grosses = {}
  movie_counter = 0 
  while movie_counter < collection.length do 
    studio_name = collection[movie_counter][:studio]
    movie_gross = collection[movie_counter][:worldwide_gross]
    if !studio_grosses[studio_name]
      studio_grosses[studio_name] = movie_gross
    else
      studio_grosses[studio_name] += movie_gross
    end
    movie_counter += 1   
  end
  p studio_grosses
end

gross_per_studio(movie_list)