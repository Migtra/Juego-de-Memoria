//
//  PantallaJuegoViewController.m
//  Prueba de Memoria
//
//  Created by Miguel  on 02/12/13.
//  Copyright (c) 2013 Miguel Trallero. All rights reserved.
//

#import "PantallaJuegoViewController.h"

@interface PantallaJuegoViewController ()
{
    NSMutableArray * SecuenciaAleatoria;
    NSMutableArray * SecuenciaJugador;
    int rand, i;
}
@end

@implementation PantallaJuegoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    SecuenciaAleatoria =[[NSMutableArray alloc] init];
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)BlueSecuenciaButton:(id)sender {
    [SecuenciaJugador addObject:[NSNumber numberWithInt:1]];
}

- (IBAction)RedSecuenciaButton:(id)sender {
      [SecuenciaJugador addObject:[NSNumber numberWithInt:0]];
}

- (IBAction)GreenSecuenciaButton:(id)sender {
      [SecuenciaJugador addObject:[NSNumber numberWithInt:2]];
}

- (IBAction)OrangeSecuenciaButton:(id)sender {
      [SecuenciaJugador addObject:[NSNumber numberWithInt:3]];
}

- (IBAction)StarSecuenciaButton:(id)sender{
    if ([self.StarButton.titleLabel.text isEqualToString:@"Comenzar Secuencia"])
    {

        for (i=0; i<=[SecuenciaAleatoria count]; i++) {
            
//           int numeroButton = (SecuenciaAleatoria[i]);
//            switch (numeroButton) {
//                    
//                case 0:
//                    self.RedButton.backgroundColor= [UIColor colorWithWhite:0 alpha:0.2];
//                    break;
//                case 1:
//                    self.BlueButton.backgroundColor=[UIColor colorWithWhite:0 alpha:0.2];
//                    break;
//                case 2:
//                    self.GreenButton.backgroundColor=[UIColor colorWithWhite:0 alpha:0.2];
//                    break;
//                case 3:
//                    self.OrangeButton.backgroundColor=[UIColor colorWithWhite:0 alpha:0.2];
//                    break;
//                default:
//                    break;
//            }
            rand = arc4random() % 4;
            [SecuenciaAleatoria addObject:[NSNumber numberWithInteger:rand]];
        }
        
        UIAlertView * mensajeTuSecuencia = [[UIAlertView alloc] initWithTitle:@"¡Secuencia Terminada!" message:@"Preparado para repetir la Secuencia?" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Si", nil];
        [mensajeTuSecuencia show];
        
//        NSLog(@"El numero aleatorio es %@" ,SecuenciaAleatoria[i]);
    }
    else
    {
        for(i=0; i<=[SecuenciaJugador count]; i++){
            if ((SecuenciaJugador[i]) != (SecuenciaAleatoria[i])) {
                NSLog(@"No has acertado");
            }
        }
    
    
    }
    
    
    
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex {
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"Cancelar"])
    {
    }
    else{
        
        //[self.StarButton setTitle:@"Comprobar tu secuencia"];
        SecuenciaJugador = [[NSMutableArray alloc]init];
        }
}
@end
