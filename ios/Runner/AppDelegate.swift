import UIKit
import Flutter
import GoogleMaps
import Firebase
  
@UIApplicationMain
@objc class AppDelegate : FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [ UIApplication.LaunchOptionsKey: Any]?
     ) -> Bool {
    
    FirebaseApp.configure()
     if #available(iOS 10.0, *) {
       UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
     }
     if(!UserDefaults.standard.bool(forKey: "Notification")) {
        UIApplication.shared.cancelAllLocalNotifications()
        UserDefaults.standard.set(true, forKey: "Notification")
    }

//    BackgroundLocatorPlugin.setPluginRegistrantCallback(registerPlugins)

    GMSServices.provideAPIKey( "AIzaSyCA63HJpE1k9ExLBvLZaGeoBZ0yvoPlzsI" )
    GeneratedPluginRegistrant.register( with: self )

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }


}

