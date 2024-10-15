lua << EOF
require("themery").setup({
  themes = {
    {
      name = "1. Abstract CS",
      colorscheme = "abscs",
    },
    {
      name = "2. Code Dark",
      colorscheme = "codedark",
    },
    {
      name = "3. Nightfly",
      colorscheme = "nightfly",
    },
    {
      name = "4. Moonfly",
      colorscheme = "moonfly",
    },
    {
      name = "5. NVCode",
      colorscheme = "nvcode",
    },
    {
      name = "6. Zephyr",
      colorscheme = "zephyr",
    },
    {
      name = "7. Space NVim",
      colorscheme = "space-nvim",
    },
    {
      name = "8. Aurora",
      colorscheme = "aurora",
    },
    {
      name = "9. Monokai",
      colorscheme = "monokai",
    },
    {
      name = "10. Monokai Pro",
      colorscheme = "monokai_pro",
    },
    {
      name = "11. Monokai Soda",
      colorscheme = "monokai_soda",
    },
    {
      name = "12. Monokai Ristretto",
      colorscheme = "monokai_ristretto",
    },
    {
      name = "13. Nordic",
      colorscheme = "nordic",
    },
    {
      name = "14. Nord",
      colorscheme = "nord",
    },
    {
      name = "15. NeoSolarized",
      colorscheme = "NeoSolarized",
      before = [[
        vim.opt.background = "light"
      ]],
    },
    {
      name = "16. Onedark (Darker)",
      colorscheme = "onedark",
      before = [[
        vim.g.onedark_config = { style = "darker" }
      ]],
    },
    {
      name = "17. Everforest",
      colorscheme = "everforest",
    },
    {
      name = "18. Calvera",
      colorscheme = "calvera",
    },
    {
      name = "19. VN Night",
      colorscheme = "vn-night",
    },
    {
      name = "20. Codeschool",
      colorscheme = "codeschool",
    },
    {
      name = "21. GitHub Dark",
      colorscheme = "github_dark",
    },
    {
      name = "22. Catppuccin Latte",
      colorscheme = "catppuccin-latte",
      before = [[
        vim.opt.background = "light"
      ]],
    },
    {
      name = "23. Catppuccin Frappe",
      colorscheme = "catppuccin-frappe",
    },
    {
      name = "24. Catppuccin Macchiato",
      colorscheme = "catppuccin-macchiato",
    },
    {
      name = "25. Catppuccin Mocha",
      colorscheme = "catppuccin-mocha",
    },
    {
      name = "26. Nightfox",
      colorscheme = "nightfox",
    },
    {
      name = "27. Substrata",
      colorscheme = "substrata",
    },
    {
      name = "28. Everblush",
      colorscheme = "everblush",
    },
    {
      name = "29. Apprentice",
      colorscheme = "apprentice",
    },
    {
      name = "30. Onenord",
      colorscheme = "onenord",
    },
    {
      name = "31. Gruvbox Baby",
      colorscheme = "gruvbox-baby",
    },
    {
      name = "32. Zephyrium",
      colorscheme = "zephyrium",
    },
    {
      name = "33. Zenburn",
      colorscheme = "zenburn",
    },
    {
      name = "34. Arctic",
      colorscheme = "arctic",
    },
    {
      name = "35. Adwaita",
      colorscheme = "adwaita",
      before = [[
        vim.opt.background = "light"
      ]],
    },
    {
      name = "36. Mellow",
      colorscheme = "mellow",
    },
    {
      name = "37. Sunburn",
      colorscheme = "sunburn",
    },
    {
      name = "38. Alduin",
      colorscheme = "alduin",
    },
    {
      name = "39. Neofusion",
      colorscheme = "neofusion",
    },
    {
      name = "40. Vimlight",
      colorscheme = "vimlight",
      before = [[
        vim.opt.background = "light"
      ]],
    },
    {
      name = "41. Vimdark",
      colorscheme = "vimdark",
    },
    {
      name = "42. Tokyonight",
      colorscheme = "tokyonight",
    },
    {
      name = "43. Tokyonight Night",
      colorscheme = "tokyonight-night",
    },
    {
      name = "44. Tokyonight Storm",
      colorscheme = "tokyonight-storm",
    },
    {
      name = "45. Tokyonight Day",
      colorscheme = "tokyonight-day",
      before = [[
        vim.opt.background = "light"
      ]],
    },
    {
      name = "46. Tokyonight Moon",
      colorscheme = "tokyonight-moon",
    },
  },
})
EOF
