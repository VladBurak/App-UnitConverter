//
//  ViewController.m
//  UnitConverter
//
//  Created by Vlad Burak on 07.03.2021.
//

#import "ViewController.h"



double convertUnitOneToUnitTwo(double unitOneValue) {
    double unitTwoValue;
    unitTwoValue = unitOneValue / 10;
    return unitTwoValue;
}

double convertUnitOneToUnitThree( double unitOneValue) {
    double unitThreeValue;
    unitThreeValue = unitOneValue / 1000;
    return unitThreeValue;
}

double convertUnitOneToUnitFour (double unitOneValue) {
    double unitThreeValue;
    unitThreeValue = unitOneValue / 1000000;
    return unitThreeValue;
}


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *InputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (weak, nonatomic) IBOutlet UILabel *outputField;



@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.InputField.text doubleValue]; // получение текста от пользователя и преобразование в переменную double
    
    if (self.segmentController.selectedSegmentIndex == 0){
        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
    [ buf appendString: [@(unitTwoValue)stringValue]];
    }
    
    
    else if (self.segmentController.selectedSegmentIndex == 1){
        double unitThreeValue = convertUnitOneToUnitThree(userInput);
        [ buf appendString: [@(unitThreeValue)stringValue]];
    }
    
    else {
        double unitFourValue = convertUnitOneToUnitFour(userInput);
        [ buf appendString: [@(unitFourValue)stringValue]];
    }
    
    self.outputField.text = buf;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
