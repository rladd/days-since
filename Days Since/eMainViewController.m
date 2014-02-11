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

@property NSDate *startDate;

@property NSTimeInterval *secondsPerDay;

 - (IBAction)startButton:(id)sender;

@end

@implementation eMainViewController {
    
    bool start;
    
    __weak IBOutlet UILabel *testLabel;
    
    NSTimeInterval time;
    
}

- (void) updateTimer
{
    NSString *strEventDate = @"2013-11-08 12:00:00";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *eventDate = [dateFormatter dateFromString: strEventDate];
    NSDate *currentDate = [NSDate date];
    NSCalendar *gregorian = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
    
    // pass as many or as little units as you like here, separated by pipes
    NSUInteger units = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    
    NSDateComponents *components = [gregorian components:units fromDate:eventDate toDate:currentDate options:0];
    
    NSInteger nYears = [components year];
    NSInteger nMonths = [components month];
    NSInteger nDays = [components day];
    NSInteger nHours = [components hour];
    NSInteger nMins = [components minute];
    NSInteger nSec = [components second];
    
    NSString *strTimer = [NSString stringWithFormat:@"%02d:%02d:%02d:%02d:%02d:%02d", (long)nYears, (long)nMonths, (long)nDays, (long)nHours, (long)nMins, (long)nSec];
    
    self.timerLabel.text = strTimer;
    
    //NSString *strTimer = [NSString stringWithFormat:@"Date: %@", tempRegCode];
    //self.timerLabel.text = [NSString stringWithFormat:@"Date: %@", (long)days];
    //NSLog(@"Years: %ld, Months: %ld, Days: %ld", (long)years, (long)months, (long)days);
    
    ///////////////////////////////////////////////////////////////////////////
    //self.timerLabel.text = @"Date: %i";
    
    [self performSelector:@selector(updateTimer) withObject:self afterDelay:0.1];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Do any additional setup after loading the view.
    self.timerLabel.text = @"00:00:00:00:00:00";
 
    start = false;
    
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






@end
