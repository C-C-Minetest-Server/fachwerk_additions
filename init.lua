-- fachwerk_additions
--
-- $Id: init.lua,v 1.5 2024/03/04 17:50:09 minetest Exp $
--
-- mod too add more fachwerk nodes via the API
--
-- Author: Och Noe
--         och_noe@forksworld.de
--
-- Licence: AGPL
--

local vc_version = "$Id: init.lua,v 1.5 2024/03/04 17:50:09 minetest Exp $"

local vc_v = vc_version:split(" ",false,5,false)


fachwerk_additions = {}
fachwerk_additions.version = vc_v[3]
fachwerk_additions.date = vc_v[4]:gsub("/","-",2)

local mod_name = "fachwerk_additions" 
local full_version = mod_name .. " version "..fachwerk_additions.version.." from "..fachwerk_additions.date
-- minetest.display_chat_message(full_version)
minetest.chat_send_all(full_version)

-- local mod_storage = minetest.get_mod_storage()


local LOG_LEVEL = 'action'

local function log(level, message)
   minetest.log(level, ('[%s] %s'):format(mod_name, message))
end


local additions = {
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


log(LOG_LEVEL,"loaded")


