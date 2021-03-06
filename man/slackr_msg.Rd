% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/slackr.R
\name{slackr_msg}
\alias{slackr_msg}
\title{Sends a message to a slack channel.}
\usage{
slackr_msg(
  txt = "",
  channel = Sys.getenv("SLACK_CHANNEL"),
  username = Sys.getenv("SLACK_USERNAME"),
  icon_emoji = Sys.getenv("SLACK_ICON_EMOJI"),
  token = Sys.getenv("SLACK_TOKEN"),
  bot_user_oauth_token = Sys.getenv("SLACK_BOT_USER_OAUTH_TOKEN"),
  ...
)
}
\arguments{
\item{txt}{text message to send to Slack. If a character vector of length > 1
is passed in, they will be combined and separated by newlines.}

\item{channel}{which channel to post the message to (chr)}

\item{username}{what user should the bot be named as (chr)}

\item{icon_emoji}{what emoji to use (chr) \code{""} will mean use the default}

\item{token}{A Slack token (either a user token or a bot user token)}

\item{bot_user_oauth_token}{Deprecated. A Slack bot user OAuth token}

\item{...}{other arguments passed to the Slack API \code{chat.postMessage} call}
}
\value{
the response (invisibly)
}
\description{
Sends a message to a slack channel.
}
\note{
You need a \url{https://www.slack.com} account and will also need to
setup an API token \url{https://api.slack.com/}
Also, you can pass in \code{add_user=TRUE} as part of the \code{...}
parameters and the Slack API will post the message as your logged-in
user account (this will override anything set in \code{username})
}
\examples{
\dontrun{
slackr_setup()
slackr_msg("Hi")
}
}
\seealso{
\code{\link[=slackr_setup]{slackr_setup()}}, \code{\link[=slackr_bot]{slackr_bot()}}, \code{\link[=slackr_dev]{slackr_dev()}},
\code{\link[=slackr_save]{slackr_save()}}, \code{\link[=slackr_upload]{slackr_upload()}}
}
