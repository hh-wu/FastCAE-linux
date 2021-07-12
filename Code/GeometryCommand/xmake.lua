add_rules("mode.debug", "mode.release")

target("GeometryCommand")
    add_rules("qt.shared")
    add_defines("GEOMETRYCOMMAND_API")
    add_packages("vtk")
    add_packages("opencascade")
    add_includedirs("./")
    add_includedirs("../")
    add_includedirs("../../")
    add_files("*.cpp","*.h")
    add_frameworks("QtCore","QtWidgets","QtGui")

    add_deps("DataProperty")
    add_deps("Geometry")
    add_deps("ModuleBase")
    add_deps("GeometryDataExchange")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end