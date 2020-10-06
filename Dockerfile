FROM raspbian/desktop

USER root

RUN apt-get purge -y libreoffice*
RUN apt-get clean
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y
RUN apt-get autoremove -y

# PyQt5
RUN apt-get install -y \ 
    libqtgui4 \
    libqtwebkit4 \
    libqt4-test \
    python3-pyqt5

# # PySide2
# RUN apt-get install -y \
#     python3-pyside2.qt3dcore \
#     python3-pyside2.qt3dinput \
#     python3-pyside2.qt3dlogic \
#     python3-pyside2.qt3drender \
#     python3-pyside2.qtcharts \
#     python3-pyside2.qtconcurrent \
#     python3-pyside2.qtcore \
#     python3-pyside2.qtgui \
#     python3-pyside2.qthelp \
#     python3-pyside2.qtlocation \
#     python3-pyside2.qtmultimedia \
#     python3-pyside2.qtmultimediawidgets \
#     python3-pyside2.qtnetwork \
#     python3-pyside2.qtopengl \
#     python3-pyside2.qtpositioning \
#     python3-pyside2.qtprintsupport \
#     python3-pyside2.qtqml \
#     python3-pyside2.qtquick \
#     python3-pyside2.qtquickwidgets \
#     python3-pyside2.qt \
#     python3-pyside2.qttools \
#     python3-pyside2.qtsensors \
#     python3-pyside2.qtsql \
#     python3-pyside2.qtsvg \
#     python3-pyside2.qttest \
#     python3-pyside2.qttexttospeech \
#     python3-pyside2.qtuitools \
#     python3-pyside2.qtwebchannel \
#     python3-pyside2.qtwebsockets \
#     python3-pyside2.qtwidgets \
#     python3-pyside2.qtx11extras \
#     python3-pyside2.qtxml \
#     python3-pyside2.qtxmlpatterns \
#     python3-pyside2uic

# qmlscene
RUN apt-get install -y \
    qmlscene \
    qml-module-qtquick-dialogs \
    qml-module-qtquick-controls \
    qml-module-qtquick-layouts \
    qml-module-qtquick-window2