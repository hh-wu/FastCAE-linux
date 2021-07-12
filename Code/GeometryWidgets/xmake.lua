add_rules("mode.debug", "mode.release")

target("GeometryWidgets")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("GEOMETRYWIDGETS_API")
    add_packages("vtk")
    add_packages("opencascade")
    add_includedirs("./")
    add_includedirs("../")
    add_includedirs("../../")
    add_files("*.cpp","*.h","*.ui")
    add_files("../qrc/qianfan.qrc")
    add_files("../qrc/translations/GeometryWidgets_zh_CN.ts")
    add_frameworks("QtCore","QtWidgets","QtGui")

    add_deps("DataProperty")
    add_deps("Geometry")
    add_deps("SelfDefObject")
    add_deps("GeometryCommand")
    add_deps("Settings")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("ModuleBase")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
