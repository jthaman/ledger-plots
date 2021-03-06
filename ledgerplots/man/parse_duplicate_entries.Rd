% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ledger-functions.R
\name{parse_duplicate_entries}
\alias{parse_duplicate_entries}
\title{duplicate entries in case there are multiple matches}
\usage{
parse_duplicate_entries(data, re = "([0-9]+[.0-9]*)[ ]?([[:alpha:]]+)")
}
\arguments{
\item{data}{data.frame, output of the read.ledger}

\item{re}{regular expression matching "10 kg" like patterns}
}
\value{
data.frame in the simular format as read.ledger
}
\description{
a help function. Duplicates entries in a transactions
  data.frame. For instance trasaction with note
  "20 EUR ; 20l 25kg 10x" will be split onto tree transactions
  "20 EUR ; 20l", "20 EUR ; 25kg", "20 EUR ; 10x". In order to
  identify that the transaction is being duplicated an extra column
  to the data.frame is being added.
}
