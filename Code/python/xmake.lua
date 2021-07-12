add_rules("mode.debug", "mode.release")

target("PythonModule")
    set_languages("c++11")
    add_rules("qt.shared")
    add_defines("PYTHON_API")
    --- include(./../python.pri) 这个不知道咋整
    add_includedirs("./")
    add_includedirs("../")
    add_files("*.cpp","*.h")
    add_frameworks("QtCore","QtWidgets","QtGui")

    if is_plat("macosx", "linux") then
        add_rules("qt.plugin")
    elseif is_plat("windows") then
        if is_mode("debug") then
            add_rules("qt.console")
        end
    end
