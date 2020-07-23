# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = UIPlugin
DESTDIR = $$PWD/../../bin/Debug/plugin
QT += core widgets gui
CONFIG += debug_and_release
DEFINES += QT_DLL QT_WIDGETS_LIB UIPLUGIN_LIB
INCLUDEPATH += $$PWD \
    $$PWD/../../include \
    $$PWD/../Utils \
    $$PWD/../QAFCore \
    $$PWD/../QtCommonModel

LIBS += -L$$PWD/../../lib

DEPENDPATH += $$PWD
CONFIG(debug,debug|release){
    TARGET=$$join(TARGET,,,d)
    LIBS += -lQAFCored
#        -lQtPropertyBrowserd
}

CONFIG(release,release|debug){
    LIBS += -lQAFCore
#        -lQtPropertyBrowser
}
message($$QT_INSTALL_PREFIX)
include($$[QT_INSTALL_PREFIX]/../Src/qttools/src/shared/qtpropertybrowser/qtpropertybrowser.pri)
include(UIPlugin.pri)
