#' Download municipality inventory
#' 
#' This functions downloads and extracts the municipality inventory form a defined online source.
#' 
#' @param url Character vector of length one. Link to the zip file containing the municipality inventory
#' @param path Character vector of length one. Destination of extracted xml file.
#' 
#' @return Character vector of length one. File path to the extracted XML file.
#' 
#' @export
#' 

download_municipality_inventory <- function(url = "https://www.bfs.admin.ch/bfsstatic/dam/assets/11467405/master",
                                            path = getwd()) {
  
  destfile <- file.path(tempdir(), "municipality_inventory.zip")
  
  curl::curl_download(url = url, destfile = destfile)
  
  file_list_zip <- unzip(zipfile = destfile,  list = TRUE)
  file_list_zip <- as_tibble(file_list_zip)
  file_list_zip <- add_column(file_list_zip, is_xml = grepl(".xml", file_list_zip$Name))
  file_list_zip_relevant <- filter(file_list_zip, is_xml == TRUE)
  
  unzip(zipfile = destfile, files = file_list_zip_relevant$Name, exdir = path, overwrite = FALSE)
  
  xml_file_path <- file.path(path, file_list_zip_relevant$Name)
  
  return(xml_file_path)
}
