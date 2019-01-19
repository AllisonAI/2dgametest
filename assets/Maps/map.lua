return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 10,
  height = 10,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 6,
  nextobjectid = 4,
  properties = {},
  tilesets = {
    {
      name = "terrain_atlas",
      firstgid = 1,
      filename = "terrain_atlas.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 32,
      image = "../Atlas/terrain_atlas.png",
      imagewidth = 1024,
      imageheight = 1024,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {
        {
          name = "New Terrain",
          tile = 391,
          properties = {}
        },
        {
          name = "New Terrain",
          tile = 118,
          properties = {}
        },
        {
          name = "New Terrain",
          tile = 112,
          properties = {}
        },
        {
          name = "New Terrain",
          tile = 929,
          properties = {}
        },
        {
          name = "New Terrain",
          tile = 737,
          properties = {}
        },
        {
          name = "New Terrain",
          tile = 554,
          properties = {}
        },
        {
          name = "New Terrain",
          tile = 932,
          properties = {}
        }
      },
      tilecount = 1024,
      tiles = {
        {
          id = 16,
          terrain = { 2, 2, 2, -1 }
        },
        {
          id = 17,
          terrain = { 2, 2, -1, 2 }
        },
        {
          id = 22,
          terrain = { 1, 1, 1, -1 }
        },
        {
          id = 23,
          terrain = { 1, 1, -1, 1 }
        },
        {
          id = 48,
          terrain = { 2, -1, 2, 2 }
        },
        {
          id = 49,
          terrain = { -1, 2, 2, 2 }
        },
        {
          id = 54,
          terrain = { 1, -1, 1, 1 }
        },
        {
          id = 55,
          terrain = { -1, 1, 1, 1 }
        },
        {
          id = 79,
          terrain = { -1, -1, -1, 2 }
        },
        {
          id = 80,
          terrain = { -1, -1, 2, 2 }
        },
        {
          id = 81,
          terrain = { -1, -1, 2, -1 }
        },
        {
          id = 85,
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 86,
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 87,
          terrain = { -1, -1, 1, -1 }
        },
        {
          id = 111,
          terrain = { -1, 2, -1, 2 }
        },
        {
          id = 112,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 113,
          terrain = { 2, -1, 2, -1 }
        },
        {
          id = 117,
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 118,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 119,
          terrain = { 1, -1, 1, -1 }
        },
        {
          id = 143,
          terrain = { -1, 2, -1, -1 }
        },
        {
          id = 144,
          terrain = { 2, 2, -1, -1 }
        },
        {
          id = 145,
          terrain = { 2, -1, -1, -1 }
        },
        {
          id = 149,
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 150,
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 151,
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 298,
          terrain = { 0, 0, 0, -1 }
        },
        {
          id = 299,
          terrain = { 0, 0, -1, 0 }
        },
        {
          id = 330,
          terrain = { 0, -1, 0, 0 }
        },
        {
          id = 331,
          terrain = { -1, 0, 0, 0 }
        },
        {
          id = 361,
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 362,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 363,
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 393,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 394,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 395,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 425,
          terrain = { -1, 0, -1, -1 }
        },
        {
          id = 426,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 427,
          terrain = { 0, -1, -1, -1 }
        },
        {
          id = 521,
          terrain = { -1, -1, -1, 5 }
        },
        {
          id = 522,
          terrain = { -1, -1, 5, 5 }
        },
        {
          id = 523,
          terrain = { -1, -1, 5, -1 }
        },
        {
          id = 553,
          terrain = { -1, 5, -1, 5 }
        },
        {
          id = 554,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 555,
          terrain = { 5, -1, 5, -1 }
        },
        {
          id = 585,
          terrain = { -1, 5, -1, 5 }
        },
        {
          id = 586,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 587,
          terrain = { 5, -1, 5, -1 }
        },
        {
          id = 617,
          terrain = { -1, 5, -1, -1 }
        },
        {
          id = 618,
          terrain = { 5, 5, -1, -1 }
        },
        {
          id = 619,
          terrain = { 5, -1, -1, -1 }
        },
        {
          id = 641,
          terrain = { 4, 4, 4, -1 }
        },
        {
          id = 642,
          terrain = { 4, 4, -1, 4 }
        },
        {
          id = 673,
          terrain = { 4, -1, 4, 4 }
        },
        {
          id = 674,
          terrain = { -1, 4, 4, 4 }
        },
        {
          id = 678,
          terrain = { 5, 5, 5, -1 }
        },
        {
          id = 679,
          terrain = { 5, 5, -1, 5 }
        },
        {
          id = 704,
          terrain = { -1, -1, -1, 4 }
        },
        {
          id = 705,
          terrain = { -1, -1, 4, 4 }
        },
        {
          id = 706,
          terrain = { -1, -1, 4, -1 }
        },
        {
          id = 710,
          terrain = { 5, -1, 5, 5 }
        },
        {
          id = 711,
          terrain = { -1, 5, 5, 5 }
        },
        {
          id = 736,
          terrain = { -1, 4, -1, 4 }
        },
        {
          id = 737,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 738,
          terrain = { 4, -1, 4, -1 }
        },
        {
          id = 768,
          terrain = { -1, 4, -1, -1 }
        },
        {
          id = 769,
          terrain = { 4, 4, -1, -1 }
        },
        {
          id = 770,
          terrain = { 4, -1, -1, -1 }
        },
        {
          id = 833,
          terrain = { 3, 3, 3, -1 }
        },
        {
          id = 834,
          terrain = { 3, 3, -1, 3 }
        },
        {
          id = 836,
          terrain = { 6, 6, 6, -1 }
        },
        {
          id = 837,
          terrain = { 6, 6, -1, 6 }
        },
        {
          id = 865,
          terrain = { 3, -1, 3, 3 }
        },
        {
          id = 866,
          terrain = { -1, 3, 3, 3 }
        },
        {
          id = 868,
          terrain = { 6, -1, 6, 6 }
        },
        {
          id = 869,
          terrain = { -1, 6, 6, 6 }
        },
        {
          id = 896,
          terrain = { -1, -1, -1, 3 }
        },
        {
          id = 897,
          terrain = { -1, -1, 3, 3 }
        },
        {
          id = 898,
          terrain = { -1, -1, 3, -1 }
        },
        {
          id = 899,
          terrain = { -1, -1, -1, 6 }
        },
        {
          id = 900,
          terrain = { -1, -1, 6, 6 }
        },
        {
          id = 901,
          terrain = { -1, -1, 6, -1 }
        },
        {
          id = 928,
          terrain = { -1, 3, -1, 3 }
        },
        {
          id = 929,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 930,
          terrain = { 3, -1, 3, -1 }
        },
        {
          id = 931,
          terrain = { -1, 6, -1, 6 }
        },
        {
          id = 932,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 933,
          terrain = { 6, -1, 6, -1 }
        },
        {
          id = 960,
          terrain = { -1, 3, -1, -1 }
        },
        {
          id = 961,
          terrain = { 3, 3, -1, -1 }
        },
        {
          id = 962,
          terrain = { 3, -1, -1, -1 }
        },
        {
          id = 963,
          terrain = { -1, 6, -1, -1 }
        },
        {
          id = 964,
          terrain = { 6, 6, -1, -1 }
        },
        {
          id = 965,
          terrain = { 6, -1, -1, -1 }
        }
      }
    },
    {
      name = "base_out_atlas",
      firstgid = 1025,
      filename = "base_out_atlas.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 32,
      image = "../Atlas/base_out_atlas.png",
      imagewidth = 1024,
      imageheight = 1024,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 1024,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184,
        184, 184, 184, 184, 184, 184, 184, 184, 184, 184
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "Tile Layer 2",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 80, 81, 81, 81, 81, 81, 81, 82, 0,
        0, 112, 113, 113, 113, 113, 113, 113, 114, 0,
        0, 112, 113, 113, 113, 113, 113, 113, 114, 0,
        0, 112, 113, 113, 113, 113, 113, 113, 114, 0,
        0, 112, 113, 113, 113, 113, 113, 113, 114, 0,
        0, 112, 113, 113, 113, 113, 113, 113, 114, 0,
        0, 112, 113, 113, 113, 113, 113, 113, 114, 0,
        0, 144, 145, 145, 145, 145, 145, 145, 146, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1374
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "Tile Layer 3",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 900, 901, 902, 0,
        0, 0, 0, 0, 0, 0, 932, 933, 869, 902,
        0, 0, 0, 0, 0, 0, 932, 933, 933, 934,
        0, 0, 0, 0, 0, 0, 964, 965, 965, 966,
        0, 897, 898, 899, 0, 0, 0, 0, 0, 0,
        0, 929, 930, 931, 0, 0, 0, 0, 0, 0,
        0, 929, 930, 866, 898, 898, 898, 899, 0, 0,
        0, 929, 930, 930, 930, 930, 930, 931, 0, 0,
        0, 961, 835, 930, 930, 930, 930, 931, 0, 0,
        0, 0, 961, 962, 962, 962, 962, 963, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 3,
      name = "Spawn Point",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 3,
          name = "Player",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 128,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
