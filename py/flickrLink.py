import argparse
if __name__ == '__main__':

	parser = argparse.ArgumentParser()
	parser.add_argument('url', metavar='url', nargs='+', help='an integer for the accumulator')

	args = parser.parse_args()

	import urllib
	import re
	htmlBody = ''
	for image in args.url:
		f = urllib.urlopen(image)
		flickr = f.read()

		#big image
		reGroup = re.search('(\"h\"\:.*?displayUrl.*?url\"\:\")(.*?.jpg)', flickr)
		imgUrl = reGroup.group(2)
		bigImg = "https:"+imgUrl.replace('\\', '')

		#small image
		reGroup = re.search('(\"l\"\:.*?displayUrl.*?url\"\:\")(.*?.jpg)', flickr)
		imgUrl = reGroup.group(2)
		smallImg = "https:"+imgUrl.replace('\\', '')

		html = '<figure>\n\t<a href="{0}"><img src="{1}" alt="image"></a>\n</figure>\n\n'.format(bigImg, smallImg)
		htmlBody += html

	print htmlBody