# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Miauomiccjt' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Miauomiccjt
  pod "MJRefresh"
pod 'TransitionableTab'
pod 'LNZCollectionLayouts'
pod "IQKeyboardManager"
pod 'SnapKit'
pod "SwiftyStoreKit"
pod "Player"

pod "SVProgressHUD"
pod 'ActiveLabel'
pod 'Alamofire'
end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      config.build_settings['SWIFT_VERSION'] = '5.0'
      config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
    end
  end
end
