a.out: test_ml.o main.m
	clang $^ -framework cocoa -L`ocamlopt -where` -lasmrun

test_ml.o: test_ml.ml
	ocamlopt -output-obj -o $@ $^

clean:
	rm -f test_ml.o main.o a.out

.PHONY: clean
