add_rules("mode.debug", "mode.release")

target("PluginManager")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("PLUGINMANAGER_API")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_files("../qrc/qianfan.qrc")
    add_files("../qrc/translations/PluginManager_zh_CN.ts")
    add_frameworks("QtCore","QtWidgets","QtGui","QtXml")

    add_deps("DataProperty")
    add_deps("ModuleBase")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("Settings")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
