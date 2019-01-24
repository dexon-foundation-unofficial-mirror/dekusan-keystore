Pod::Spec.new do |s|
  s.name         = 'DekuSanKeystore'
  s.version      = '0.5.1'
  s.summary      = 'A general-purpose DEXON keystore for managing wallets.'
  s.homepage     = 'https://dexon.org'
  s.license      = 'GPL'
  s.authors      = { 'DEXON Foundation' => 'app@dexon.org' }

  s.ios.deployment_target = '10.0'

  s.source       = { git: 'https://github.com/dexon-foundation/dekusan-keystore.git', tag: s.version }
  s.source_files = 'Sources/**/*.swift'

  s.dependency 'BigInt'
  s.dependency 'CryptoSwift'
  s.dependency 'TrezorCrypto'
  s.dependency 'DekuSanCore', '~> 0.2.2'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
