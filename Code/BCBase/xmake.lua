add_rules("mode.debug", "mode.release")

target("BCBase")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("BCBASE_API")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_frameworks("QtCore","QtXml")

    add_deps("DataProperty")
    add_deps("MeshData")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("Geometry")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
