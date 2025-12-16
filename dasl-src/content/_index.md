+++
# Any variable name that ends with _md means that you can write markdown
# within that string, and it will be rendered appropriately.

template = "index.html"

###############
## Main Body ##
###############

[extra]
sidebar_sections = ["top_card", "need_help"]

hero_title = "Welcome to the Data Science Lab"

hero_subtitle = """
The home of Training and Community efforts from the Fred Hutch OCDO"""

main_title = """We offer training for members of the Fred Hutch Cancer Consortium"""

main_text_md = """The Fred Hutch Data Science Lab (DaSL) is a collaborative effort between a variety of experts in biomedical data science training and education and the Office of the Chief Data Officer ([OCDO](https://ocdo.fredhutch.org)) at Fred Hutch. We jointly release a variety of training, education, software and tooling that supports data science education in a number of scientific areas that are broadly applicable across the world. These resources are supplemented and focused on Fred Hutch by the [OCDO Training & Community](https://ocdo.fredhutch.org/training.html) group."""

[[extra.cards]]
title = "Explore our classes and workshops"
text = """Explore classes and workshops taught by instructors here at Hutch. Most classes are hybrid in-person and remote."""
img = "images/class-group-svgrepo-com.svg"
underline_color = "bright-blue"
url = "/courses/"

[[extra.cards]]
title = "Find a community to learn or work with"
text = """Join a weekly informal coworking session so you don’t have to data science alone."""
img = "images/learning-comm.png"
underline_color = "vivid-yellow"
url = "/community/"

[[extra.cards]]
title = "Join our Mailing List"
text = """Keep up to date with courses, workshops, and other fun stuff."""
img = "images/envelope-open-regular-full.svg"
underline_color = "dark-navy"
url = "/connect/"


[[extra.cards]]
title = "Teach Yourself"
text = """All our class materials are freely available online, as are our courses and content designed for you to teach yourself."""
img = "images/book-computer.svg"
underline_color = "warm-purple"
url = "/teach-yourself"

#############
## Sidebar ##
#############

[extra.top_card]
title = "Not sure which class to take?"
text_md = "[Look at our overview here ! >>>](@/classes-workshops.md)"

[extra.image_card]
title = "Did you know?"
text_md = """The {janitor} R package makes data analysis with cross-tables easy.
**Check out a 5 minute example** of frosted fun with cereal data."""
image = "images/clean.jpg"

[extra.link_card]
title = "Find help and community"

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

# Who are we?

We are part of the Office of the Chief Data Officer (OCDO) at Fred Hutch. We offer hands-on help to anyone in the Fred Hutch, UW, or Seattle Children’s community. If you’re not a member of those communities, **email us anyway** and we’ll see if we can help you out.

[Read more about us >>](https://ocdo.fredhutch.org)
