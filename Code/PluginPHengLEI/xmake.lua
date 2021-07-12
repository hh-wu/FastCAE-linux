add_rules("mode.debug", "mode.release")

target("PluginPHengLEI")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("PHENGLEIPLUGIN_API")
    add_includedirs("./")
    add_includedirs("../")
    add_packages("vtk")
    add_files("*.cpp","*.h")
    add_frameworks("QtCore","QtWidgets","QtXml","QtGui")

    add_deps("DataProperty")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("MeshData")
        add_deps("Geometry")
        add_deps("ModelData")
        add_deps("ModuleBase")
        add_deps("IO")
        add_deps("Settings")
        add_deps("SelfDefObject")
        add_deps("SolverControl")
        add_deps("MainWidgets")
        add_deps("ProjectTree")
        add_deps("GeometryCommand")
        add_deps("ConfigOptions")
        add_deps("ProjectTreeExtend")
        add_deps("Material")
        add_deps("PythonModule")
        add_deps("PostWidgets")
        add_deps("GeometryWidgets")
        add_deps("PluginManager")
        add_deps("BCBase")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
