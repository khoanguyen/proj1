# Q0: Why is this error being thrown?
Pokemon model is missing

Action index of HomeController should use trainer_id:nil instead of trainer:nil in order to support Q1
  def index
    trainerless_pokemon = Pokemon.where(trainer_id:nil)
    @pokemon = trainerless_pokemon.sample
  end

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The pokemon appear randomly and all of them are trainerless (Pokemon with trainer_id = nil)

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>
Generate an empty form with a submit button, which posts a PATCH request back to capture path with given pokemon ID
capture_path(id: @pokemon) will generate the URL to capture action with ID of given pokemon (assumpt that caption action was created in PokemonController)

# Question 3: What would you name your own Pokemon?
LadyGaga

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
redirect_to controller: "home", action: "index"
The hash is a clearer way to redirect, it indicates exactly controller and action to redirect to

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
flash[:error] = @pokemon.errors.full_messages.to_sentence 
It transforms the array of error messages into readble sentence for displaying on the view


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
