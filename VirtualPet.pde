String wither = "ff2b2b2b,ff252525,ff2b2b2b,ff1c1c1c,ff141414,ff1a1a1a,ff252525,ff222222,ff252525,ff252525,ff252525,ff333333,ff474747,ff474747,ff252525,ff1c1c1c,f252525,ff4d4d4d,ff505050,ff5c5c5c,ff545454,ff545454,ff414141,ff333333,ff141414,ff141414,ff141414,ff474747,ff373737,ff141414,ff141414,ff141414,ff4a4a4a,ffc1c1c1,ffc1c1c1,ff4a4a4a,ff373737,ffc1c1c1,ffc1c1c1,ff414141,ff333333,ff474747,ff474747,ff505050,ff474747,ff505050,ff333333,ff1a1a1a,ff282828,ff141414,ffc1c1c1,ffc1c1c1,ffc1c1c1,ffc1c1c1,ff141414,ff1c1c1c,ff141414,ff0c0c0c,ff141414,ff141414,ff1f1f1f,ff141414,ff1f1f1f,ff141414";

void setup()
{
  size(640,640);                       //split basically makes big string(original) into a list of smaller string
  String[] project = split(wither, ','); //wither is not a array its a string, array always start at 0, string is a array with multiple chars
  println(project);
  int x = 0;
  int y = 0;
  //print(project.length); basically the comma separate add to 64
  for (int i=0; i<project.length; i++) { //int i=0 is a code ran 1 time only before the loop, i<project.length condition to run and project.length is the string barriers commas, i++ last code ran in for to repeat the cycle
    fill(unhex(project[i]));
    rect(x,y,80,80);
    x+=80;
    if (x>=640) {
      y+=80;
      x=0;
    }
  }
}
