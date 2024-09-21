# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
  {:title => 'La La Land', :rating => 'PG-13', :release_date => '09-Dec-2016'},
  {:title => 'The Legend of 1900', :rating => 'R', :release_date => '28-Oct-1998'},
  {:title => 'Inception', :rating => 'PG-13', :release_date => '16-Jul-2010'}.
]

more_movies.each do |movie|
  Movie.create!(movie)
end