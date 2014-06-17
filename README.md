mediaperformance
================

Testing grouped vs ungrouped media queries performance

TL;DR: from a performance point of view, it doesn’t matter grouping media queries or not in webkit

For my personal CSS workflow I really prefer having related properties and media queries together, explained in next gist:

https://gist.github.com/3oheme/5006867#file-gistfile1-css

I wanted to see if there is any performance penalty using this approach, so I did a small test:

* Wrote a small script to generate an HTML with 50000 css properties
* Downloaded wkhtmltopdf to render HTML to PDF
* And use time to get how long does it take to render
* For grouped I got: 0m1.266s, and for ungroup: 0m1.249s — So actually they are pretty close :-)

http://3oheme.tumblr.com/post/43656281654/testing-grouped-vs-ungrouped-media-queries-performance
