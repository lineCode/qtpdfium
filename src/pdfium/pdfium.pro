TARGET = QtPdfium

DEFINES += __QT__

QT = core-private core gui
CONFIG += warn_on strict_flags c++11
load(qt_module)

#QMAKE_DOCS = $$PWD/doc/qtleveldb.qdocconf
include($$PWD/../3rdparty/pdfium.pri)


PRIVATE_HEADERS += \
    $$PWD/qpdfiumglobal.h
PUBLIC_HEADERS += \
    $$PWD/qpdfium.h
SOURCES += \
    $$PWD/qpdfiumglobal.cpp \
    $$PWD/qpdfium.cpp \
    qpdfiumpage.cpp

HEADERS += $$PUBLIC_HEADERS $$PRIVATE_HEADERS \
    qpdfiumpage.h
