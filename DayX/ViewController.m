//
//  ViewController.m
//  DayX
//
//  Created by Alan Barth on 4/7/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import "ViewController.h"

#import "EntryController.h"




@interface ViewController () <UITextViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *otherText;
@property (nonatomic, strong) IBOutlet UIButton *clearButton;

@property (nonatomic, strong) Entry *entry;


@end

@implementation ViewController

-(void)updateWithEntry:(Entry *)entry {
    self.entry = entry;
    
    self.textField.text = entry.title;
    self.otherText.text = entry.bodyText;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textField.delegate = self;
    self.otherText.delegate = self;
    
    self.textField.text = self.entry.title;
    self.otherText.text = self.entry.bodyText;
    
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(save:)];
    
    self.navigationItem.rightBarButtonItem = saveButton;
    
    //TODO : Take this code out when you implement the list.
    
  //  self.entry = [EntryController sharedInstance].entries.firstObject;
    
 //   [self updateWithTitle:self.entry.title body:self.entry.bodyText];
    
    
    //Don't need this anymore since it was added to our Entry file
//    NSDictionary *entry = [[NSUserDefaults standardUserDefaults] objectForKey:entryKey];
//    [self updateViewWithDictionary:entry];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)updateWithTitle:(NSString *)title body:(NSString *)body {
    self.textField.text = title;
    self.otherText.text = body;
}

- (IBAction)save:(id)sender {
    
    Entry *entry = [[Entry alloc] initWithDictionary:@{titleKey: self.textField.text, textKey: self.otherText.text}];
    
    if (self.entry) {
        [[EntryController sharedInstance] replaceEntry:self.entry withEntry:entry];
    } else {
        [[EntryController sharedInstance] addEntry:entry];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
}


//No longer required.
//- (void) updateViewWithDictionary: (NSDictionary *) dictionary
//{
//    self.textField.text = dictionary[titleKey];
//    self.otherText.text = dictionary[bodyTextKey];
//}

- (IBAction)clear:(id)sender {
      self.textField.text = @"";
    self.otherText.text = @"";
    
    [self save:sender];
    
}

- (void)textViewDidChange:(UITextView *)textView {
   // [self save:textView];
}

- (void)textFieldDidEndEditing:(UITextView *)textField {
   // [self save:textField];
}


- (BOOL) textFieldShouldReturn: (UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
