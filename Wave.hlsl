//==================//
// 0    : Line      //
// 1    : Sin       //
// 2    : Saw       //
// 3    : Triangle  //
// 4    : Square    //
//==================//
float PI = 3.141592;
float Wave(int waveMode, float waveSpeed)
{
    float speed = _Time.y * waveSpeed;
    float wave = 0.;
    if(waveMode == 0)    wave = 1.;
    if(waveMode == 1)    wave = (sin(speed * PI) + 1.) * .5;
    if(waveMode == 2)    wave = frac(speed * .5 + .5);
    if(waveMode == 3)    wave = abs(2. * frac(speed * .5 - .25) - 1.);
    if(waveMode == 4)    wave = step(.5, frac(speed * .5 + .5));

    return wave;
}
