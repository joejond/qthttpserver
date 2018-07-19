TARGET = QtHttpServer
INCLUDEPATH += .

QT += network core-private

qtHaveModule(websockets): QT += websockets-private

HEADERS += \
    qthttpserverglobal.h \
    qabstracthttpserver.h \
    qabstracthttpserver_p.h \
    qhttpserverrequest.h \
    qhttpserverrequest_p.h

SOURCES += \
    qabstracthttpserver.cpp \
    qhttpserverrequest.cpp

include(../3rdparty/http-parser.pri)

load(qt_module)