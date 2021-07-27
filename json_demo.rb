require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

### READING JSON
list_of_beers = File.read(filepath)

beers = JSON.parse(list_of_beers)

p beers.class

### STORING JSON
beers = { beers: [
  {
    name:       'SuperBock',
    appearance: 'Perfect',
    origin:     'Portugal'
  },
  {
    name:       'Heineiken',
    appearance: 'Unperfect',
    origin:     'Dutch'
  }
],
 waters: [
   {name: 'Luso'}
 ]
}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end

