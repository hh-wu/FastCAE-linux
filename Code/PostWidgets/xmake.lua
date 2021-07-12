add_rules("mode.debug", "mode.release")

target("PostWidgets")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("POSTWIDGETS_API")
    add_packages("vtk")
    add_includedirs("./")
    add_includedirs("../")
    add_includedirs("../HeuDataSrcIO")
    add_includedirs("../GraphicsAnalyse")
    add_includedirs("../CurveAnalyse")
    add_files("*.cpp","*.h")
    add_files("../qrc/translations/PostWidgets_zh_CN.ts")
    add_frameworks("QtCore","QtWidgets","QtGui","QtPrintSupport")

    add_deps("HeuDataSrcIO")
    add_deps("GraphicsAnalyse")
    add_deps("CurveAnalyse")
    add_deps("ModuleBase")
    add_deps("ConfigOptions")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("Settings")
        add_deps("ModelData")
        add_deps("PythonModule")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
