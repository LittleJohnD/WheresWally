//
//  ViewController.m
//  WheresWally
//
//  Created by John Dyer on 05/01/2015.
//  Copyright (c) 2015 John Dyer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
- (IBAction)nameAdd:(id)sender;
- (IBAction)showLast:(id)sender;
- (IBAction)showNext:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nameEntry;
@property (weak, nonatomic) IBOutlet UILabel *shownName;
@property (weak, nonatomic) IBOutlet UIButton *lastButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@end

@implementation ViewController
//local ivars
NSMutableArray *listOfNames;
int nameIndex;

- (void)viewDidLoad {
    [super viewDidLoad];
    //Allocate and initialise listofNames as an empty list
    listOfNames = [[NSMutableArray alloc] init];
    
    //Make nameIndex to be zero
    nameIndex = 0;
    
    //Hide both of the showNext/showLast buttons
    self.lastButton.hidden=true;
    self.nextButton.hidden=true;
    
    //make nameEntry.delegate = self;
    self.nameEntry.delegate = self;
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
    //if the textField is not empty, add the name to the list of names
    if ([self.nameEntry.text length] != 0){
        [listOfNames addObject:self.nameEntry.text];
    };
    printf("nameEntry: %s \n", [self.nameEntry.text UTF8String]);
    printf("Size of listOfNames: %d\n", [listOfNames count]);
    //if the list of names is now 1 name long, then put the name in the label and make nameIndex = 1
    if ([listOfNames count] > 0){
        self.shownName.text = [listOfNames objectAtIndex:0];
        nameIndex = 1;
    }
    //else if there are now more names in the list than nameIndex, then show the "Next" button.
    if ([listOfNames count] > 1) {
        self.nextButton.hidden=FALSE;
    }
    //if the new name is "Wally" then run the following alert code:
    if ([self.nameEntry.text isEqualToString: @"Wally"]) {
        UIAlertView *gotWally = [[UIAlertView alloc] initWithTitle:@"Found Wally" message:@"There he is!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [gotWally show];
    }
    //Clear the name from the text field.
    self.nameEntry.text = nil;
    
}

- (IBAction)showLast:(id)sender {
}

- (IBAction)showNext:(id)sender {
}
@end

