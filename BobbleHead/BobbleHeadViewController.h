//
//  BobbleHeadViewController.h
//  BobbleHead
//
//  Created by Ali Rizvi on 4/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BobbleHeadViewController : UIViewController {
    
  UIImageView *headImage;
}

@property (nonatomic, retain) IBOutlet UIImageView *headImage;

- (IBAction)horizontalMovementSlider:(id)sender;
- (void)moveImage:(UIImageView *)image duration:(NSTimeInterval)duration
            curve:(int)curve x:(CGFloat)x y:(CGFloat)y;
- (IBAction)verticalMovementSlider:(id)sender;

@end
