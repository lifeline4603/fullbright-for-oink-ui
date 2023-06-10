oink.ui_context("qEciOdeNjRhxxBiE")

oink.ui_checkbox("jetpack bhop fix")


oink.event_remove("view_render_post", "bhopFixEH")
oink.event_listen("view_render_post", "bhopFixEH", function()
    if oink.ui_get("qEciOdeNjRhxxBiE", "jetpack bhop fix") then
        local Owner = self:GetOwner()
        local currentlyequipped = Owner:GetNWBool("hasJetpack", false)
        if currentlyequipped then
            oink.config_set("misc.bhop", "false")
        else
            oink.config_set("misc.bhop", "true")
        end
    end
end)