---
layout: page
title: "28: Refactoring Engine "
permalink: /episodes/9d6eaee7/
---

# 28: Refactoring Engine 

* Swift.org blog post on Swift Local Refactoring: https://swift.org/blog/swift-local-refactoring/
* Clang-based refactoring engine: http://lists.llvm.org/pipermail/cfe-dev/2017-June/054286.html
* Adding indexing support to Clangd: http://lists.llvm.org/pipermail/cfe-dev/2017-May/053869.html
* Small PR demonstrating implementing a refactoring action to simplify long number literal format:
 01631c29.md 0168727e.md 040a84c3.md 074b618b.md 083dd5d3.md 0bd2405c.md 107053e7.md 115f3199.md 11b58ca9.md 1DMLbJg5.md 1f861221.md 1f9301c7.md 1ff40107.md 20d4b31e.md 22a6c652.md 22af29a8.md 22df931e.md 23334b91.md 23be3a4e.md 24e5304c.md 254085cb.md 259160c9.md 2b098627.md 2b182911.md 2cdb62f6.md 30f2577f.md 324c2e91.md 339bc516.md 35316396.md 3fb2a021.md 3fdcca35.md 409cbdc5.md 41e38050.md 4367aeeb.md 451cc858.md 4e7ad642.md 502c0857.md 5375fa65.md 5b33cc85.md 5ebe2061.md 60637761.md 620464c0.md 62272338.md 6d5d06fc.md 6d603539.md 6eeb2070.md 7748396d.md 77984302.md 791e3bc9.md 7e0227d3.md 8279a6e2.md 839af3db.md 852dd010.md 8ce32daf.md 8f07264c.md 901ba4e4.md 90f863bd.md 9337cd60.md 96773dee.md 96f9f099.md 983844da.md 99a0c58b.md 9d6eaee7.md DasaMAiV.md EDeUfIq2.md Gemfile Gemfile.lock LICENSE Makefile README.md _config.yml a8736bc8.md aC5JVWoo.md aef515ab.md b1715d76.md b452f159.md b850afa9.md c7b4b5ed.md c81902b1.md cef2e6bc.md d21a251a.md d4af5de6.md d6b421a4.md d725b7da.md d80e524d.md d98ccfc2.md de7f2c8e.md e3bbe72b.md e50ce5a7.md e682713a.md e6f9d8e6.md e7074e80.md f3cf9a35.md f57eb2a3.md fc6058df.md fdbc74ca.md fxMk4ipF.md img index.md scripts https://github.com/apple/swift/pull/11711
 01631c29.md 0168727e.md 040a84c3.md 074b618b.md 083dd5d3.md 0bd2405c.md 107053e7.md 115f3199.md 11b58ca9.md 1DMLbJg5.md 1f861221.md 1f9301c7.md 1ff40107.md 20d4b31e.md 22a6c652.md 22af29a8.md 22df931e.md 23334b91.md 23be3a4e.md 24e5304c.md 254085cb.md 259160c9.md 2b098627.md 2b182911.md 2cdb62f6.md 30f2577f.md 324c2e91.md 339bc516.md 35316396.md 3fb2a021.md 3fdcca35.md 409cbdc5.md 41e38050.md 4367aeeb.md 451cc858.md 4e7ad642.md 502c0857.md 5375fa65.md 5b33cc85.md 5ebe2061.md 60637761.md 620464c0.md 62272338.md 6d5d06fc.md 6d603539.md 6eeb2070.md 7748396d.md 77984302.md 791e3bc9.md 7e0227d3.md 8279a6e2.md 839af3db.md 852dd010.md 8ce32daf.md 8f07264c.md 901ba4e4.md 90f863bd.md 9337cd60.md 96773dee.md 96f9f099.md 983844da.md 99a0c58b.md 9d6eaee7.md DasaMAiV.md EDeUfIq2.md Gemfile Gemfile.lock LICENSE Makefile README.md _config.yml a8736bc8.md aC5JVWoo.md aef515ab.md b1715d76.md b452f159.md b850afa9.md c7b4b5ed.md c81902b1.md cef2e6bc.md d21a251a.md d4af5de6.md d6b421a4.md d725b7da.md d80e524d.md d98ccfc2.md de7f2c8e.md e3bbe72b.md e50ce5a7.md e682713a.md e6f9d8e6.md e7074e80.md f3cf9a35.md f57eb2a3.md fc6058df.md fdbc74ca.md fxMk4ipF.md img index.md scripts SR-5746: https://bugs.swift.org/browse/SR-5746
* All Swift refactoring actions are defined in https://github.com/apple/swift/blob/master/include/swift/IDE/RefactoringKinds.def
* Ideas for potential refactoring transformations: https://bugs.swift.org/issues/?jql=labels%3DStarterProposal%20AND%20labels%3DRefactoring%20AND%20resolution%3DUnresolved

Leave a review on iTunes and join http://spectrum.chat/specfm/swift-unwrapped

Thanks to BuddyBuild for sponsoring this episode: https://www.buddybuild.com/?utm_source=podcast&utm_medium=banner&utm_campaign=swift_unwrapped&utm_term=swift%20unwrapped
