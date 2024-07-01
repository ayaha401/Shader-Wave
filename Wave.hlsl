//==================//
// 0    : Line      //
// 1    : Sin       //
// 2    : Saw       //
// 3    : Triangle  //
// 4    : Square    //
//==================//
float PI = 3.141592;
float wave(int waveMode, float waveSpeed)
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

// 幅を決めれる矩形波
// wには幅を入れる。0~1までの入力に対応
float squareWave(float x, float w)
{
    return step(1. - w, fract(x + 1. - w));
}
