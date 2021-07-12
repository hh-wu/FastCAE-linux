add_rules("mode.debug", "mode.release")

target("License")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("LICENSE_LIB")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_frameworks("QtCore","QtWidgets","QtXml","QtGui")

    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
        add_deps("MainWindow")
    elseif is_plat("windows") then
        add_includedirs("../Setting/")
        add_deps("Settings")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
