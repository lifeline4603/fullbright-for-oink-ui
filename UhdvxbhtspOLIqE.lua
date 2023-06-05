oink.ui_context("UhdvxbhtspOLIqE")

oink.ui_checkbox("fullbright")


oink.event_remove("view_render_post", "fullBright_EH")
oink.event_listen("view_render_post", "fullBright_EH", function()
    if oink.ui_get("UhdvxbhtspOLIqE", "fullbright") then
        render.SetLightingMode( 1 ) -- looks horrible but works

    end
end)
