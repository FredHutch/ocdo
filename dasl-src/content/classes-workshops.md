+++
title = "Class Catalog"
template = "classes-workshops.html"

[extra]
sidebar_sections = ["top_card","contact_us", "need_help"]

subtitle = "Learn to code, access the cluster, work better with your colleagues, or tell stories with plots and spreadsheets"

intro = """You can sign up for a class or workshop if you are affiliated with a Cancer Consortium institution (Fred Hutch, UW, or SCH). **All class and workshop materials are available online.** Classes with asterisks (*) have a prerequisite, offered here.

**You are welcome to work through them yourself, but you can only get a badge if you sign up for the class.**"""

color = "var(--bright-blue)"

## Sections

[[extra.courses]]
title = "Data 4 All"
description = "No matter who you are, improve your skills at working with data and communicating with data. These workshops are designed to be tool-agnostic, and are discussion oriented. No prerequisites for these workshops."

[[extra.courses.cards]]
title = "Data 4 All Workshops"
brief = "Get better communicating with plots, spreadsheets, and tables"
tags = ["Reproducible Research", "Workshops", "Beginner-friendly"]
description = ""
img = "/images/chart-column-solid-full.svg"
img_alt = "replace me"

[[extra.courses.cards.links]]
course_title = "Better Plots"
course_link = "/courses/better-plots/"
offered = "(offered in fall)"

[[extra.courses.cards.links]]
course_title = "Better Spreadsheets"
course_link = "/courses/better-spreadsheets/"
offered = "(offered in winter)"

[[extra.courses.cards.links]]
course_title = "Better Tables"
course_link = "/courses/better-tables/"
offered = "(offered in spring)"


[[extra.courses]]
title = "Data Science Programming"
description = "Learn to load, clean, and visualize data in R, Python, and SQL. Classes with prerequisites are marked with a (*)"

[[extra.courses.cards]]
title = "R classes"
brief = "Learn the fundamentals of data analysis with R"
tags = ["Data Science Programming", "R", "Beginner-friendly"]
description = """"""
img = "/images/r-project-brands-solid-full.svg"
img_alt = "R Logo"

[[extra.courses.cards.links]]
course_title = "Intro to R"
course_link = "/courses/intro-to-r/"
offered = "(offered fall and spring)"

[[extra.courses.cards.links]]
course_title = "Intermediate R (*)"
course_link = "/courses/intermediate-r/"
offered = "(offered fall and winter)"

[[extra.courses.cards.links]]
course_title = "Bioconductor for Genomics (*)"
course_link = "/courses/bioconductor/"
offered = "(offered spring)"
external = true

[[extra.courses.cards]]
title = "Python classes"
brief = "Learn the fundamentals of data analysis with Python."
tags = ["Data Science Programming", "any language", "Beginner-friendly"]
description = ""
img = "/images/python-brands-solid-full.svg"
img_alt = "Python Logo"

[[extra.courses.cards.links]]
course_title = "Intro to Python"
course_link = "/courses/intro-to-python/"
offered = "(offered fall and winter)"

[[extra.courses.cards.links]]
course_title = "Intermediate Python (*)"
course_link = "/courses/intermediate-python/"
offered = "(offered winter)"

[[extra.courses.cards.links]]
course_title = "Machine Learning for Python (*)"
course_link = "/courses/machine-learning-python/"
offered = "(offered spring)"

[[extra.courses.cards]]
title = "Database Programming"
brief = "Learn to query and retrieva data from database systems."
tags = ["Data Science Programming", "SQL", "Beginner-friendly"]
description = ""
img = "/images/database-solid-full.svg"
img_alt = "database icon"

[[extra.courses.cards.links]]
course_title = "Intro to SQL"
course_link = "/courses/intro-to-sql/"
offered = "(offered fall and winter)"


[[extra.courses]]
title = "Scalable Computing"
description = "Learn how to use Fred Hutch’s scientific computing resources so you can analyze large data sets or do computing more efficiently. Workshops and classes with prerequisites are indicated with a (*)"

[[extra.courses.cards]]
title = "Using the command line and scientific computing cluster"
brief = "Learn to use the cluster for more efficient data analysis"
tags = ["Scalable Computing", "Beginner-friendly"]
description = ""
img = "/images/circle-nodes-solid-full.svg"
img_alt = "replace me"

[[extra.courses.cards.links]]
course_title = "Intro to command line"
course_link = "/courses/intro-to-command-line/"
offered = "(offered fall and summer)"

[[extra.courses.cards.links]]
course_title = "Intro to FH Cluster Computing (*)"
course_link = "/courses/intro-fh-cluster/"
offered = "(offered fall and spring)"

[[extra.courses.cards.links]]
course_title = "Bash for Bioinformatics (*)"
course_link = "/courses/bash-for-bioinformatics/"
offered = "(offered fall and spring)"

[[extra.courses]]
title = "Reproducible Research"
description = "Learn best practices for reproducible research to make your work transparent and reusable by your labmates, your PI, your own future self, and the scientific community. Workshops with prerequisites are marked with a (*)"

[[extra.courses.cards]]
title = "Using Git and GitHub for Collaboration and Reproducibility"
brief = "Leverage the power of Git and GitHub for Scientific Collaboration, Communication, and Reproducible Research"
tags = ["Reproducible Research", "Workshops", "Beginner-friendly"]
description = ""
img = "/images/github-brands-solid-full.svg"
img_alt = "GitHub Logo"

[[extra.courses.cards.links]]
course_title = "Intro to Git and GitHub"
course_link = "/courses/intro-to-git/"
offered = "(offered in winter and summer)"

[[extra.courses.cards.links]]
course_title = "Intermediate Git and GitHub (*)"
course_link = "/courses/intermediate-git/"
offered = "(offered in winter and summer)"

[[extra.courses.cards.links]]
course_title = "Package Management for R and Python (*)"
course_link = "/courses/package-management/"
offered = "(offered in winter and summer)"

[[extra.courses.cards.links]]
course_title = "Making Code Ready for Publication (*)"
course_link = "/courses/making-code-ready/"
offered = "(offered in winter and summer)"

#############
## Sidebar ##
#############

[extra.top_card]
title = "Wondering if the classes fit in your schedule?"
text_md = "[Look at the class schedule here ! >>>](/dasl/courses/)"

[extra.image_card]
title = "Did you know?"
text_md = """The {janitor} R package makes data analysis with cross-tables easy.
**Check out a 5 minute example** of frosted fun with cereal data."""
image = "images/clean.jpg"

+++
