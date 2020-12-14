QT       += core gui sql
QT += network
QT += printsupport
QT += charts
QT +=multimedia
QT +=serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
CONFIG +=console

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    arduino.cpp \
    car.cpp \
    connexion.cpp \
    local.cpp \
    main.cpp \
    mainwindow_location.cpp \
    pie_location.cpp \
    send_email_location.cpp \
    smtp_location.cpp

HEADERS += \
    arduino.h \
    car.h \
    connexion.h \
    local.h \
    mainwindow_location.h \
    pie_location.h \
    send_email_location.h \
    smtp_location.h

FORMS += \
    mainwindow_location.ui \
    pie_location.ui \
    send_email_location.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    buttonsound.qrc \
    images.qrc

DISTFILES += \
    The Voice_ button sound effect.wav
