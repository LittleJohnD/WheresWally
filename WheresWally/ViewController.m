//
//  ViewController.m
//  WheresWally
//
//  Created by John Dyer on 05/01/2015.
//  Copyright (c) 2015 John Dyer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameEntry;
@property (weak, nonatomic) IBOutlet UILabel *shownName;
@property (weak, nonatomic) IBOutlet UIButton *lastButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
- (IBAction)nameAdd:(id)sender;
- (IBAction)showLast:(id)sender;
- (IBAction)showNext:(id)sender;

@end

@implementation ViewController
//localivars
NSMutableArray *listOfNames;
int nameIndex;
@synthesize lastButton;
@synthesize nextButton;
@synthesize nameEntry;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //Allocate and initialise listofNames as an empty list
    listOfNames = [NSMutableArray new];
    //Make nameIndex to be zero
    nameIndex = 0;
    //Hide both of the showNext/showLast buttons
    
    
    lastButton.hidden=true;
    nextButton.hidden=true;
    //make nameEntry.delegate = self;
    nameEntry.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldReturn: (UITextField *) textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)nameAdd:(id)sender {
}

- (IBAction)showLast:(id)sender {
}
- (IBAction)showNext:(id)sender {
}
@end

