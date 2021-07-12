add_rules("mode.debug", "mode.release")

target("FastCAE")
    set_languages("c++11")
    add_rules("qt_widgetapp")
    add_packages("vtk")
    add_packages("opencascade")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_files("../qrc/qianfan.qrc")
    add_files("../qrc/qianfan.rc")
    add_frameworks("QtCore","QtWidgets","QtGui")

    add_deps("MainWindow")
    add_deps("ConfigOptions")
    add_deps("ProjectTree")
    add_deps("Settings")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        --- include(../python.pri) 不知道咋整
        add_rules("qt.plugin")
        add_deps("MeshData")
        add_deps("Material")
        add_deps("HeuDataSrcIO")
        add_deps("Geometry")
        add_deps("ModelData")
        add_deps("CurveAnalyse")
        add_deps("ModuleBase")
        add_deps("GraphicsAnalyse")
        add_deps("PostWidgets")
        add_deps("IO")
        add_deps("SolverControl")
        add_deps("ProjectTreeExtend")
        add_deps("MainWidgets")
    elseif is_plat("windows") then
        add_includedirs("../License/")
        add_deps("License")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
