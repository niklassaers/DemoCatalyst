Demo MacCatalyst project for iSSH

OpenSSL compiled as outlined in [https://github.com/Frugghi/iSSH2/issues/10](https://github.com/Frugghi/iSSH2/issues/10)
Include libssh2 as outlined in the issue above too

You can inspect all of the binaries with
```bash
lipo -info <binary.a>
```

You'll find
- libssh2/lib/libssh2.a: armv7 armv7s x86_64 arm64 arm64e
- openssl/lib/libcrypto.a: i386 armv7 armv7s x86_64 arm64
- openssl/lib/libssl.a: i386 armv7 armv7s x86_64 arm64

Since Catalyst targets only macOS 10.15, I believe the architectures included should be armv7 armv7s x86_64 arm64 (and optionally arm64e)

But while the OpenSSL binaries work perfectly, the libssh2.a binary gives the error:
Building for Mac Catalyst, but the linked library 'libssh2.a' was built for macOS + iOS. You may need to restrict the platforms for which this library should be linked in the target editor, or replace it with an XCFramework that supports both platforms
