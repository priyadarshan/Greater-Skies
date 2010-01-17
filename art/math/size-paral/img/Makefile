
BASE =	paral-1.png paral-2.png paral-3.png paral-4.png paral-5.png \
		paral-6.png paral-7.png paral-8.png paral-9.png

DOETOE = paral-doetoe-1.png paral-doetoe-2.png paral-doetoe-3.png

JAIME = paral-jaime-1.png paral-jaime-2.png paral-jaime-3.png

all: $(BASE) $(DOETOE) $(JAIME)

BASEPDF = $(BASE:.png=.pdf)
$(BASE): $(BASEPDF)

DOETOEPDF = $(DOETOE:.png=.pdf)
$(DOETOE): $(DOETOEPDF)

JAIMEPDF = $(JAIME:.png=.pdf)
$(JAIME): $(JAIMEPDF)

$(BASEPDF):	paral.mp
	mptopdf $<

$(JAIMEPDF):	paral-jaime.mp
	mptopdf $<

$(DOETOEPDF):	paral-doetoe.mp
	mptopdf $<

%.png:	%.pdf
	convert -border 4x4 -bordercolor "#ffffff" -antialias -density 90 $< $@

clean:
	rm -f tmpgraph.* *.mpo *.mpx *.log *.1 mptrace.* *mpgraph*

realclean:	clean
	rm -f *~ *-?.pdf *.1 *.2 *.3 *.4 *.5 *.6 *.7 *.8 *.9

