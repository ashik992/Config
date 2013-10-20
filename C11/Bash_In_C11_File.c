#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main(){
        int pid;
        int count;
        char ch;
        char *part;
        char input[100];
        char *args[20];
        
        printf("\t\tWelcome to me@My-PC\n\n");
        printf("Enter your input : ");
                
        while(1){
                
                count = 0;
                gets(input);
                
                //gets first parts of the command entered
                part = strtok(input, " ");

                if(!strcmp(part, "exit")){
            args[0] = "exit";
            args[1] = NULL;
            execvp(args[0], args); //used to exit from the terminl
                        break;
                }else if(input == " " || input == "\n"){ //if nothing is entered
                        continue;
                }

                //gets every words from the command entered and stores as seperate string
                while(part && count<20){
                        args[count++] = part;
                        part = strtok(NULL, " ");
                }

                args[count] = NULL;
                
        //creates the file manually if cat is entered
        if(!strcmp(args[0], "cat") && !strcmp(args[1], ">")){
            FILE *newFile = fopen(args[2], "w+");
                        while((ch=getchar())!='^'){
                                putc(ch, newFile);
                        }
                        fclose(newFile);
        }else{ //else the command and arguments are passed through execvp
            pid = fork(); //forked the process
            if(!pid) execvp(args[0], args);
        }
    }
        return 0;
}
