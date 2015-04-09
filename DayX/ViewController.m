//
//  ViewController.m
//  DayX
//
//  Created by Alan Barth on 4/7/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import "ViewController.h"




@interface ViewController () <UITextViewDelegate, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *otherText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.delegate = self;
    self.otherText.delegate = self;
    
    NSDictionary *entry = [[NSUserDefaults standardUserDefaults] objectForKey:entryKey];
    [self updateViewWithDictionary:entry];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) save: (id) sender {
    NSDictionary *entry = @{titleKey:self.textField.text, bodyTextKey:self.otherText.text};
    [[NSUserDefaults standardUserDefaults] setObject:entry forKey:entryKey];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void) updateViewWithDictionary: (NSDictionary *) dictionary
{
    self.textField.text = dictionary[titleKey];
    self.otherText.text = dictionary[bodyTextKey];
}

- (IBAction)buttonTapped:(id)sender {
      self.textField.text = @"";
    self.otherText.text = @"";
}

- (void)textViewDidChange:(UITextView *)textView {
    [self save:self.textField];
}

- (void)textFieldDidEndEditing:(UITextView *)textView {
    [self save:self.textField];
}


- (BOOL) textFieldShouldReturn: (UITextField *) textField {
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
