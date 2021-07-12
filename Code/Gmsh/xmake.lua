add_rules("mode.debug", "mode.release")

target("GmshModule")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("GMSH_API")
    add_packages("vtk")
    add_packages("opencascade")
    add_includedirs("./")
    add_includedirs("../")
    add_includedirs("./gmsh454/include")
    add_files("*.cpp","*.h","*.ui")
    add_files("../qrc/qianfan.qrc")
    add_files("../qrc/translations/GmshModule_zh_CN.ts")
    add_frameworks("QtCore","QtWidgets","QtGui","QtXml")

    add_deps("MeshData")
    add_deps("Geometry")
    add_deps("PythonModule")
    add_deps("GeometryWidgets")
    add_deps("Settings")
    add_deps("DataProperty")
    add_deps("SelfDefObject")
    add_deps("ModuleBase")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
