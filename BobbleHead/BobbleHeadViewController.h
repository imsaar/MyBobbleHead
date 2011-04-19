//
//  BobbleHeadViewController.h
//  BobbleHead
//
//  Created by Ali Rizvi on 4/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BobbleHeadViewController : UIViewController <UIAccelerometerDelegate> {
    
  UIImageView *headImage;
}

@property (nonatomic, retain) IBOutlet UIImageView *headImage;

- (void)moveImage:(UIImageView *)image duration:(NSTimeInterval)duration
            curve:(int)curve x:(CGFloat)x y:(CGFloat)y;

- (void) moveCenterToX:(float)x andY: (float)y;

@end
