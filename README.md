# Middleman static site with kss styleguide generator

## Explanation

This setup allows you to create a middleman static site and a kss-node styleguide using the same base scss files.

The scss is stored in `source/stylesheets`

### Middleman static site usage
- Install ruby (if you need to) https://www.ruby-lang.org/en/downloads/
- `bundle install` to install ruby dependencies
- `middleman s --verbose` to start a local server
- `middleman b --verbose` to run a test build locally available at http://127.0.0.1:4567/

### Kss styleguide usage
- Install node (if you need to) https://nodejs.org/en/
- `npm install` to install dependencies
- `npm run build:styleguide` to build a styleguide static site inside /styleguide folder
- `npm run build` to build a new css file inside /styleguide folder
- `npm run watch` to build a new css file inside /styleguide folder when any files in /source/stylesheets change
- `mpn run start` to run a local web server for the styleguide available at `http://localhost:8080/`
