//
//  eAddEventViewController.h
//  Days Since
//
//  Created by Ross on 2/9/2014.
//  Copyright (c) 2014 Element63. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "eAppDelegate.h"

@interface eAddEventViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *eventNameTextField;

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

- (IBAction)saveButton:(id)sender;


@end
