+++
title = "Teach yourself with online materials"
template = "teach-yourself.html"

[extra]
sidebar_sections = ["contact_us", "research_scientists", "need_help"]

subtitle = """Use class and workshop materials on your own, or resources designed for you to teach yourself."""

color = "var(--warm-purple)"

## Materials from Classes and Workshops
[extra.materials]
title = "Materials from Classes and Workshops"
brief = "You can teach yourself with the materials for all of our regular classes and workshops."
list_heading = "Browse our classes and workshops:"

[[extra.materials.resources]]
link_text = "Data Science Programming"
link = "/dasl/classes-workshops/#data-science-programming"
description = "(e.g., Intro R, Intermediate Python, Intro to SQL)"

[[extra.materials.resources]]
link_text = "Scalable Computing"
link = "/dasl/classes-workshops/#scalable-computing"
description = "(e.g., Intro to Command Line, Cluster 101)"

[[extra.materials.resources]]
link_text = "Reproducible Research"
link = "/dasl/classes-workshops/#reproducible-research"
description = "(e.g., Intro to Git and GitHub)"

[[extra.materials.resources]]
link_text = "Data 4 All"
link = "/dasl/classes-workshops/#data-4-all"
description = "(e.g., Better Spreadsheets, Better Tables, Better Plots)"

# Teach Yourself Courses
[extra.teach_yourself]
title = "Teach Yourself Courses"
brief = "These courses are designed for self-study; there is no corresponding class or workshop. But you should still feel free to reach out to us with any questions!"

[[extra.teach_yourself.courses]]
title = "Data Snacks"
description = "Short tutorials for Python and R that run in your browser, covering cool packages that help you work with data effectively."

[[extra.teach_yourself.courses.cards]]
title = "Data Snacks"
brief = "Learn cool Python and R tricks for working with data."
tags = ["R", "Python", "Beginner-friendly"]
description = ""
img="/images/cookie-bite-solid-full.svg"

[[extra.teach_yourself.courses.cards.links]]
course_title = "Data Snacks"
course_link = "https://hutchdatascience.org/data_snacks/"

[[extra.teach_yourself.courses]]
title = "Workflows for Bioinformatics"
description = "Workflows help bioinformaticians analyze data efficiently on the cluster. They are better than bash scripts! Learn about Workflow Development Language (WDL), a better alternative to SnakeMake."


[[extra.teach_yourself.courses.cards]]
title = "Workflow Description Language (WDL) Materials"
brief = "Analyze data more efficiently with workflows"
tags = ["Workflows", "WDL", "Beginner-friendly"]
description = "We offer three self-directed courses on how to write workflows in Workflow Description Language (WDL). We prefer WDL to SnakeMake -- ask us why!"
img ="/images/wdl.Default.png"

[[extra.teach_yourself.courses.cards.links]]
course_title = "Developing WDL Workflows"
course_link = "https://hutchdatascience.org/Developing_WDL_Workflows/"

[[extra.teach_yourself.courses.cards.links]]
course_title = "WDL 102"
course_link = "https://en.wikipedia.org/wiki/Cat"

[[extra.teach_yourself.courses]]
title = "Code Review"
description = "Labs work better when labmates do code review. Code review is essentially proofreading each others’ code."

[[extra.teach_yourself.courses.cards]]
title = "Code Review for Labs"
brief = "Code review helps labs prevent errors together"
tags = ["Data Science Programming", "R", "Beginner-friendly"]
description = "Leading a lab with novice or experienced codewriters or users? Either way, check out our Code Review materials. We have tips on best practices for code review for labs of varying experience."
img = "/images/code-solid-full.svg"

[[extra.teach_yourself.courses.cards.links]]
course_title = "Code review for labs"
course_link = "https://hutchdatascience.org/code_review/"

[[extra.teach_yourself.courses]]
title = "NIH Data Sharing"
description = "NIH Wants you to share your data because it is better for science. But you need to keep some information confidential! What do you do?"

[[extra.teach_yourself.courses.cards]]
title = "NIH data sharing"
brief = "Learn how to comply with NIH data sharing policies"
tags = ["general research"]
description = "We have created a gudie that walks you through the process of complying with the NIH data sharing policy of 2023. We have also created a helper app."
img="/images/book-computer.svg"

[[extra.teach_yourself.courses.cards.links]]
course_title = "Guide"
course_link = "#"

[[extra.teach_yourself.courses.cards.links]]
course_title = "Helper app"
course_link = "#"

# Research Scientist courses
[extra.researchsci_courses]
title = "Course Materials from DaSL Research Scientists"
brief = "DaSL’s affiliate scientists create a variety of training materials geared more broadly towards the biomedical research community, and designed to allow you to teach yourself."

[[extra.researchsci_courses.topics]]
title = "AnVIL Computing Platform"
link = "https://anvilproject.org/learn"
description = "AnVIL is a computing platform that enables researchers to analyze controlled access data sets in a cloud computing environment. Our training materials will help you use AnVIL for data exploration and analysis on various bioinformatics topics. We also provide teaching support materials."

[[extra.researchsci_courses.topics]]
title = "DataTrail"
link = "https://www.datatrail.org/"
description = "The DataTrail courses are free and designed to help those with less familiarity with computers and technology become savvy data scientists. It includes the technological data science fundamentals but also information on how to network and other accompanying and necessary skills for jobs in data science."

[[extra.researchsci_courses.topics]]
title = "ITCR Training Network"
link = "https://www.itcrtraining.org/"
description = "The ITCR Training Network is an effort to catalyze cancer informatics research through training opportunities. It has online courses that are available for free and/or for certification, but also hosts synchronous training events and workshops related to data science in cancer research. Links to all the current ITCR courses can be found here."


[[extra.researchsci_courses.topics]]
title = "BioDIGS"
link = "https://biodigs.org/#home"
description = "The BioDIGS materials are described here in several lines of blurb.The activities in this guide are written for undergraduate students and beginning graduate students. Some sections require basic understanding of the R programming language, which is indicated at the beginning of the chapter."



#############
## Sidebar ##
#############

[extra.top_card]
title = "Not sure which class to take?"
text_md = "[Look at our overview here ! >>>](/classes-workshops/)"

[extra.link_card]
title = "Find help and community"
text_md = "OCDO manages other resources to find help"

[[extra.link_cards]]
title = "Learn to use Fred Hutch Resources"
url = ""
text_md = """Check out our communal knowledge on various computing- and data- related topics at Hutch at the Sciwiki."""

[[extra.link_cards]]
title = "Find Q&A and community data science at Hutch"
url = ""
text_md = """We have a community Slack channel for questions and answers, as well as some other channels where people share information and content about specific topics."""

[[extra.link_cards]]
title = "Get a 20 minute consult with DaSL on a specific problem"
url = ""
text_md = """If you need a little help troubleshooting, finding the right resources, or figuring out the right question to ask, try a Data House Call."""

+++