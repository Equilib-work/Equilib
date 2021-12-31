module.exports = {
  mode: 'jit',
  darkMode: 'media',
  variants: {
    textColor: ['responsive', 'hover', 'focus', 'group-hover'],
  },
  purge: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js'
  ]
}
