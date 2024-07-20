QT += quick shadertools
# QMAKE_PRE_LINK += "cmd"
# Replace with your own file path
QMAKE_PRE_LINK += cmd
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc
SHADER_FILES = shaders/mask.frag shaders/round.frag shaders/roundedCorner.frag
for(shader, SHADER_FILES) {
   #Define output file
   OUTPUT_FILE = $${shader}.qsb
   #Build compilation command
   COMPILE_CMD = qsb --glsl \"100 es,120,150\" --hlsl 50 --msl 12 -o $${OUTPUT_FILE} $${shader}
   #Print debugging information (optional)
   message(Compiling $${shader} to $${OUTPUT_FILE})
   system($${COMPILE_CMD})
}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
