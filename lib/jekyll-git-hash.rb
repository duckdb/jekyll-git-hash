# frozen_string_literal: true

# (The MIT License)
#
# Copyright (c) 2014-2023 Yegor Bugayenko
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the 'Software'), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Jekyll plugin for generating Git hash
#
# Place this file in the _plugins directory and
# use {{ site.data['hash'] }} in your Liquid templates
#
# Author: Yegor Bugayenko <yegor@tpc2.com>
# Source: http://github.com/yegor256/jekyll-git-hash
#
# Distributed under the MIT license
# Copyright Yegor Bugayenko, 2014

# Main Jekyll module
module Jekyll
  # Our class generator
  class GitHashGenerator < Generator
    priority :high
    safe true
    def generate(site)
      hash = `git rev-parse --short HEAD`.strip
      site.data['hash'] = hash
    end
  end
end