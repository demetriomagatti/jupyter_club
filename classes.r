#######################################################################################################################
# givitino RefClass

fields=list(name='character',
            job='character',
            age='numeric')

methods=list(initialize=function(){
                name <<- 'Unknown'
                age <<- 99
                job <<- ''
                },
                
             introduce=function(){
                print(paste('Ciao! Mi chiamo ',
                            name, 
                            ' e ho ',
                            age,
                            ' anni!'))
                },

             celebrate_birthday=function(){
                age <- age+1
                print(age)
                })

setRefClass("givitino", fields=fields, methods=methods)

