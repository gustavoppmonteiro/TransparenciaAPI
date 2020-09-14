\name{API_PBF}
\alias{API_PBF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
Baixa as informaçoes de beneficiários e valor do benefício de todos os municípios, em determinado mês.
}
\usage{
API_PBF(token, pasta, CODMES, CODANO)
}


\arguments{
  \item{token}{
chave de acesso do Portal da Transparência
}
 \item{pasta}{
pasta em que o arquivo final vai ser salva
}
 \item{CODMES}{
Número do mês
}
 \item{CODANO}{
Ano
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

# Não rodar
token <- "xxxxxxxxxxxxxxxxxxxxxxx"
pasta <- "C:/nome/da/pasta" # obs.: não termine com "/"
CODMES <- "01"

API_PBF(token, pasta, CODMES)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
