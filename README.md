# How to Train Your Classifier

[Dan Villarreal](https://github.com/djvill), [Jennifer Hay](https://github.com/jenniferhay), [Lynn Clark](https://www.canterbury.ac.nz/arts/contact-us/people/lynn-clark.html), and [Kevin Watson](https://github.com/watsonkd)

New Zealand Institute of Language, Brain and Behaviour

This repository hosts a guide that walks readers through the process of training a **random-forest classifier for automated coding of sociophonetic variation**, using the statistical computing language R and the packages `ranger` and `caret`.
This guide is intended to be a companion to our [2020 _Laboratory Phonology_ article](https://www.journal-labphon.org/articles/10.5334/labphon.216/) "From categories to gradience: Auto-coding sociophonetic variation with random forests", and it recreates the classifier of Southland English non-prevocalic /r/ discussed in the article.
The guide is presented in both [html](https://nzilbb.github.io/How-to-Train-Your-Classifier/How_to_Train_Your_Classifier.html) and [R Markdown](How_to_Train_Your_Classifier.Rmd) formats;
by consulting the latter, readers can run the code on their own systems to recreate the /r/ classifier.
The classifier is available as [`LabPhonClassifier.Rds`](LabPhonClassifier.Rds), which can be read into R using the function `readRDS()`.

Anonymized data is available for both the [non-prevocalic /r/](Data/RClassifierData_03July2019.Rds) and [word-medial intervocalic /t/](Data/TClassifierData_14Nov2019.Rds) classifiers reported in the paper.
