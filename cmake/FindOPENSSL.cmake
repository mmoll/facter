include(FindDependency)
if (WIN32)
    find_dependency(OPENSSL DISPLAY "OpenSSL" HEADERS "openssl/ssl.h" LIBRARIES "crypto" "libeay32" REQUIRED)
else()
    find_dependency(OPENSSL DISPLAY "OpenSSL" HEADERS "openssl/ssl.h" LIBRARIES "crypto" REQUIRED)
endif()

include(FeatureSummary)
set_package_properties(OPENSSL PROPERTIES DESCRIPTION "An open-source implementation of the SSL and TLS protocols" URL "https://www.openssl.org/")
set_package_properties(OPENSSL PROPERTIES TYPE OPTIONAL PURPOSE "Enables SSH fingerprinting facts on POSIX systems.")
