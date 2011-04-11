//
//  BobbleHeadAppDelegate.h
//  BobbleHead
//
//  Created by Ali Rizvi on 4/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BobbleHeadViewController;

@interface BobbleHeadAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet BobbleHeadViewController *viewController;

@end
