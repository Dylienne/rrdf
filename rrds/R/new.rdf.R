new.rdf <-
function(ontology=TRUE) {
    if (ontology) {
        model <- .jcall(
            "com/github/egonw/rrdf/RJenaHelper",
            "Lorg/apache/jena/rdf/model/Model;",
            "newOntoRdf"
        )
    } else {
        model <- .jcall(
            "com/github/egonw/rrdf/RJenaHelper",
            "Lorg/apache/jena/rdf/model/Model;",
            "newRdf"
        )
    }
    return(model)
}
