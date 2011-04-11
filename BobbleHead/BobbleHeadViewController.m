//
//  BobbleHeadViewController.m
//  BobbleHead
//
//  Created by Ali Rizvi on 4/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BobbleHeadViewController.h"

@implementation BobbleHeadViewController
@synthesize headImage;

- (void)dealloc
{
    [headImage release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setHeadImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)moveImage:(UIImageView *)image duration:(NSTimeInterval)duration
            curve:(int)curve x:(CGFloat)x y:(CGFloat)y
{
  // Setup the animation
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationDuration:duration];
  [UIView setAnimationCurve:curve];
  [UIView setAnimationBeginsFromCurrentState:YES];
  
  // The transform matrix
  CGAffineTransform transform = CGAffineTransformMakeTranslation(x, y);
  image.transform = transform;
  
  // Commit the changes
  [UIView commitAnimations];
  
}

- (IBAction)verticalMovementSlider:(id)sender {
  UISlider *verticalSlider = (UISlider *)sender;
  float vSliderValue = verticalSlider.value;
  CGRect bounds = [headImage bounds];
  CGFloat x = bounds.origin.x;
  CGFloat y = bounds.origin.y;
  
  [self moveImage:headImage duration:0.2 curve:UIViewAnimationCurveLinear x:x y:(y + 20.0 * vSliderValue)];
}
  

- (IBAction)horizontalMovementSlider:(id)sender {
  UISlider *horizontalSlider = (UISlider *)sender;
  float hSliderValue = horizontalSlider.value;
  CGRect bounds = [headImage bounds];
  CGFloat x = bounds.origin.x;
  CGFloat y = bounds.origin.y;
  
  [self moveImage:headImage duration:0.2 curve:UIViewAnimationCurveLinear x:(x + 20.0 * hSliderValue) y:y];
}
@end
