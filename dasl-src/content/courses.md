+++
title = "Class Schedule"
template = "class-schedule.html"

[extra]
sidebar_sections = ["top_card", "contact_us", "need_help"]

subtitle = """Schedule by Quarter"""

color = "var(--bright-blue)"

####################
## class schedule ##
####################

[extra.yeartable]
title = """Year Schedule"""
text_md = """We offer courses year-round, and below is our the weekly schedule by year.

Confused about where to start? Take a look at the [Class Catalog](/dasl/classes-workshops/) to see how the courses are sequenced.

We encourage students to take two classes with us to be eligible for our 1:1 mentorship program for our [Summer Capstone Project](/dasl/summer-capstone-project/) in Summer 2027. 
"""

columns = ["Quarter", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

[[extra.yeartable.quarters]]
quarter_md = "[Fall Quarter 2026](/dasl/courses/#season-fall-2026)"
row_md = [
  "[Intro to R](@/courses/intro-to-r.md)",
  "[Bash for Bioinformatics](@/courses/bash-for-bioinformatics.md)",
  "[Intro to Python](@/courses/intro-to-python.md)",
  "[Intro to SQL](@/courses/intro-to-sql.md)",
  ""
]

[[extra.yeartable.quarters]]
quarter_md = "[Winter Quarter 2027](/dasl/courses/#season-winter-2027)"
row_md = [
  "[Intermediate R](@/courses/intermediate-r.md)",
  "[Bioconductor for Genomics](@/courses/bioconductor.md)",
  "[Intermediate Python](@/courses/intermediate-python.md)",
  "[Intro to Python](@/courses/intro-to-python.md)",
  "Reproducible Research Workshops"
]

[[extra.yeartable.quarters]]
quarter_md = "[Spring Quarter 2027](/dasl/courses/#season-spring-2027)"
row_md = [
  "New Course: Leveraging AI in Data Science",
  "[Intro to R](@/courses/intro-to-r.md)",
  "[Machine Learning for Python](@/courses/machine-learning-python.md)",
  "TBD",
  "Scalable Computing Workshops"
]


[[extra.seasons]]
title = "Fall 2026"
anchor = "#fall"
brief = "Start your Fall off with our intro courses and workshops. Courses marked with an asterisk (*) have a prerequisite (see course page for more info)."
text_md = """### Data Science Programming

- [Intro to R](/dasl/courses/intro-to-r/): Sept 21 - Nov 2, 2026
- [Intro to Python](/dasl/courses/intro-to-python/): Sept 23 - Nov 4, 2026
- [Intro to SQL](/dasl/courses/intro-to-sql/): Oct 8 - Nov 5, 2026

### Scalable Computing Workshops

- [Intro to Command Line](/dasl/courses/intro-to-command-line/): Sept 22, 2026 (1.5 hour workshop)
- [Intro to FH Cluster Computing(*)](/dasl/courses/intro-fh-cluster): Sept 29, 2026 (1.5 hour workshop)
- [Bash for Bioinformatics(*)](/dasl/courses/bash-for-bioinformatics/): Oct 6 - Nov 3, 2026 (4 class course)

### Data 4 All Workshops

- [Better Plots](/dasl/courses/better-plots/): Oct 1, 2026 (1.5 hour workshop)
"""

[[extra.seasons]]
title = "Winter 2027"
brief = "We continue our learning with Intermediate R and Python courses. Courses marked with an asterisk (*) have a prerequisite (see course page for more info)."
text_md = """### Data Science Programming Classes

- [Intermediate R(*)](/dasl/courses/intermediate-r/): Jan 25 - March 8, 2027
- [Intro to Python](/dasl/courses/intro-to-python/): Jan 26 - March 9, 2027
- [Intermediate Python(*)](/dasl/courses/intermediate-python/): Jan 27 - March 10, 2027
- [Bioconductor for Genomics(*)](/dasl/courses/bioconductor/) Jan 28 - March 11, 2027

### Data 4 All Workshops

- [Better Spreadsheets](/dasl/courses/better-spreadsheets/): Jan 29, 2027

### Reproducible Research Workshops

- [Intro to Git and GitHub](/dasl/courses/intro-to-git/): Feb 5, 2027 (1.5 hour workshop)
- [Intermediate Git and GitHub(*)](/dasl/courses/intermediate-git/): Feb 12, 2027 (1.5 hour workshop)
- [Making Code Ready for Publication(*)](/dasl/courses/making-code-ready/): Feb 26, 2027 (1.5 hour workshop)
- [Package Management for R and Python(*)](/dasl/courses/package-management/): March 5, 2027 (1.5 hour workshop)
"""


[[extra.seasons]]
title = "Spring 2027"
brief = "We finish our R and Python sequences with advanced use cases. Classes marked with an asterisk (*) have a prerequisite (see course page for more info)."
text_md = """### Data Science Programming Classes and Workshops

- New Course: Leveraging AI for Data Science(*) April 19 - May 24, 2027
- [Intro to R](/dasl/courses/intro-to-r/):  April 20 - May 25, 2027
- [Machine Learning for Python(*)](/dasl/courses/machine-learning-python/): April 21 - May 26, 2027
- TBD: April 22 - May 27, 2027


### Data 4 All Workshops

- [Better Tables](/dasl/courses/better-tables/): April 30, May 7, 2027 (2-part workshop)

### Scalable Computing Workshops

- [Intro to Command Line](/dasl/courses/intro-to-command-line/): May 7, 2027 (1.5 hour workshop)
- [Intro to FH Cluster computing(*)](/dasl/courses/intro-fh-cluster): May 14, 2027 (1.5 hour workshop)

"""



#############
## Sidebar ##
#############

[extra.top_card]
title = "Not sure which class to take?"
text_md = "[Look at our overview here ! >>>](/dasl/classes-workshops/)"

+++
