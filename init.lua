-- fachwerk_additions
--
-- $Id: init.lua,v 1.8 2024/03/05 02:55:10 minetest Exp $
--
-- mod too add more fachwerk nodes via the API
--
-- Author: Och Noe
--         och_noe@forksworld.de
--
-- Licence: AGPL
--

local additions = {

   -- default
   -- "default:",

   -- bakedclay
   "bakedclay:white",
   "bakedclay:grey",
   "bakedclay:black",
   "bakedclay:red",
   "bakedclay:yellow",
   "bakedclay:green",
   "bakedclay:cyan", 
   "bakedclay:blue", 
   "bakedclay:magenta",
   "bakedclay:orange", 
   "bakedclay:violet", 
   "bakedclay:brown", 
   "bakedclay:pink", 
   "bakedclay:dark_grey",
   "bakedclay:dark_green",

   --  minetest_errata
   "minetest_errata:flint_block",
   "minetest_errata:mossystone",
   "default:mossycobble",
   "minetest_errata:mossy_stone_tile",
   "minetest_errata:desert_sandstone_cobble",
   "minetest_errata:sandstone_cobble",
   "minetest_errata:silver_sandstone_cobble",

   -- moreblocks
   "moreblocks:circle_stone_bricks",
   "moreblocks:grey_bricks",
   "moreblocks:iron_stone",
   "moreblocks:coal_stone",
   "moreblocks:all_faces_acacia_tree",
   "moreblocks:all_faces_aspen_tree",
   "moreblocks:all_faces_jungle_tree",
   "moreblocks:all_faces_pine_tree",
   "moreblocks:all_faces_tree",

   -- cottages
   "cottages:roof_vertical_brown",
   "cottages:roof_vertical_shingle",
   "cottages:loam",

   -- swamp
   "swamp:mud_block",
   "swamp:mud_brick",


   --   "",

}


--

-- fachwerk.register_fachwerk(basename, texture, description, craft_from)


for _,n in pairs(additions) do
   if n then
      basenode = minetest.registered_nodes[n]
      if basenode then
	 local btex = basenode.tiles[1]
	 local bdesc = basenode.description
	 local bname = bdesc:lower():gsub(" ","_")

	 fachwerk.register_fachwerk(":"..bname,btex,bdesc,n)

      end
   end
end
