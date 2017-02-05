###########################################################
########       Spotted Hyena Plasma Cortisol       ########
########                                           ########
########             By: Zach Laubach              ########
########          last updated: 5 Feb 2017         ########
###########################################################

### PURPOSE: This code is desingned to analyze cortisol data from plasma.

### Special thanks to all contributors and commentors on stackoverflow 
### and other open source communities for creative and informative coding
### solutions.


# Code Blocks
# 1: Configure Workspace
# 2: Set Working Directory
# 3: Import Data
# 4: Massage Data
# 5: Assess Controls 
# 6: 



###########################################################
####            1  Configure Workspace                 ####
###########################################################

### 1.1 clear global environment
rm(list = ls())


### 1.2 Require - load a packages  into a current R session
## a) Data Manipulation and Descriptive Stats Packages
require(dplyr)
require(plyr)
require(purrr)
require(readr)
require(reshape)
require(reshape2)
require(tidyr)
options(gsubfn.engine = "R") #fixes tcltk bug; run before require sqldf
require(sqldf)

## b) Graph Plotting and Visualization Packages
require(ggplot2)
require(sjPlot)
require(sciplot)
require(effects)
require(plotrix)
require(scatterplot3d)
#require(texi2dvi)
#require(stargazer)
#require(xtable)

## c) Modeling Packages
# Modeling Packages
require(lme4)
require(arm)
require(car)
require(lsmeans)
require(boot)
require(bbmle)


### 1.3 Get Version and Session Info
R.Version()
sessionInfo()    
# Ran with...
#R version 3.3.1 (2016-06-21)
#Platform: x86_64-apple-darwin13.4.0 (64-bit)
#Running under: OS X 10.12 (Sierra)

###########################################################
####            2  Set Working Directory               ####
###########################################################

### 2.1 Set a working directory
setwd("~/Git/fisi_lab/hy_cort")
