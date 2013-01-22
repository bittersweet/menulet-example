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
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:statusMenu];
    NSImage *image = [NSImage imageNamed:@"logo"];
    [statusItem setImage:image];
    [statusItem setHighlightMode:YES];
}

- (IBAction)openAlert:(id)sender
{
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"OK"];
    [alert setMessageText:@"This is an alert"];
    [alert setInformativeText:@"Really, this is an alert"];
    [alert setAlertStyle:NSWarningAlertStyle];
    [alert beginSheetModalForWindow:window
                      modalDelegate:self
                     didEndSelector:@selector(alertDidEnd:returnCode:contextInfo:)
                        contextInfo:nil];
}

- (void)alertDidEnd:(NSAlert *)alert returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo
{
    NSLog(@"alertDidEnd");
}

@end
