CONFIG      += plugin release
TEMPLATE    = lib
LIBS   += -lqhexedit

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += widgets designer
}
lessThan(QT_MAJOR_VERSION, 5) {
    CONFIG += designer
}

INCLUDEPATH += ../../src

HEADERS     =  ../../src/qhexeditplugin.h


SOURCES     =  ../../src/qhexeditplugin.cpp

isEmpty(PREFIX) {
    PREFIX = /usr/local
}


TARGET = $$qtLibraryTarget($$TARGET)
target.path = $$[QT_INSTALL_PLUGINS]/designer

INSTALLS += target
 
