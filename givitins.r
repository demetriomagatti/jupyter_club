source('classes.r')


#######################################################################################################################
# derived class: Zanna

fields=list(plant_list='character',
            enthusiastic='logical')

methods=list(water_plants=function(){
                print('Ora vado ad innaffiare le piante!')
                if(enthusiastic){
                    for(plant in plant_list){
                        print(paste0('Ho innaffiato la ', plant, '. Evviva!'))
                        }
                    }
                })

setRefClass("Zanna",
            fields=fields,
            methods=methods,
            contains="givitino")


#######################################################################################################################
# derived class: Mati

fields=list(balls_of_wool='numeric',
            tops='numeric',
            savings='numeric',
            enthusiastic='logical')

methods=list(knit=function(){
                if(balls_of_wool>0){
                    balls_of_wool <<- balls_of_wool-1
                    tops <<- tops+1
                }else{
                    print('Oh no! Come è possibile? Ho finito la lana!')
                }
             },
             refill=function(){
                if(savings>0){
                    savings <<- savings-1
                    balls_of_wool <<- balls_of_wool+1
                }else{
                    print('Oh no! Ho speso tutti i soldi in lana!')
                }
            })

setRefClass("Mati",
            fields=fields,
            methods=methods,
            contains="givitino")