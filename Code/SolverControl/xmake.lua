add_rules("mode.debug", "mode.release")

target("SolverControl")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("SOLVERCONTROL_API")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_files("../qrc/qianfan.qrc")
    add_files("../qrc/translations/SolverControl_Zh_CN.ts")
    add_frameworks("QtCore","QtWidgets","QtGui")

    add_deps("Settings")
    add_deps("ModuleBase")
    add_deps("ModelData")
    add_deps("DataProperty")
    add_deps("IO")
    add_deps("PostWidgets")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        add_deps("ConfigOptions")
        add_deps("SelfDefObject")
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
