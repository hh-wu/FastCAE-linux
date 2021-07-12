add_rules("mode.debug", "mode.release")

target("PluginCustomizer")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("CUSTOMIZERPLUGIN_API")
    add_packages("vtk")
    add_includedirs("./")
    add_includedirs("../")
    add_includedirs("./SelfDefObject")
    add_files("*.cpp", "*.h")
    add_files("../qrc/qianfan.qrc")
    add_files("./resource/customizer.qrc")
    add_files("./resource/translation/transtrations_zh_CN.ts")
    add_frameworks("QtCore", "QtWidgets", "QtGui", "QtXml")

    add_deps("MeshData")
    add_deps("Geometry")
    add_deps("ModelData")
    add_deps("ModuleBase")
    add_deps("DataProperty")
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
    add_deps("MainWindow")
    add_deps("PluginManager")
    add_deps("BCBase")
    add_deps("SARibbonBar")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_rules("qt.axcontainer")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end