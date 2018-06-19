function Match-Procedure ($Content, $Regex) {    
    # PROCEDURE\ .*\@1200000001\(
}

function Match-Parameter($Content, $Regex) {

}

function Match-GlobalVariables ($Content, $Regex) {
    # CODE\n.*\{\n\s*VAR

    # TO MATCH GLOBAL VAR
    # Pattern above +
    # First number after @ in any newline before a newline that is nothing but a linebreak
}

function Match-LocalVariables ($Content, $Regex) {
    # PROCEDURE\ .*\n.*\n

}

function Fix-ProcedureIdConflict($Content, $Id){

}

function Match-ParameterIdConflict($Content, $Regex) {
    
}

function Fix-GlobalVariableIdConflict($Content, $Id){
    
}

function Fix-LocalVariableIdConflict($Content, $Id){
    
}
