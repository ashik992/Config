#include <stdio.h>
#include <unistd.h>


int main(){
        char input[100]; //the string where the input will be stored
        
        //some simple promotes to show at the begining
        printf("\n\n\t\tWelcome to my little terminal. :)\n");
        printf("\t\t<===============================>\n");
        printf("I've made a little modification on this terminal\n");
        printf("\t* There will border the output.\n");
        printf("\t* Full path of the directory will be shown.\n");
        printf("\t* Spaceses between every set of input and output.\nENJOY :)\n\n");

        do{
        printf("\n");
                system("echo -n $(whoami)@$(hostname): $(pwd) $ "); //gets the username and hostname
                printf(" ");
                gets(input); //gets the input
                if(strcmp(input, "exit")) printf("\n=>\n__________________________________________");
                system(input);
                if(!strcmp(input, "exit")) printf("\n>> Thank you for using this program.\n");
        }while(strcmp(input, "exit")); //runs the program till exit is entered


        return 0;
}
