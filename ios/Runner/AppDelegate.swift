import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
     let navigatorChannel = FlutterMethodChannel(name: "com.fluttertonative/navigateToCameraSDK", binaryMessenger:  controller.binaryMessenger)
      navigatorChannel.setMethodCallHandler ({
         [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
          print(call.method)
          if call.method == "getSwiftNavigator" {
                      print("Hasanull")

              if let arguments = call.arguments as? Dictionary<String, Any>,
                 let imageBytes = arguments["imageBytes"] as? FlutterStandardTypedData,
                 let imageWidth = arguments["imageWidth"] as? Int,
                 let imageHeight = arguments["imageHeight"] as? Int,
                 let printercategory = arguments["printercategory"] as? String,
                 let imageType = arguments["imageType"] as? String {
                  let imageData = imageBytes.data
                  /*
                   self?.callNavigator(imagedata: imageData,imageWidth: imageWidth,imageHeight: imageHeight,
                                       imageType: imageType,printercategory: printercategory)
                   */
              }

          }
          else if call.method == "getSwiftNavigator2" {

              print("Hello")
              
              self?.callNavigator()
          }
          else{
              print("MYYY")
              print(call.method)
          }

      })
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    private func callNavigator(){


        let storyboard = UIStoryboard(name: "SecondStoryBoard", bundle: nil)
        let secondController = storyboard.instantiateViewController(withIdentifier: "secondcontroller") as! SecondController
        
        window?.rootViewController?.present(secondController, animated: true, completion: nil)
            print("Hello\n")
       
    




        }

}
