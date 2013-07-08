
#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize muestraPregunta;
@synthesize muestraRespuesta;
@synthesize preguntas, respuestas;
//@synthesize cuestionarioIndex;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Creamos dos arrays:
    // uno para preguntas y otro para respuestas
    preguntas = [[NSMutableArray alloc] init];
    respuestas = [[NSMutableArray alloc] init];
    
    //Añadimos a los arrays nuestras preguntas y respuestas
    [preguntas addObject:@"¿Cual fue el motivo para crear Internet? "];
    [respuestas addObject:@"El Sputnik"];
    
    [preguntas addObject:@"¿Capital de Madagascar?"];
    [respuestas addObject:@"Antananarivo"];
    
    [preguntas addObject:@"Moneda antigua con inscripción: AÑO 25 ADC ¿Es correcto?"];
    [respuestas addObject:@"Falsa"];
    
    [preguntas addObject:@"¿De que color son las canas?"];
    [respuestas addObject:@"Incoloro"];

}

- (void)viewDidUnload
{
    [self setMuestraPregunta:nil];
    [self setMuestraRespuesta:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)NuevaPregunta:(id)sender {
    
    // Sumamos incrementalmente +1
    _cuestionarioIndex++;
    
    // ¿Es la última pregunta?
    if (_cuestionarioIndex == [preguntas count]) {
        // Volver a la primera pregunta
        _cuestionarioIndex = 0;
    }
    
    // Llevar el string al índice
    NSString * pregunta = [preguntas objectAtIndex:_cuestionarioIndex];
    
    // Mostrar el string de la pregunta
    [muestraPregunta setText:pregunta];
    
    // Nos preparamos para la respuesta
    [muestraRespuesta setText:@"Y la respuesta es..."];
}

- (IBAction)NuevaRespuesta:(id)sender {
    
    // Solicitamos la respuesta
    NSString *respuesta = [respuestas objectAtIndex: _cuestionarioIndex];
    
    // Mostramos la respuesta en el Label
    [muestraRespuesta setText:respuesta];
}


@end








