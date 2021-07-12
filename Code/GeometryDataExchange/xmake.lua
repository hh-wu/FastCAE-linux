add_rules("mode.debug", "mode.release")

target("GeometryDataExchange")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("GEOMETRYDATAEXCHANGE_API")
    add_packages("vtk")
    add_packages("opencascade")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_frameworks("QtWidgets","QtPrintSupport")

    add_deps("ModuleBase")
    add_deps("DataProperty")
    add_deps("Geometry")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
