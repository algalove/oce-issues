all: 427A.out
%.out:%.R
	R --no-save < $< > $@
clean:
	-rm *.out *.png *~
view:
	open *.png

