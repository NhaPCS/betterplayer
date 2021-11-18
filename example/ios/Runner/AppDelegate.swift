import UIKit
import Flutter
import AVFoundation

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

   do
          {
              try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
              try AVAudioSession.sharedInstance().setActive(true)

          }
          catch
          {
              print(error)
          }
          // This will enable to show nowplaying controls on lock screen
          application.beginReceivingRemoteControlEvents()

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
