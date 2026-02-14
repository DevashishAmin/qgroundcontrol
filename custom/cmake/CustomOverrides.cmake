# ============================================================================
# Custom Build Configuration Overrides
# BattleLab Ground Control Station - Custom Build Configuration
# ============================================================================

# ----------------------------------------------------------------------------
# Application Branding
# ----------------------------------------------------------------------------
set(QGC_APP_NAME "BattleLabGroundControl" CACHE STRING "App Name" FORCE)
set(QGC_APP_DESCRIPTION "BattleLab Ground Control Station" CACHE STRING "App Description" FORCE)
set(QGC_ORG_NAME "BattleLab" CACHE STRING "Organization Name" FORCE)
set(QGC_ORG_DOMAIN "battlelab.com" CACHE STRING "Organization Domain" FORCE)

# Remove "Daily" suffix from version string
set(QGC_BUILD_TYPE "" CACHE STRING "Build Type Suffix" FORCE)

# Copyright information
set(QGC_APP_COPYRIGHT "Copyright © 2026 BattleLab. All rights reserved." CACHE STRING "Copyright" FORCE)

# ----------------------------------------------------------------------------
# Installer/Package Metadata (Windows Apps & Features)
# ----------------------------------------------------------------------------
set(CPACK_PACKAGE_NAME "${QGC_APP_NAME}" CACHE STRING "Package Name" FORCE)
set(CPACK_PACKAGE_VENDOR "${QGC_ORG_NAME}" CACHE STRING "Package Vendor (appears in Apps & Features)" FORCE)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "${QGC_APP_DESCRIPTION}" CACHE STRING "Package Description" FORCE)

# Windows NSIS Installer settings
set(CPACK_NSIS_PACKAGE_NAME "${QGC_APP_NAME}" CACHE STRING "NSIS Package Name" FORCE)
set(CPACK_NSIS_DISPLAY_NAME "${QGC_APP_NAME}" CACHE STRING "Display name in Windows" FORCE)
set(CPACK_NSIS_INSTALLED_ICON_NAME "${QGC_APP_NAME}.exe" CACHE STRING "Installed Icon Name" FORCE)
set(CPACK_PACKAGE_INSTALL_DIRECTORY "BattleLab\\\\${QGC_APP_NAME}" CACHE STRING "Installation Directory" FORCE)

# Optional: Support links in Windows Apps & Features
set(CPACK_NSIS_HELP_LINK "https://${QGC_ORG_DOMAIN}/support" CACHE STRING "Help Link" FORCE)
set(CPACK_NSIS_URL_INFO_ABOUT "https://${QGC_ORG_DOMAIN}" CACHE STRING "About URL" FORCE)
set(CPACK_NSIS_CONTACT "support@${QGC_ORG_DOMAIN}" CACHE STRING "Contact" FORCE)

# ----------------------------------------------------------------------------
# Custom Icons and Graphics
# ----------------------------------------------------------------------------

# macOS Icon
if(EXISTS "${CMAKE_SOURCE_DIR}/custom/res/icons/custom_qgroundcontrol.icns")
    set(QGC_MACOS_ICON_PATH "${CMAKE_SOURCE_DIR}/custom/res/icons/custom_qgroundcontrol.icns" CACHE FILEPATH "MacOS Icon Path" FORCE)
endif()

# Linux AppImage Icon
if(EXISTS "${CMAKE_SOURCE_DIR}/custom/res/icons/custom_qgroundcontrol.svg")
    set(QGC_APPIMAGE_ICON_SCALABLE_PATH "${CMAKE_SOURCE_DIR}/custom/res/icons/custom_qgroundcontrol.svg" CACHE FILEPATH "AppImage Icon SVG Path" FORCE)
endif()

# Windows Installer Header
if(EXISTS "${CMAKE_SOURCE_DIR}/custom/deploy/windows/installheader.bmp")
    set(QGC_WINDOWS_INSTALL_HEADER_PATH "${CMAKE_SOURCE_DIR}/custom/deploy/windows/installheader.bmp" CACHE FILEPATH "Windows Install Header Path" FORCE)
endif()

# Windows Application Icon
if(EXISTS "${CMAKE_SOURCE_DIR}/custom/deploy/windows/WindowsQGC.ico")
    set(QGC_WINDOWS_ICON_PATH "${CMAKE_SOURCE_DIR}/custom/deploy/windows/WindowsQGC.ico" CACHE FILEPATH "Windows Icon Path" FORCE)
endif()

# Windows Installer/Uninstaller Icons (NSIS)
if(EXISTS "${CMAKE_SOURCE_DIR}/custom/res/icons/battlelab.ico")
    set(CPACK_NSIS_MUI_ICON "${CMAKE_SOURCE_DIR}/custom/res/icons/battlelab.ico" CACHE FILEPATH "NSIS Installer Icon" FORCE)
    set(CPACK_NSIS_MUI_UNIICON "${CMAKE_SOURCE_DIR}/custom/res/icons/battlelab.ico" CACHE FILEPATH "NSIS Uninstaller Icon" FORCE)
endif()

# ----------------------------------------------------------------------------
# Feature Set Customization
# ----------------------------------------------------------------------------

# Example: Disable specific features (uncomment as needed)
# set(QGC_DISABLE_AIRMAP ON CACHE BOOL "Disable AirMap integration" FORCE)
# set(QGC_DISABLE_APM_PLUGIN OFF CACHE BOOL "Enable ArduPilot support" FORCE)
# set(QGC_DISABLE_PX4_PLUGIN OFF CACHE BOOL "Enable PX4 support" FORCE)
# set(QGC_DISABLE_UVC ON CACHE BOOL "Disable UVC camera support" FORCE)
# set(QGC_ENABLE_BLUETOOTH ON CACHE BOOL "Enable Bluetooth support" FORCE)

# ----------------------------------------------------------------------------
# Build Configuration
# ----------------------------------------------------------------------------

# Debug/Development options
# set(QGC_BUILD_TESTING OFF CACHE BOOL "Disable unit tests" FORCE)
# set(QGC_ENABLE_QMLLINT ON CACHE BOOL "Enable QML linting" FORCE)

# ----------------------------------------------------------------------------
# Custom Video Streaming (if needed)
# ----------------------------------------------------------------------------

# set(QGC_ENABLE_GST_VIDEOSTREAMING ON CACHE BOOL "Enable GStreamer video" FORCE)


