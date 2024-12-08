platform :ios, '15.0'
use_frameworks!
inhibit_all_warnings!

def testing_pods
  pod 'Quick', '~> 7.0'
  pod 'Sourcery'
  pod 'SwiftFormat/CLI'
  pod 'OHHTTPStubs/Swift', :configurations => ['Debug Development', 'Debug Staging', 'Debug Production']
end

target 'Strangers' do
  # UI
  pod 'Kingfisher'

  # Backend
  pod 'Alamofire'

  # Storage
  pod 'KeychainAccess'

  # Tools
  pod 'Firebase/Crashlytics'
  pod 'R.swift'
  pod 'Factory'

  # Development
  pod 'SwiftLint'
  pod 'Wormholy', :configurations => ['Debug Development', 'Debug Staging', 'Debug Production']
  pod 'xcbeautify'

  target 'StrangersTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'StrangersKIFUITests' do
    testing_pods
    pod 'KIF', :configurations => ['Debug Development', 'Debug Staging', 'Debug Production']
    pod 'KIF/IdentifierTests', :configurations => ['Debug Development', 'Debug Staging', 'Debug Production']
  end
end

def data_dependencies
  pod 'Alamofire'
end

target 'Data' do
  data_dependencies

  target 'DataTests' do
    data_dependencies
    testing_pods
  end
end

target 'Domain' do
  target 'DomainTests' do
    testing_pods
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      config.build_settings['ENABLE_BITCODE'] = 'NO'
      if target.respond_to?(:product_type) and target.product_type == "com.apple.product-type.bundle"
        target.build_configurations.each do |config|
            config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
        end
      end
    end
  end
end
