add_rules("mode.debug", "mode.release")

target("Geometry")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("GEOMETRY_API")
    add_files("*.cpp","*.h")
    add_packages("vtk")
    add_packages("opencascade")
    add_frameworks("QtCore","QtXml")

    add_deps("DataProperty")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
