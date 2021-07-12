add_rules("mode.debug", "mode.release")

target("ModelData")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("MODELDATA_API")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_frameworks("QtCore","QtWidgets","QtXml","QtGui")

    add_deps("DataProperty")
    add_deps("Settings")
    add_deps("BCBase")
    add_deps("ConfigOptions")
    add_deps("ParaClassFactory")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("Geometry")
        add_deps("MeshData")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
