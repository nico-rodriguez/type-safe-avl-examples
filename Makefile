GHC = ghc
# GHCFLAGS = 
OBJS = *.o
INTERFACES = *.hi

1-types: 1-types.hs
	$(GHC) $(GHCFLAGS) 1-types.hs

2-lookup-not-found: $(DEPS) 2-lookup-not-found.hs
	$(GHC) $(GHCFLAGS) 2-lookup-not-found.hs

3-non-bst: $(DEPS) 3-non-bst.hs
	$(GHC) $(GHCFLAGS) 3-non-bst.hs

4-unbalanced: $(DEPS) 4-unbalanced.hs
	$(GHC) $(GHCFLAGS) 4-unbalanced.hs

5-non-bst-unbalanced: $(DEPS) 5-non-bst-unbalanced.hs
	$(GHC) $(GHCFLAGS) 5-non-bst-unbalanced.hs

clean:
	rm -f $(INTERFACES) $(OBJS)