add_rules("mode.debug", "mode.release")

target("GraphicsAnalyse")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("GRAPHICSANALYSE_LIBRARY")
    add_packages("vtk")
    add_includedirs("./")
    add_includedirs("../")
    add_includedirs("./CTK")
    add_includedirs("./CTK/Libs/Visualization/VTK/Widgets")
    add_includedirs("./CTK/Libs/Widgets")
    add_includedirs("./CTK/Libs/Visualization/VTK/Core")
    add_includedirs("./CTK/Libs/Core")
    add_includedirs("../HeuDataSrcIO")
    add_includedirs("../SolutionDataIO")
    add_includedirs("../CurveAnalyse")
    add_files("*.cpp","*.h","*.ui")
    add_files("./CTK/*.cpp","./CTK/*.h")
    add_files("../translations/GraphicsAnalyse_zh_CN.ts")
    add_files("res.qrc")
    add_frameworks("QtCore","QtWidgets","QtGui","QtXml","QtOpenGL")

    add_deps("HeuDataSrcIO")
    add_deps("SolutionDataIO")
    add_deps("CurveAnalyse")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("OpenGL32")
        add_deps("GlU32")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
