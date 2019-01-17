project "IMGUI"
    kind "StaticLib"
    language "C++"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files{
        "imstb_truetype.h",
        "imconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h"
    }
    
    filter "system:windows"
        systemversion "latest"
        staticruntime "On"

        defines{
            "IMGUI_IMPL_OPENGL_LOADER_GLAD"
        }

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
