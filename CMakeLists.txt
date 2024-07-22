cmake_minimum_required(VERSION 3.16)
project(appRoundedImage LANGUAGES CXX)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
find_package(Qt6 REQUIRED COMPONENTS Quick ShaderTools)

qt_standard_project_setup()

qt_add_executable(appRoundedImage
    main.cpp
)

target_link_libraries(appRoundedImage PRIVATE
    Qt6::Quick
)

qt_add_qml_module(appRoundedImage
    URI roundedImage
    QML_FILES
    main.qml
    RoundedImage.qml
    RoundedImage1.qml
    RoundedImage2.qml
    RoundedImage3.qml
    RESOURCES
    qt-logo.png

)

qt6_add_shaders(appRoundedImage shaders
    BATCHABLE
    PRECOMPILE
    OPTIMIZED
    PREFIX
    roundedImage
    FILES
    shaders/mask.frag
    shaders/round.frag
    shaders/roundedCorner.frag
)

install(TARGETS appRoundedImage
    BUNDLE  DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

qt_generate_deploy_qml_app_script(
    TARGET appRoundedImage
    OUTPUT_SCRIPT deploy_script
    MACOS_BUNDLE_POST_BUILD
    NO_UNSUPPORTED_PLATFORM_ERROR
    DEPLOY_USER_QML_MODULES_ON_UNSUPPORTED_PLATFORM
)
install(SCRIPT ${deploy_script})
