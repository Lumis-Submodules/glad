project "glad"
    kind "StaticLib"
    language "C"
    staticruntime "off"

    targetdir ("bin/%{prj.name}-%{cfg.buildcfg}/out")
    objdir ("bin/%{prj.name}-%{cfg.buildcfg}/int")

    includedirs {
        "include"
    }

    files {
        "src/glad.c"
    }

    filter "configurations:Debug"
        defines "DEBUG"
        runtime "Debug"
        optimize "off"
        symbols "on"
    
    filter "configurations:Release"
        defines "NDEBUG"
        runtime "Release"
        optimize "on"
        symbols "on"
    
    filter "configurations:Dist"
        defines "NDEBUG"
        runtime "Release"
        optimize "on"
        symbols "off"
