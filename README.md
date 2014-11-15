# harry_potter_faker

Your test data no longer has to be boring! Now enjoy testing with Harry Potter theamed faked data. 

## Installing

```ruby 
gem install 'harry_potter_faker'
```

## Usage 

```ruby 
HPFaker = HarryPotterFaker.new()
HPFaker.name #=> "Wizard Dedalus Zabini II" 
```

## Names

```ruby 
# may or may not have a prefix or suffix
HPFaker.name #=> "Wizard Dedalus Zabini II" 

HPFaker.first_name #=> "Harry" 

HPFaker.last_name #=> "Ollivander" 

HPFaker.first_and_last #=> "Kingsley Sprout" 

HPFaker.prefix #=> "Professor" 

HPFaker.suffix #=> "Order of Merlin, First Class" 
```

