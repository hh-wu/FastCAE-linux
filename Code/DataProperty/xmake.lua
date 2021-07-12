add_rules("mode.debug", "mode.release")

target("DataProperty")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("DATAPROPERTY_API")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_frameworks("QtCore","QtWidgets","QtXml")

    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
