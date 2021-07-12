add_rules("mode.debug", "mode.release")

target("ModuleBase")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("MODULEBASE_API")
    add_includedirs("./")
    add_includedirs("../")
    add_includedirs("../SelfDefObject")
    add_packages("vtk")
    add_packages("opencascade")
    add_files("*.cpp","*.h")
    add_files("../qrc/qianfan.qrc")
    add_files("../qrc/translations.qrc")
    add_files("../qrc/translations/ModuleBase_zh_CN.ts")
    add_frameworks("QtCore","QtWidgets","QtGui","QtXml","QtPrintSupport")

    add_deps("MeshData")
    add_deps("Geometry")
    add_deps("ModelData")
    add_deps("DataProperty")
    add_deps("SelfDefObject")
    add_deps("Settings")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
