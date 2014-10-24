#include "qhexeditplugin.h"
#include "qhexedit.h"

QHexEditPlugin::QHexEditPlugin(QObject *parent)
    : QObject(parent)
{
    initialized = false;
}

void QHexEditPlugin::initialize(QDesignerFormEditorInterface * /* core */)
{
    if (initialized)
        return;

    initialized = true;
}

bool QHexEditPlugin::isInitialized() const
{
    return initialized;
}

QWidget *QHexEditPlugin::createWidget(QWidget *parent)
{
    QHexEdit* he = new QHexEdit(parent);
    he->setMinimumSize(100, 100);
    return he;
}

QString QHexEditPlugin::name() const
{
    return "QHexEdit";
}

QString QHexEditPlugin::group() const
{
    return "Display Widgets";
}

QIcon QHexEditPlugin::icon() const
{
    return QIcon();
}

QString QHexEditPlugin::toolTip() const
{
    return "A simple Hex Editor";
}

QString QHexEditPlugin::whatsThis() const
{
    return "QHexEdit is a simple Hexeditor.\n""You can show end edit binary data.";
}

bool QHexEditPlugin::isContainer() const
{
    return false;
}

QString QHexEditPlugin::domXml() const
{
    return "<widget class=\"QHexEdit\" name=\"hexEdit\">\n" \
           " <property name=\"toolTip\" >\n" \
           "  <string>A Simple Hex Editor</string>\n" \
           " </property>\n" \
           " <property name=\"whatsThis\" >\n" \
           "  <string>QHexEdit is a simple Hexeditor. " \
           "  You can show end edit binary data." \
           "  </string>\n" \
           " </property>\n" \
           "</widget>\n";
}

QString QHexEditPlugin::includeFile() const
{
    return "qhexedit.h";
}

#if QT_VERSION < QT_VERSION_CHECK(5,0,0)
Q_EXPORT_PLUGIN2(qhexeditplugin, QHexEditPlugin)
#endif