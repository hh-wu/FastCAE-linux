add_rules("mode.debug", "mode.release")

target("IO")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("IO_API")
    add_packages("vtk")
    add_packages("opencascade")
    add_includedirs("../../quazip/include")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h","*.hpp")
    add_files("../qrc/translations/IO_zh_CN.ts")
    add_frameworks("QtCore","QtWidgets","QtXml")

    add_deps("MeshData")
    add_deps("DataProperty")
    add_deps("ModuleBase")
    add_deps("Geometry")
    add_deps("ModelData")
    add_deps("Settings")
    add_deps("quazip")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("PluginManager")
        add_deps("Material")
        add_deps("GmshModule")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end