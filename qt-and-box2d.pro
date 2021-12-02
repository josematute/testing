QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    SceneWidget.cpp \
    main.cpp \
    MainWindow.cpp

HEADERS += \
    MainWindow.h \
    SceneWidget.h

FORMS += \
    MainWindow.ui

unix|win32: LIBS += -L$$PWD/./ -lbox2d

INCLUDEPATH += $$PWD/box2d/include
DEPENDPATH += $$PWD/box2d/include

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/./box2d.lib
else:unix|win32-g++: PRE_TARGETDEPS += $$PWD/./libbox2d.a
