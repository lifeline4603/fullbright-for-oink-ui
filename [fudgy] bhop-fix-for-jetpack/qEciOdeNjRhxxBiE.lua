-- havent tested this yet but in theory this should work

oink.ui_context("qEciOdeNjRhxxBiE")

oink.ui_checkbox("jetpack bhop fix")


oink.event_remove("view_render_post", "bhopFixEH")
oink.event_listen("view_render_post", "bhopFixEH", function()
    if oink.ui_get("qEciOdeNjRhxxBiE", "jetpack bhop fix") then
        local Owner = self:GetOwner() 
        local currentlyequipped = Owner:GetNWBool("hasJetpack", false)
        if currentlyequipped then -- might also have to specify the func "function SWEP:PrimaryAttack()" but we'll see :)
            oink.config_set("misc.bhop", "false") -- so we dont spam jump if jetpack is on
        else
            oink.config_set("misc.bhop", "true") -- so we spam jump if jetpack is off
        end
    end
end)
