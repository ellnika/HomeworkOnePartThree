//
//  ViewController.m
//  Homework1-Project3
//
//  Created by Ewa Czekalska on 08/08/2016.
//  Copyright © 2016 Ewa Czekalska. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputBox;

@end

@implementation ViewController
- (IBAction)buttonClicked:(id)sender {
    
    NSString *text;
   text=self.inputBox.text;
    
    NSInteger len = text.length;
    NSMutableString *reverseName = [[NSMutableString alloc] initWithCapacity:len];
    
    for (NSInteger i =len-1; i>=0 ; i--)
    {
        [reverseName appendString:[NSString stringWithFormat:@"%c",[text characterAtIndex:i]]];
    
        if (i ==0)
        {
    NSLog(@"%@", reverseName);
        }
    }

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
