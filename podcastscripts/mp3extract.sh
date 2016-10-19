#! /bin/bash

wget -O /tmp/rss.xml https://vimeo.com/curreycreekchurch/videos/rss

latestxmllink=$(python -c 'from xml.dom import minidom;
xmldoc = minidom.parse("/tmp/rss.xml")
itemlist = xmldoc.getElementsByTagName("link")
url = str(itemlist[2].firstChild.nodeValue)
print 'url'')

latestxmltitle=$(python -c 'from xml.dom import minidom;
xmldoc = minidom.parse("/tmp/rss.xml")
itemlist = xmldoc.getElementsByTagName("title")
url = str(itemlist[2].firstChild.nodeValue)
print 'url'')

latestxmlpubDate=$(python -c 'from xml.dom import minidom;
xmldoc = minidom.parse("/tmp/rss.xml")
itemlist = xmldoc.getElementsByTagName("pubdate")
url = str(itemlist[2].firstChild.nodeValue)
print 'url'')

echo beginning
echo "xmllink is: "$latestxmllink" title is: "$latestxmltitle" pubDate is: "$latestxmlpubDate""
echo end

#./youtube-dl --format http-360p --extract-audio --audio-format mp3 "$xmllink"
