//
//  GroupsViewController.m
//  
//
//  Created by Nabir Dinani on 6/1/15.
//
//

#import "GroupsViewController.h"

@interface GroupsViewController ()

@property (weak, nonatomic) IBOutlet UIView *CommUnderline;
@property (weak, nonatomic) IBOutlet UIView *PrivUnderline;

@end

@implementation GroupsViewController
@synthesize scrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    draw1 = 0;
    scrollView.frame = CGRectMake(0, 300, 480, 55);
    [scrollView setContentSize:CGSizeMake(480, 55)];
    
    openMenu.frame = CGRectMake(220, 200, 60, 30);
    
    self.PrivUnderline.hidden = YES;
}
- (IBAction)CommButton:(id)sender {
    
    
    self.CommUnderline.hidden = NO;
    self.PrivUnderline.hidden = YES;
}

- (IBAction)PrivButton:(id)sender {

    
    self.CommUnderline.hidden = YES;
    self.PrivUnderline.hidden = NO;
}


- (IBAction)OpenMenu:(id)sender {
    
    if (draw1 == 0) {
        draw1 = 1;
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:2.0];
        [UIView setAnimationDelay:0.0];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        [UIButton beginAnimations:nil context:nil];
        [UIButton setAnimationDuration:2.0];
        [UIButton setAnimationDelay:0.0];
        [UIButton setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        scrollView.frame = CGRectMake(0, 460, 400, 164);
        openMenu.frame = CGRectMake(220, 200, 60, 30);
        
        [self.view bringSubviewToFront:scrollView];
        
        [UIView commitAnimations];
    } else {
        
        draw1 = 0;
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:2.0];
        [UIView setAnimationDelay:0.0];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        [UIButton beginAnimations:nil context:nil];
        [UIButton setAnimationDuration:2.0];
        [UIButton setAnimationDelay:0.0];
        [UIButton setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        scrollView.frame = CGRectMake(0, 585, 400, 164);
        openMenu.frame = CGRectMake(220, 200, 60, 30);
        
        [self.view bringSubviewToFront:scrollView];
        
        [UIView commitAnimations];
    }
}
@end
