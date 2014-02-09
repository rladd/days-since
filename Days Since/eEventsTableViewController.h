//
//  eEventsTableViewController.h
//  Days Since
//
//  Created by Ross on 2/9/2014.
//  Copyright (c) 2014 Element63. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "eAppDelegate.h"

@interface eEventsTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource, NSFetchedResultsControllerDelegate>
{
    NSManagedObjectContext *managedObjectContext;
    NSFetchedResultsController *requestResultsController;
    NSArray *requestObjects;
}

@property (weak, nonatomic) IBOutlet UITableViewCell *eventCell;
@property (nonatomic) NSFetchedResultsController *requestResultsController;
@property (nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic,strong)  NSArray *requestObjects;

@end
