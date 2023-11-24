vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO kyonRay/hsm-crypto
    REF daa57d8cff459339a409fead5e084706a3f3a578
    SHA512 524f1999b71cd4902ff74c8e53ace04137797de232004b9b363422147d20030090fc7dd0a7915f36afefe3937983d9dbfe2a3476484b72cadfebcab0d36e2269
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH} OPTIONS)
vcpkg_cmake_build()
vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH /lib/cmake/HSM-CRYPTO)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)