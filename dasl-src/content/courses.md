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
text_md = """We offer courses year-round. Here is the weekly schedule by year. For workshops by quarter, please refer to the quarter schedule below.

Confused about where to start? Take a look at the [Class Catalog](/classes-workshops/) to see how the courses are sequenced."""

columns = ["Quarter", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

[[extra.yeartable.quarters]]
quarter_md = "[Fall Quarter 2025](/courses/#season-fall-2025)"
row_md = [
  "[Learning Community](/community/) and Workshops",
  "[Intro to R](@/courses/intro-to-r.md)",
  "[Intro to Python](@/courses/intro-to-python.md)",
  "[Bash for Bioinformatics](@/courses/bash-for-bioinformatics.md)",
  "[Intro to SQL](@/courses/intro-to-sql.md)"
]

[[extra.yeartable.quarters]]
quarter_md = "[Winter Quarter 2026](/courses/#season-winter-2026)"
row_md = [
  "[Learning Community](/community/) and Workshops",
  "[Intermediate R](@/courses/intermediate-r.md)",
  "[Intermediate Python](@/courses/intermediate-python.md)",
  "[Intro to Python](@/courses/intro-to-python.md)",
  "[Intro to SQL](@/courses/intro-to-sql.md)"
]

[[extra.yeartable.quarters]]
quarter_md = "[Spring Quarter 2026](/courses/#season-spring-2026)"
row_md = [
  "[Learning Community](/community/) and Workshops",
  "[Bioconductor for Genomics](@/courses/bioconductor.md)",
  "[Machine Learning for Python](@/courses/machine-learning-python.md)",
  "[Intro to R](@/courses/intro-to-r.md)",
  "[Bash for Bioinformatics](@/courses/bash-for-bioinformatics.md)"
]

[[extra.yeartable.quarters]]
quarter_md = "[Summer Quarter 2026](/courses/#season-summer-2026)"
row_md = [
  "TBD",
  "",
  "",
  "",
  ""
]

[[extra.seasons]]
title = "Fall 2025"
anchor = "#fall"
brief = "Start your Fall off with our intro courses and workshops. Courses marked with an asterisk (*) have a prerequisite (see course page for more info)."
text_md = """### Data Science Programming

- [Intro to R](/courses/intro-to-r/): Oct 10 - Nov 12, 2025
- [Intro to Python](/courses/intro-to-python/): Oct 11 - Nov 13, 2025
- [Intro to SQL](/courses/intro-to-sql/): Oct 12 - Nov 14, 2025

### Scalable Computing Workshops

- [Intro to Command Line](/courses/intro-to-command-line/): Oct 10, 2025 (1.5 hour workshop)
- [Intro to FH Cluster Computing(*)](/courses/intro-fh-cluster): Oct 17, 2025 (1.5 hour workshop)
- [Bash for Bioinformatics(*)](/courses/bash-for-bioinformatics/): Oct 9 - Nov 6, 2025 (4 class course)

### Data 4 All Workshops

- [Better Plots](/courses/better-plots/)
"""

[[extra.seasons]]
title = "Winter 2026"
brief = "We continue our learning with Intermediate R and Python courses. Courses marked with an asterisk (*) have a prerequisite (see course page for more info)."
text_md = """### Data Science Programming Classes

- [Intermediate R(*)](/courses/intermediate-r/): Jan 20 - March 3, 2026
- [Intro to Python](/courses/intro-to-python/): Jan 22 - March 5, 2026
- [Intermediate Python(*)](/courses/intermediate-python/): Jan 21 - March 4, 2026
- [Intro to SQL](/courses/intro-to-sql/): Feb 6 - March 15, 2026

### Reproducible Research Workshops

- [Intro to Git and GitHub](/courses/intro-to-git/): Jan 20, 2026 (1.5 hour workshop)
- [Intermediate Git and GitHub(*)](/courses/intermediate-git/): Jan 30, 2026 (1.5 hour workshop)
- [Package Management for R and Python(*)](/courses/package-management/): Feb 23, 2026 (1.5 hour workshop)
- [Making Code Ready for Publication(*)](/courses/making-code-ready/): March 9, 2026 (1.5 hour workshop)

### Data 4 All Workshops

- [Better Spreadsheets](/courses/better-spreadsheets/): Feb 20, 2026"""

[[extra.seasons]]
title = "Spring 2026"
brief = "We finish our R and Python sequences with Bioconductor for Genomics, and Machine Learning for Python. Classes marked with an asterisk (*) have a prerequisite (see course page for more info)."
text_md = """### Data Science Programming Classes and Workshops

- [Bioconductor for Genomics(*)](/courses/bioconductor/) April 28 - June 2, 2026
- [Machine Learning for Python(*)](/courses/machine-learning-python/): Apr 29 - June 3, 2026
- [Intro to R](/courses/intro-to-r/):  April 30 - June 4, 2026


### Scalable Computing Workshops

- [Intro to Command Line](/courses/intro-to-command-line/): May 1, 2026 (1.5 hour workshop)
- [Intro to FH Cluster computing(*)](/courses/intro-fh-cluster): May 8, 2026 (1.5 hour workshop)
- [Bash for Bioinformatics(*)](/courses/bash-for-bioinformatics/): May 15 - June 5, 2026 (4 class course)

### Data 4 All Workshops

- [Better Tables](/courses/better-tables/): Apirl 27, May 4, 2026 (2-part workshop)
"""


[[extra.seasons]]
title = "Summer 2026"
brief = "Summer offerings this year are restricted to our four workshops in Reproducible Research.  Courses marked with an asterisk (*) have a prerequisite."
text_md = """### Reproducible Research

- [Intro to Git and GitHub](/courses/intro-to-git/): June 20, 2026 (1.5 hour workshop)
- [Intermediate Git and GitHub(*)](/courses/intermediate-git/): June 27, 2026 (1.5 hour workshop)
- [Package Management for R and Python(*)](/courses/package-management/)
- [Making Code Ready for Publication(*)](/courses/making-code-ready/)
"""


#############
## Sidebar ##
#############

[extra.top_card]
title = "Not sure which class to take?"
text_md = "[Look at our overview here ! >>>](/classes-workshops/)"

+++
