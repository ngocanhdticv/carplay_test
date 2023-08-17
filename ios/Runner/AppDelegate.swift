import UIKit
import Flutter
import CarPlay

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, UIResponder, CPTemplateApplicationSceneDelegate {
    var interfaceController: CPInterfaceController?

    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene,
     didConnect interfaceController: CPInterfaceController) {
     self.interfaceController = interfaceController
     let listTemplate: CPListTemplate = ...
     interfaceController.setRootTemplate(listTemplate, animated: true)
     }

     func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene,
      didDisconnect interfaceController: CPInterfaceController) {
      self.interfaceController = nil
      }

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    return true
  }
}
