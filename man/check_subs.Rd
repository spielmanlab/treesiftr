% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_subsets.R
\name{check_subs}
\alias{check_subs}
\title{Generate list of character sets to visualize, removing any with NULL characters}
\usage{
check_subs(sample_df, phy_mat)
}
\arguments{
\item{sample_df}{Dataframe of start and stop vals for character set generation}

\item{phy_mat}{Name of the phylogenetic matrix from which character sets will be sampled}
}
\value{
df
}
\description{
Generate a dataframe of start and stop values. These will determine what character sets from the total phylogenetic matrix will appear in each visualization. Removes any sets with NULL characters, which cannot be used in phylogenetic estimation. Sources of NULLs may include typos, or two sequences being different lengths.
}
\examples{
data(bears)
sample_df <- generate_sliding(phy_mat = bears, start_char = 45, stop_char = 62, steps = 4)
sample_df <- check_subs(sample_df, phy_mat)
}
