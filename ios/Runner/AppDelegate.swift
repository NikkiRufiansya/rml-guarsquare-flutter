import UIKit
import Flutter
import iXGCallbackBridge

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}


@_cdecl("my_callback")
public func my_callback() {
    var context = IXGCallbackContext()
    context.eventType = IXG_ENV_JAILBREAK
    myCallback(context)
}


func myCallback(_ ctx: IXGCallbackContext) {
    switch ctx.eventType {
    case IXG_ENV_JAILBREAK:
        report("jailbroken from swift")
    case IXG_ENV_EMULATOR:
        report("emulator device")
    default: break

    }
}

func report(_ message: String) {
    print(message)
}
