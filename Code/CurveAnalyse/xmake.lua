add_rules("mode.debug", "mode.release")

target("CurveAnalyse")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("CURVEANALYSE_LIB")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_files("./resource.qrc")
    add_files("../translations/CurveAnalyse_zh_CN.ts")
    add_frameworks("QtCore","QtWidgets","QtGui","QtPrintSupport")

    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
