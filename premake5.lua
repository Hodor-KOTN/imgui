project "ImGui"
    kind "StaticLib"
    language "C++"
	cppdialect "C++17"
	staticruntime "On"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
		"imgui_demo.cpp"
    }
    
	filter "system:windows"
        systemversion "latest"
	filter "system:linux"
        systemversion "latest"

	filter "configurations:Debug"
		symbols "On"
		
	filter "configurations:Develop"
		symbols "On"
		
	filter "configurations:Release"
		optimize "On"
		
	filter "configurations:Deploy"
		optimize "On"
