add_rules("mode.debug", "mode.release")

target("ParaClassFactory")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("PARACLASSFACTORY_API")
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_frameworks("QtCore")

    add_deps("BCBase")
    add_deps("DataProperty")
    add_deps("PythonModule")
    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
