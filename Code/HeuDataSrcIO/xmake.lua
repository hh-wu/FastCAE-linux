add_rules("mode.debug", "mode.release")

target("HeuDataSrcIO")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("HEUDATASRCIO_LIBRARY")
    add_includedirs("./")
    add_includedirs("../")
    add_includedirs("../SolutionDataIO")
    add_files("*.cpp","*.h")
    add_packages("vtk")
    add_packages("cgns")
    add_packages("opencascade")
    add_frameworks("QtCore","QtWidgets","QtGui")

    add_deps("SolutionDataIO")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("Material")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
