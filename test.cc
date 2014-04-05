#include <iostream>
#include <sndfile.hh>

/*
copy from:
http://r9y9.hatenablog.com/entry/2012/05/13/192453
*/

using namespace std;
int main(int argc, char* argv[])
{
    // open input sound file 
    SndfileHandle infile(argv[1], SFM_READ);
    // print sound info 
    cout << infile.samplerate() << endl
        << infile.channels() << endl;
    // read frames 
    short int* input = new short int [infile.frames()];
    infile.readf(input, infile.frames());
    // print input 
    for (int i = 0; i < infile.frames(); ++i) {
        cout << input[i] << endl;
    }
    delete input;
    return 0;
}
