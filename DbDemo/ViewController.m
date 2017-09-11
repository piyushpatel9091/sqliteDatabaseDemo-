//
//  ViewController.m
//  DbDemo
//
//  Created by iOS Developer on 17/03/15.
//  Copyright (c) 2015 Regius. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#define APPDELEGATE ((AppDelegate *)[[UIApplication sharedApplication] delegate])
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getDocumentDirectory];
    [self getDataFromDb];
    [self insertDataIntoDb];
    [self updateDataIntoDb];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getDocumentDirectory{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *documentsDirectory = [paths objectAtIndex:0]; // Get documents folder
    NSLog(@"documentsDirectory==%@",documentsDirectory);
}

-(void)getDataFromDb{
    NSArray * data = [APPDELEGATE.dbObject executeQuery:[NSString stringWithFormat:@"SELECT * FROM Student"]];
    NSLog(@"Data : %@",data);
}

-(void)insertDataIntoDb{
    [APPDELEGATE.dbObject executeNonQuery:[NSString stringWithFormat:@"insert into Student values (4, 'Jay', 'Patel')"]];
}

-(void)updateDataIntoDb{
    [APPDELEGATE.dbObject executeNonQuery:[NSString stringWithFormat:@"update Student set firstname='piyush',lastname='patel' where serial=3"]];
}

@end
