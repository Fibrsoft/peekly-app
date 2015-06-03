//
//  GroupsViewController.h
//  
//
//  Created by Nabir Dinani on 6/1/15.
//
//

#import <UIKit/UIKit.h>

@interface GroupsViewController : UIViewController{
    
    IBOutlet UIScrollView *scrollView;
    
    IBOutlet UIButton *openMenu;
    int draw1;
    
}

- (IBAction)OpenMenu:(id)sender;

@property (retain, nonatomic) IBOutlet UIScrollView *scrollView;

@end
