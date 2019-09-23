//
//  bundle.m
//  template
//
//  Created by Wolfgang Baird on 8/15/16.
//  Copyright © 2019 Wolfgang Baird. All rights reserved.
//

/*
 
 Really simple starting point for an OSX SIMBL Plugin
 
 */

// Imports & Includes
@import AppKit;
#include "ZKSwizzle.h"

// Interfaces
@interface bundle : NSObject
@end

// Variables
bundle *plugin;
NSInteger osx_ver;

// Implementation
@implementation bundle

/*
 
 Usefull for if you're going to reference a method or something in the plugin
 
 EG: 
 
 plugin = [bundle sharedInstance];
 [plugin doStuff];
 
 */
+ (bundle*) sharedInstance
{
    static bundle* plugin = nil;
    if (plugin == nil)
        plugin = [[bundle alloc] init];
    return plugin;
}

/*
    
 Initial setup. Usually here I detemine if the plugin should load by checking macOS version and or a blacklist/whitelist of bundle IDs.
 Good idea to log that your plugin has loaded at the end.
 
 */

+ (void)load {
    plugin = [bundle sharedInstance];
    osx_ver = [[NSProcessInfo processInfo] operatingSystemVersion].minorVersion;
    
    /* A basic swizzle */
//    ZKSwizzle(swizzleMethod, NSObject);
    
    NSLog(@"OS X 10.%ld, %@ loaded...", (long)osx_ver, [self class]);
}

@end


/* An example swizzle

@interface swizzleMethod : NSObject
@end
 
@implementation swizzleMethod

- (BOOL)someMethod {
    return YES;
}

@end
     
*/
