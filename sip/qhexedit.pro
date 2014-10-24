CONFIG      += plugin release
TEMPLATE    = lib

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += widgets designer
}
lessThan(QT_MAJOR_VERSION, 5) {
    CONFIG += designer
}

INCLUDEPATH += ../src

HEADERS     = \
    ../src/qhexedit.h \
    ../src/qhexedit_p.h \
    ../src/xbytearray.h \
    ../src/commands.h \
    ../src/qhexeditplugin.h


SOURCES     = \
    ../src/qhexedit.cpp \
    ../src/qhexedit_p.cpp \
    ../src/xbytearray.cpp \
    ../src/commands.cpp \
    ../src/qhexeditplugin.cpp

isEmpty(PREFIX) {
    PREFIX = /usr/local
}


TARGET = $$qtLibraryTarget($$TARGET)
target.path = $$[QT_INSTALL_PLUGINS]/designer

headers.path = $$PREFIX/include/QHexEdit
headers.files = \
    ../src/qhexedit.h \
    ../src/qhexedit_p.h \
    ../src/xbytearray.h

INSTALLS += target headers
 
