project "ConfigGenerator"
    kind "WindowedApp"
    language "C#"
   
	filter "system:windows"
	    files 
		{ 
			"**.cs"
		}
		
		excludes
		{
			"obj/**",
			"bin/**"
		}
		
		targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
		objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
	
		dotnetframework "net6.0-windows"
		flags {"WPF"}
		
		