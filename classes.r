#######################################################################################################################
# givitino RefClass

fields=list(name='character',
            job='character',
            age='numeric',
            dialogues='character')


methods=list(initialize=function(){
                
                },
                
            export_data=function(){
                })

setRefClass("givitino", fields=fields, methods=methods)

