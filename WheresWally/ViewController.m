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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nameAdd:(id)sender {
}

- (IBAction)showLast:(id)sender {
}
- (IBAction)showNext:(id)sender {
}
@end
