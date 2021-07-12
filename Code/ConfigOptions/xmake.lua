add_rules("mode.debug", "mode.release")

target("ConfigOptions")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("CONFIGOPTIONS_API")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_frameworks("QtCore","QtWidgets","QtXml")

    add_deps("BCBase")
    add_deps("DataProperty")
    add_deps("PythonModule")
    add_deps("Settings")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("Material")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
