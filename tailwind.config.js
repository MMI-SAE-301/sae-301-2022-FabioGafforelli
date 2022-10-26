const formKitTailwind = require("@formkit/themes/tailwindcss");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    colors: {
      'blanc': '#ffffff',
      'bleuroi': '#0C1673',
      'rouge': '#da2424',
      'gris': '#EFEFEF',
    },
    extend: {
      "fontFamily": {
        "exo2": "Exo2",
       },
       "fontSize": {
        "base": "1.5rem",
        "lg": "2rem",
        "xl": "2.25rem",
        "2xl": "2.5rem",
        "3xl": "3rem",
        "4xl": "4rem",
        "5xl": "5rem"
      },
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    formKitTailwind,
    require("@headlessui/tailwindcss"),
  ],
};
