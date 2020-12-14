---
layout: default
title: "28: Refactoring Engine "
date: "2017-09-11T05:00:00-07:00"
permalink: /episodes/9d6eaee7/
---

# 28: Refactoring Engine 

### {{ page.date | date_to_string }}

<iframe frameBorder="0" height="200px" scrolling="no" seamless src="https://player.simplecast.com/942f3e25-a7d6-4dbf-8b62-3326253070ba" width="100%"></iframe>
<br/>
* Swift.org blog post on Swift Local Refactoring: https://swift.org/blog/swift-local-refactoring/
* Clang-based refactoring engine: http://lists.llvm.org/pipermail/cfe-dev/2017-June/054286.html
* Adding indexing support to Clangd: http://lists.llvm.org/pipermail/cfe-dev/2017-May/053869.html
* Small PR demonstrating implementing a refactoring action to simplify long number literal format:
    * https://github.com/apple/swift/pull/11711
    * SR-5746: https://bugs.swift.org/browse/SR-5746
* All Swift refactoring actions are defined in https://github.com/apple/swift/blob/master/include/swift/IDE/RefactoringKinds.def
* Ideas for potential refactoring transformations: https://bugs.swift.org/issues/?jql=labels%3DStarterProposal%20AND%20labels%3DRefactoring%20AND%20resolution%3DUnresolved

Leave a review on iTunes and join http://spectrum.chat/specfm/swift-unwrapped

Thanks to BuddyBuild for sponsoring this episode: https://www.buddybuild.com/?utm_source=podcast&utm_medium=banner&utm_campaign=swift_unwrapped&utm_term=swift%20unwrapped
