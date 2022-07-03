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
    float speed = _Time.y*waveSpeed)*2.;
    float wave = 0.;
    ifwaveMode == 0)    wave = 1.;
    ifwaveMode == 1)    wave = (sin(speed*PI)+1.)*.5;
    ifwaveMode == 2)    wave = frac(speed*.5+.5);
    ifwaveMode == 3)    wave = abs(2.*frac(speed*.5-.25)-1.);
    ifwaveMode == 4)    wave = step(.5, frac(speed*.5+.5));

    return wave;
}