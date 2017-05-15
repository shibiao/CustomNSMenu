//
//  ViewController.m
//  CustomNSMenu
//
//  Created by sycf_ios on 2017/5/15.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    theMenu = [[NSMenu alloc] initWithTitle:@"Contextual Menu"];
//    NSMenuItem *item3 = [[NSMenuItem alloc]init];
//    self.customView.wantsLayer = YES;
//    self.customView.layer.backgroundColor = [NSColor redColor].CGColor;
//    item3.title = @"Item 3";
//    item3.view = self.customView;
//    
//    item3.target = self;
//    item3.action = @selector(beep:);
//    
//    [theMenu addItem:item3];
//    [theMenu popUpMenuPositioningItem:item3 atLocation:NSMakePoint(-self.view.frame.size.width/2, -self.view.frame.size.height/2) inView:self.view];

}

-(void)rightMouseDown:(NSEvent *)event{
    //创建Menu
    NSMenu *theMenu = [[NSMenu alloc] initWithTitle:@"Contextual Menu"];
    //自定义的NSMenuItem
    NSMenuItem *item3 = [[NSMenuItem alloc]init];
    self.customView.wantsLayer = YES;
    self.customView.layer.backgroundColor = [NSColor redColor].CGColor;
    item3.title = @"Item 3";
    item3.view = self.customView;
    item3.target = self;
    item3.action = @selector(beep:);
    
    [theMenu insertItemWithTitle:@"Item 1" action:@selector(beep:) keyEquivalent:@"" atIndex:0];
    [theMenu insertItemWithTitle:@"Item 2" action:@selector(beep:) keyEquivalent:@"" atIndex:1];
    [theMenu insertItem:item3 atIndex:2];
    
    [NSMenu popUpContextMenu:theMenu withEvent:event forView:self.view];
}
-(void)beep:(NSMenu *)menu{
    NSLog(@"_____%@",menu.title);
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
