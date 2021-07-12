add_rules("mode.debug", "mode.release")

target("ProjectTree")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("PROJECTTREE_API")
    add_packages("vtk")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_files("../qrc/qianfan.qrc")
    add_files("../qrc/translations/ProjectTree_zh_CN.ts")
    add_frameworks("QtCore","QtWidgets","QtGui","QtXml")

    add_deps("ModuleBase")
    add_deps("ModelData")
    add_deps("DataProperty")
    add_deps("MeshData")
    add_deps("Geometry")
    add_deps("SelfDefObject")
    add_deps("BCBase")
    add_deps("ParaClassFactory")
    add_deps("Settings")
    add_deps("ConfigOptions")
    add_deps("Material")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("PostWidgets")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
