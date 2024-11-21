const { frontile, safelist } = require('@frontile/theme/plugin');

/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: 'class',
  plugins: [frontile()],
  content: [
    "./index.html",
    "./app/**/*.{js,ts,gts,gjs}",
    './node_modules/@frontile/theme/dist/**/*.{js,ts}'

  ],
  safelist: [
    ...safelist,

  ],
  theme: {
    extend: {},
  },
}

