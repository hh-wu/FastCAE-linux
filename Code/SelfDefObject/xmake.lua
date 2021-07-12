add_rules("mode.debug", "mode.release")

target("SelfDefObject")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("SELFDEFINEOBJ_API")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_files("../qrc/translations/SelfDefObject_zh_CN.ts")
    add_files("../qrc/qianfan.qrc")
    add_files("../qrc/translations.qrc")
    add_frameworks("QtCore","QtWidgets","QtGui")

    add_deps("DataProperty")
    add_deps("Settings")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("Material")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
