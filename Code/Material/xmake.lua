add_rules("mode.debug", "mode.release")

target("Material")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("MATERIAL_API")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_files("../qrc/translations/Material_zh_CN.ts")
    add_files("../qrc/qianfan.qrc")
    add_frameworks("QtCore","QtWidgets","QtGui","QtXml")

    add_deps("Settings")
    add_deps("DataProperty")
    add_deps("SelfDefObject")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
