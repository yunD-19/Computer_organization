const int SID = 1240017;
int studentGrades[41];
int bucket[5];
int mean;
int below_count;
int pass_count;

unsigned int next_x(unsigned int current_x){
    unsigned int next_x = 1664525u * current_x + 1013904223u;
    return next_x;
}

int main(){
    unsigned int x = (unsigned int)SID;
    int gradeSum = 0;
    for (int i = 0;i<41;i++){
        x = next_x(x);
        studentGrades[i] = (x>>16) %101;
        gradeSum += studentGrades[i];
    }
    mean = gradeSum/41;
    for (int i = 0;i<41;i++){
        if(studentGrades[i]>=57){
            pass_count++;
        }

        int whichBucket;
        if(studentGrades[i]<50){
            whichBucket = 0;
            bucket[whichBucket]++;
        } else if(studentGrades[i]<65 && studentGrades[i]>49){
            whichBucket = 1;
            bucket[whichBucket]++;
        } else if(studentGrades[i]<75 && studentGrades[i]>64){
            whichBucket = 2;
            bucket[whichBucket]++;
        } else if(studentGrades[i]<85 && studentGrades[i]>74){
            whichBucket = 3;
            bucket[whichBucket]++;
        } else if(studentGrades[i]<=100 && studentGrades[i]>84){
            whichBucket=4;
            bucket[whichBucket]++;
        }

        if(studentGrades[i]<mean){
            below_count++;
            studentGrades[i] = studentGrades[i] | 0x100;
        }


    }
}
