# Middleman static site with kss styleguide generator

## Explanation

This setup allows you to create a middleman static site and a kss-node styleguide using the same base scss files.

- The base scss is found in `source/stylesheets`
- The middleman static site is built to the `build` folder
- The Kss styleguide is generated in the `styleguide` folder

### Middleman static site usage
- Install ruby (if you need to) https://www.ruby-lang.org/en/downloads/
- `bundle install` to install ruby dependencies
- `middleman b --verbose` to build the middleman site to `build` folder
- `middleman s --verbose` to start a local server available at http://127.0.0.1:4567/

### Kss styleguide usage
- Install node (if you need to) https://nodejs.org/en/
- `npm install` to install dependencies
- `npm run build:styleguide` to build a styleguide static site inside /styleguide folder
- `npm run build:css` to build a new css file inside /styleguide folder
- `npm run watch:css` to build a new css file inside /styleguide folder when any files in /source/stylesheets are changed
- `npm run build:styleguide-css` to build a new css file for the styleguide site to use from `styleguide-template/scss/styleguide.scss`
- `npm run start` to run a local web server for the styleguide available at `http://localhost:8080/`
