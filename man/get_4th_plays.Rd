% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_game_data.R
\name{get_4th_plays}
\alias{get_4th_plays}
\title{Get 4th down plays from a game}
\usage{
get_4th_plays(gid)
}
\arguments{
\item{gid}{A game to get 4th down decisions of.}
}
\value{
Original data frame Data frame plus the following columns added:
\describe{
\item{desc}{Play description from ESPN.}
\item{type_text}{Play type text from ESPN.}
\item{index}{Index number of play from a given game. Useful for tracking plays (e.g. for 4th down bot).}
\item{The rest}{All the columns needed for \verb{add_4th_probs().}}
}
}
\description{
Get 4th down plays from a game.
}
\details{
Obtains a data frame that can be used with \code{add_4th_probs()}. The following columns
must be present:
\itemize{
\item{game_id : game ID in nflfastR format (eg '2020_20_TB_GB')}
}
}
\examples{
\donttest{
plays <- nfl4th::get_4th_plays('2020_20_TB_GB')

dplyr::glimpse(plays)
}
}
