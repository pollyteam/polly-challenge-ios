<p align="center">
  <img src="https://i.imgur.com/9HwWvWa.png" width="50%" height="50%" alt="Hi!"/>
</p>

## Introduction

Thanks for your interest in joining Polly! For the next step of the interview process, we'd like for you to participate in a small project. Your task is to implement the following design and replicate it as close as possible: [UI spec](https://i.imgur.com/WN2ZRKw.png).

## Specifications

☑️ Use `UICollectionView` not `UITableView`.  
☑️ Each section should be have its corners rounded to 12.0px.  
☑️ Each section should have a shadow with 5% opacity, (0, 4) offset, 10.0 radius, and #000000.  
☑️ The separator should be half of a pixel in height (based on device scale).   
☑️ The left & right padding of the section title should be 8px.  
☑️ Your implementation should handle certain edge cases including (variable number of users per section, and empty sections).  
☑️ A big part of this challenge is how well you can implement the UI details without being given the exact values of every inset, color, corner, etc. Try your best to precisely mimic the UI in the photo above.

## Notes

Please do **NOT** use Storyboard or .xib files. Instead, we'd like you to implement views programatically, and to use [SnapKit](http://snapkit.io) for laying out views. We've attached SnapKit as a pod inside the project. If you're not familar with pods, you can learn more [here](http://cocoapods.org).

No need to implement the invite friend functionality, add friend functionality, or deal with the navigation bar. All assets such as icons and fonts can be found in the Resources folder. The font is *"ProximaNova-Semibold.otf"*. 

Please timebox yourself to only **3-4 hours** on this project.

When you're done, please write a quick post-mortem on how you approached the problem, what tradeoffs you made, things we should look for, etc.
