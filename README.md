SettingsKit.framework
==========================
SettingsKit is a framework with the sole goal of simplifying creating a preference bundle.  
You can create a header in 1 line of code, and with another line add a subText to the header!  
Automatically localizable, you don't have to worry about localizations anymore!  
Want a tint? There are MANY available options for adding and modifying tint!  
Publicity? Thats covered too! Simply enable the showHeartImage, change the shareMessage, change the heart image color! (Note: uses Twitter for sharing)   

Even better, you don't have to hassle with preference bundle plist files anymore! You can create your entire preference pane with Objective-C code!  
Using the Objective-C inline Array and Dictionary features, the entire plist can be simplified.  
For example:  

    // Tint
    -(UIColor*) tintColor { return [UIColor awesomeColor]; }
    // Settings
    -(NSString*) customTitle { return @"Project"; }
    -(NSArray*) customSpecifiers
    {
        return @[
                 @{
                     @"cell": @"PSGroupCell",
                     @"label": @"Project Settings"
                     },
                 @{
                     @"cell": @"PSSwitchCell",
                     @"default": @YES,
                     @"defaults": @"project.settings",
                     @"key": @"enabled",
                     @"label": @"Enabled",
                     @"PostNotification": @"project/reloadSettings",
                     @"cellClass": @"SKTintedSwitchCell"
                     }
                 ];
    }

Make sure to visit the [wiki](https://github.com/mlnlover11/SettingsKit/wiki) for more information, detailed help and descriptions!  
You can view `SKListControllerProtocol.h` to see all the amazing things you can do with SettingsKit.

**Installation:**  
Ensure $THEOS is set up correctly, and you have the latest SDK.

    git clone https://github.com/xXKingRalphXx/SettingsKit.git
    cd SettingsKit
    ./install.sh

You must run `./install.sh` using `sudo -E ./install.sh` or `su root -c "./install.sh"` or the installation will fail.

----------------------------------------------------------------

License under the BSD license. Do as you wish.

----------------------------------------------------------------
