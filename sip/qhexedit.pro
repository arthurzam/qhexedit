CONFIG      += plugin release
TEMPLATE    = lib

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += widgets
}

INCLUDEPATH += ../src

HEADERS     = \
    ../src/qhexedit.h \
    ../src/qhexedit_p.h \
    ../src/xbytearray.h \
    ../src/commands.h


SOURCES     = \
    ../src/qhexedit.cpp \
    ../src/qhexedit_p.cpp \
    ../src/xbytearray.cpp \
    ../src/commands.cpp

isEmpty(PREFIX) {
    PREFIX = /usr/local
}


TARGET      = qhexedit
target.path = $$PREFIX/lib

headers.path = $$PREFIX/include/QHexEdit
headers.files = \
    ../src/qhexedit.h \
    ../src/qhexedit_p.h \
    ../src/xbytearray.h

INSTALLS += target headers
 
