workspace "PC-Emu"
	startproject "ConfigGenerator"
	configurations
	{
		"Debug",
		"Release"
	}
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
	
group "Tools"
	include "tools"