const HeroRopository = require('./../repositories/heroRepository') 
const HeroService = require('./../services/heroService') 

const { join } = require('path')
const fileName = join(__dirname, '../../database/', 'data.json')

const generateInstance = () => {
  const heroRepository = new HeroRopository({
    file: fileName
  })

  const heroService = new HeroService({
    heroRepository
  })

  return heroService
}

module.exports = { generateInstance }


generateInstance().create({id:2, name:"bruno"}).then(console.log)