INCLUDEPATH += .
CONFIG      += plugin release
TEMPLATE    = lib
QT          += widgets designer

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

OTHER_FILES += ../src/qhexedit.json

TARGET = $$qtLibraryTarget($$TARGET)
target.path = $$[QT_INSTALL_PLUGINS]/designer
INSTALLS += target
 
