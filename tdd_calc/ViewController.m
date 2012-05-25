//
//  ViewController.m
//  tdd_calc
//
//  Created by Alex Denisov on 22.05.12.
//  Copyright (c) 2012 CoreInvader. All rights reserved.
//

#import "ViewController.h"
#import "CalculationManager.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize leftTextField;
@synthesize rightTextField;
@synthesize subtractButton;
@synthesize addButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.addButton.accessibilityLabel = @"add";
    self.subtractButton.accessibilityLabel = @"subtract";
}

- (void)viewDidUnload
{
    [self setSubtractButton:nil];
    [self setLeftTextField:nil];
    [self setRightTextField:nil];
    [self setAddButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [subtractButton release];
    [leftTextField release];
    [rightTextField release];
    [addButton release];
    [super dealloc];
}

- (IBAction)addButtonTapped:(id)sender {
    CalculationManager *calculationManager = [CalculationManager sharedInstance];
    NSInteger left = [self.leftTextField.text integerValue];
    NSInteger right = [self.rightTextField.text integerValue];
    [self showResult:[calculationManager add:left
                                        with:right]];
}

- (IBAction)subtractButtonTapped:(id)sender {
    CalculationManager *calculationManager = [CalculationManager sharedInstance];
    NSInteger left = [self.leftTextField.text integerValue];
    NSInteger right = [self.rightTextField.text integerValue];
    [self showResult:[calculationManager subtract:right
                                             from:left]];
}

- (void)showResult:(NSInteger)result {
    NSString *resultString = [NSString stringWithFormat:@"%d", result];
    [[[[UIAlertView alloc] initWithTitle:@"Result"
                                 message:resultString
                                delegate:nil
                       cancelButtonTitle:@"OK"
                       otherButtonTitles:nil] autorelease] show];
}

@end
