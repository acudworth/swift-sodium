Pod::Spec.new do |s|
s.name = 'Sodium'
s.version = '0.6.2'
s.license = { :type => "ISC", :file => 'LICENSE' }
s.summary = 'Swift-Sodium provides a safe and easy to use interface to perform common cryptographic operations on iOS and OSX.'
s.homepage = 'https://github.com/jedisct1/swift-sodium'
s.authors = { 'Frank Denis' => '' }
s.source = { :git => 'https://github.com/acudworth/swift-sodium.git',
             :tag => '0.6.2' }

s.ios.deployment_target = '11.0'

s.ios.vendored_library    = 'Sodium/libsodium-ios/libsodium-ios.a'

s.source_files = 'Sodium/**/*.{swift,h}'
s.private_header_files = 'Sodium/libsodium-ios/**/*.h'

s.preserve_paths = 'Sodium/libsodium-ios/module.modulemap'
s.pod_target_xcconfig = {
	'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/Sodium/libsodium-ios',
}

s.requires_arc = true
end
