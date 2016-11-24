//
//  ViewController.m
//  Test_UIFontDescriptor
//
//  Created by tomfriwel on 24/11/2016.
//  Copyright © 2016 tomfriwel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)logAction:(id)sender {
    if ([self.textField hasText]) {
        // Font family name matching
        UIFontDescriptor *family = [UIFontDescriptor fontDescriptorWithFontAttributes:@{UIFontDescriptorFamilyAttribute:self.textField.text}];
        
        NSArray *matches = [family matchingFontDescriptorsWithMandatoryKeys: nil];
        
        NSLog(@"%@", matches);
    }
}


@end
