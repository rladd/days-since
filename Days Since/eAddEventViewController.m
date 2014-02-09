//
//  eAddEventViewController.m
//  Days Since
//
//  Created by Ross on 2/9/2014.
//  Copyright (c) 2014 Element63. All rights reserved.
//

#import "eAddEventViewController.h"

@interface eAddEventViewController ()

@end

@implementation eAddEventViewController


- (IBAction)saveButton:(id)sender {
    
    eAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    NSManagedObject *newEvent;
    
    newEvent = [NSEntityDescription insertNewObjectForEntityForName:@"Events" inManagedObjectContext:context];
    
    [newEvent setValue: _eventNameTextField.text forKey:@"eventName"];
    
    _eventNameTextField.text = @"";
    
    NSError *error;
    
    [context save:&error];
    
    _statusLabel.text = @"Event saved";
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
