#' SMMT - The Swiss Municipality Merger Tool Maps Municipalities Over Time
#' 
#' In Switzerland, the landscape of municipalities is changing rapidly mainly
#' due to mergers. The Swiss Municipality Merger Tool  automatically detects
#' these mutations and maps municipalities of an old state to municipalities of
#' a new state. This functionality is helpful when working with datasets that
#' are based on different spatial references. The spatial reference in this
#' context signifies a set of municipalities at a given point in time.
#' 
#' For detailed information and examples, see \code{\link{map_old_to_new_state}}
#'
#'
#' @docType package
#' @name smmt
#'
#' @import XML
#' @import dplyr
#' @import tibble
#'   
utils::globalVariables(c("admission_date", "state", "status",
"abolition_date", "abolition_mode", "abolition_nr", "add_column", "admission_mode",
"admission_nr", "bfs_nr_new", "bundle_id", "cantonAbbreviation",
"cantonDateOfChange", "districtHistId", "entry_mode", "hist_id",
"historyMunicipalityId", "municipalityAbolitionDate",
"municipalityAbolitionMode", "municipalityAbolitionNumber",
"municipalityAdmissionDate", "municipalityAdmissionMode",
"municipalityAdmissionNumber", "municipalityDateOfChange",
"municipalityEntryMode", "municipalityId", "municipalityLongName",
"municipalityShortName", "municipalityStatus"))
