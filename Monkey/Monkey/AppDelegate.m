//
//  AppDelegate.m
//  Monkey
//
//  Created by coderyi on 15/8/12.
//  Copyright (c) 2015年 coderyi. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowController.h"
@interface AppDelegate (){
    MainWindowController *mainWindow;
    
}

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    if (!mainWindow) {
        mainWindow=[[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"];
    }
    [mainWindow showWindow:self];
    self.apiEngine=[[YiNetworkEngine alloc] initWithDefaultSet];

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
