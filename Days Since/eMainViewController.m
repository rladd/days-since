//
//  eMainViewController.m
//  Days Since
//
//  Created by Ross on 2/9/2014.
//  Copyright (c) 2014 Element63. All rights reserved.
//

#import "eMainViewController.h"

@interface eMainViewController ()

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

 - (IBAction)startButton:(id)sender;

@end

@implementation eMainViewController {
    
    bool start;
    
    NSTimeInterval time;
    
}

- (void) updateTimer
{
    if (start == false) {
        return;
    }
    
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsedTime = currentTime - time;
    
    int minutes = (int)(elapsedTime / 60.0);
    int seconds = (int)(elapsedTime - (minutes * 60.0));
    
    self.timerLabel.text = [NSString stringWithFormat:@"%u:%02u", minutes, seconds];
    
    [self performSelector:@selector(updateTimer) withObject:self afterDelay:0.1];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Do any additional setup after loading the view.
    self.timerLabel.text = @"0:00";
 
    start = false;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButton:(id)sender {
    
    if (start == false) {
        start = true;
        time = [NSDate timeIntervalSinceReferenceDate];
        [sender setTitle:@"Stop!" forState:UIControlStateNormal];
        [self updateTimer];
    } else {
        start = false;
        [sender setTitle:@"Start Timer" forState:UIControlStateNormal];
        
    }
    
    
}





@end
