# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = QAFCore
DESTDIR = $$PWD/../../output/lib
QT += core xml widgets gui
CONFIG += debug_and_release
DEFINES += QT_DLL QAFCORE_LIB QT_WIDGETS_LIB QT_XML_LIB
INCLUDEPATH += $$PWD \
    $$PWD/../QtAwesome \
    $$PWD/../Utils \
    $$PWD/../QtCommonModel

LIBS += -L"$$PWD/../../output/lib"
DEPENDPATH += $$PWD
CONFIG(debug,debug|release){
    unix:TARGET=$$join(TARGET,,,_debug)
    else:TARGET=$$join(TARGET,,,d)

    win32{
        LIBS += -lQtCommonModeld
    }

    unix{
        LIBS += -lQtCommonModel_debug
    }
}

CONFIG(release,release|debug){
    LIBS += -lQtCommonModel
}
include(QAFCore.pri)
