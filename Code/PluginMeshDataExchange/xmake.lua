add_rules("mode.debug", "mode.release")

target("PluginMeshDataExchange")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("MESHDATAEXCHANGEPLUGIN_API")
    add_packages("vtk")
    add_packages("cgns")
    add_includedirs("./")
    add_includedirs("../")
    add_includedirs("./SelfDefObject")
    add_files("*.cpp", "*.h")
    add_frameworks("QtCore", "QtWidgets", "QtGui", "QtXml","QtPrintSupport")

    add_deps("MainWindow")
    add_deps("SelfDefObject")
    add_deps("DataProperty")
    add_deps("Geometry")
    add_deps("GeometryWidgets")
    add_deps("GeometryCommand")
    add_deps("ModuleBase")
    add_deps("ModelData")
    add_deps("MainWidgets")
    add_deps("PythonModule")
    add_deps("PluginManager")
    add_deps("MeshData")
    add_deps("IO")
    add_deps("BCBase")
    add_deps("Material")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("ConfigOptions")
        if is_mode("debug") then
            add_deps("Settings")
            add_rules("qt.console")
        end
    end