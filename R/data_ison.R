# Marvel ####

#' Multilevel two-mode affiliation, signed one-mode networks of Marvel comic
#' book characters (Yüksel 2017)
#'
#' @description
#' This package includes two datasets related to the Marvel _comic book_ universe.
#' The first, `ison_marvel_teams`,  is a two-mode affiliation network of 53
#' Marvel comic book characters and their affiliations to 141 different teams.
#' This network includes only information about nodes' names and nodeset,
#' but additional nodal data can be taken from the other Marvel dataset here.
#'
#' The second network, `ison_marvel_relationships`, is a one-mode signed network
#' of friendships and enmities between the 53 Marvel comic book characters.
#' Friendships are indicated by a positive sign in the tie `sign` attribute,
#' whereas enmities are indicated by a negative sign in this edge attribute.
#' @details
#' Additional nodal variables have been coded and included by Dr Umut Yüksel:
#'
#' - **Gender**: binary character, 43 "Male" and 10 "Female"
#' - **PowerOrigin**: binary character, 2 "Alien", 1 "Cyborg", 5 "God/Eternal",
#' 22 "Human", 1 "Infection", 16 "Mutant", 5 "Radiation", 1 "Robot"
#' - **Appearances**: integer, in how many comic book issues they appeared in
#' - **Attractive**: binary integer, 41 1 (yes) and 12 0 (no)
#' - **Rich**: binary integer, 11 1 (yes) and 42 0 (no)
#' - **Intellect**: binary integer, 39 1 (yes) and 14 0 (no)
#' - **Omnilingual**: binary integer, 8 1 (yes) and 45 0 (no)
#' - **UnarmedCombat**: binary integer, 51 1 (yes) and 2 0 (no)
#' - **ArmedCombat**: binary integer, 25 1 (yes) and 28 0 (no)
#' @docType data
#' @keywords datasets
#' @name ison_marvel
#' @usage data(ison_marvel_teams)
#' @source Umut Yüksel, 31 March 2017
#' @format
#'   ```{r, echo = FALSE}
#'   ison_marvel_teams
#'   ```
"ison_marvel_teams"

#' @rdname ison_marvel
#' @usage data(ison_marvel_relationships)
#' @format
#'   ```{r, echo = FALSE}
#'   ison_marvel_relationships
#'   ```
"ison_marvel_relationships"

# Lord of the Rings ####

#' One-mode network of Lord of the Rings character interactions
#'
#' @description
#'   A network of 36 Lord of the Rings book characters and 66 interactional relationships.
#'   The ties are unweighted and concern only interaction.
#'   Interaction can be cooperative or conflictual.
#' @docType data
#' @keywords datasets
#' @name ison_lotr
#' @usage data(ison_lotr)
#' @format
#'   ```{r, echo = FALSE}
#'   ison_lotr
#'   ```
"ison_lotr"

# Projection ####

#' Two-mode projection examples (Hollway 2021)
#'
#' @description
#'  These datasets are for demonstration purposes and do not describe any real world network.
#'  All examples contain named nodes.
#' @docType data
#' @keywords datasets
#' @name ison_projection
#' @usage data(ison_mm)
#' @format
#'   ```{r, echo = FALSE}
#'   ison_mm
#'   ```
"ison_mm"

#' @rdname ison_projection
#' @usage data(ison_bm)
#' @format
#'   ```{r, echo = FALSE}
#'   ison_bm
#'   ```
"ison_bm"

#' @rdname ison_projection
#' @usage data(ison_mb)
#' @format
#'   ```{r, echo = FALSE}
#'   ison_mb
#'   ```
"ison_mb"

#' @rdname ison_projection
#' @usage data(ison_bb)
#' @format
#'   ```{r, echo = FALSE}
#'   ison_bb
#'   ```
"ison_bb"

# Algebra ####

#' Multiplex graph object of friends, social, and task ties (McFarland 2001)
#'
#' @description
#'  Multiplex graph object of friends, social, and task ties between 16 anonymous students.
#'  M182 was an honors algebra class where researchers
#'  collected friendship, social, and task ties between 16 students.
#'  The edge attribute `friends` contains friendship ties,
#'  where `2` = best friends, `1` = friend, and `0` is not a friend.
#'  `social` consists of social interactions per hour,
#'  and `tasks` consists of task interactions per hour.
#' @docType data
#' @keywords datasets
#' @name ison_algebra
#' @usage data(ison_algebra)
#' @references
#' McFarland, Daniel A. (2001) “Student Resistance.”
#' _American Journal of Sociology_ 107(3): 612-78.
#' \doi{10.1086/338779}.
#' @source See also `data(studentnets.M182, package = "NetData")`
#' Larger comprehensive data set publicly available, contact Daniel A. McFarland for details.
#' @format
#'   ```{r, echo = FALSE}
#'   ison_algebra
#'   ```
"ison_algebra"

# Adolescents ####

#' One-mode subset of the adolescent society network (Coleman 1961)
#'
#' @description
#'  One-mode subset of Coleman's adolescent society network (Coleman 1961),
#'  as used in Feld's (1991) "Why your friends have more friends than you do".
#'  Coleman collected data on friendships among students in 12 U.S. high schools.
#'  Feld explored a subset of 8 girls from one of these schools, "Marketville",
#'  and gave them fictitious names, which are retained here.
#' @docType data
#' @keywords datasets
#' @name ison_adolescents
#' @usage data(ison_adolescents)
#' @references
#'   Coleman, James S. 1961. _The Adolescent Society_.
#'   New York: Free Press.
#'
#'   Feld, Scott. 1991. “Why your friends have more friends than you do”
#'   _American Journal of Sociology_ 96(6): 1464-1477.
#'   \doi{10.1086/229693}.
#' @format
#'   ```{r, echo = FALSE}
#'   ison_adolescents
#'   ```
"ison_adolescents"

# Karateka ####

#' One-mode karateka network (Zachary 1977)
#'
#' @description
#'   The network was observed in a university Karate club in 1977.
#'   The network describes association patterns among 34 members
#'   and maps out allegiance patterns between members and either Mr. Hi,
#'   the instructor, or the John A. the club president
#'   after an argument about hiking the price for lessons.
#'   The allegiance of each node is listed in the `obc` argument
#'   which takes the value 1 if the individual sided with Mr. Hi after the fight
#'   and 2 if the individual sided with John A.
#' @docType data
#' @keywords datasets
#' @name ison_karateka
#' @usage data(ison_karateka)
#' @references
#'   Zachary, Wayne W. 1977. “An Information Flow Model for Conflict and Fission in Small Groups.”
#'   _Journal of Anthropological Research_ 33(4):452–73.
#'   \doi{10.1086/jar.33.4.3629752}.
#' @format
#'   ```{r, echo = FALSE}
#'   ison_karateka
#'   ```
"ison_karateka"

# Networkers ####

#' One-mode EIES dataset (Freeman and Freeman 1979)
#'
#' @description A directed, simple, named, weighted graph with 32 nodes and 440
#' edges. Nodes are academics and edges illustrate the communication patterns
#' on an Electronic Information Exchange System among them. Node attributes
#' include the number of citations (`Citations`) and the discipline of the
#' researchers (`Discipline`). Edge weights illustrate the number of emails
#' sent from one academic to another over the studied time period.
#' @docType data
#' @keywords datasets
#' @name ison_networkers
#' @usage data(ison_networkers)
#' @source networkdata package
#' @references
#' Freeman, Sue C. and Linton C. Freeman. 1979.
#' \emph{The networkers network: A study of the impact of a new communications medium on sociometric structure}.
#' Social Science Research Reports No 46. Irvine CA, University of California.
#'
#' Wasserman Stanley and Katherine Faust. 1994.
#' \emph{Social Network Analysis: Methods and Applications}.
#' Cambridge University Press, Cambridge.
#' @format
#'   ```{r, echo = FALSE}
#'   ison_networkers
#'   ```
"ison_networkers"

# Brandes ####

#' One-mode and two-mode centrality demonstration networks
#'
#' This network should solely be used
#' for demonstration purposes as it does not describe a real network.
#' @docType data
#' @keywords datasets
#' @name ison_brandes
#' @usage data(ison_brandes)
#' @format
#'   ```{r, echo = FALSE}
#'   ison_brandes
#'   ```
"ison_brandes"

#' @rdname ison_brandes
#' @usage data(ison_brandes2)
#' @format
#'   ```{r, echo = FALSE}
#'   ison_brandes2
#'   ```
"ison_brandes2"


# Southern Women ####

#' Two-mode southern women (Davis, Gardner and Gardner 1941)
#'
#' Two-mode network dataset collected by Davis, Gardner and Gardner (1941)
#' about the attendance pattern of women at informal social events
#' during a 9 month period. Events and women are named.
#' @docType data
#' @keywords datasets
#' @name ison_southern_women
#' @usage data(ison_southern_women)
#' @references
#'   Davis, Allison, Burleigh B. Gardner, and Mary R. Gardner. 1941.
#'   \emph{Deep South}.
#'   Chicago: University of Chicago Press.
#' @format
#'   ```{r, echo = FALSE}
#'   ison_southern_women
#'   ```
"ison_southern_women"
