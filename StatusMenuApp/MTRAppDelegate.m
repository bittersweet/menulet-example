//
//  MTRAppDelegate.m
//  StatusMenuApp
//
//  Created by Mark Mulder on 1/22/13.
//  Copyright (c) 2013 Mark Mulder. All rights reserved.
//

#import "MTRAppDelegate.h"

@implementation MTRAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // override
}

- (void)awakeFromNib
{
    statusItem = [[NSStatusBar systemStatusBar]
                  statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu: statusMenu];
    NSImage *image = [NSImage imageNamed:@"logo"];
    [statusItem setImage:image];
    [statusItem setHighlightMode:YES];
}

@end
