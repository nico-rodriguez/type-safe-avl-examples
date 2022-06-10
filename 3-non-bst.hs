{-# LANGUAGE DataKinds #-}

module NonBST where

import Data.Proxy (Proxy (Proxy))
import Data.Tree.BST.FullExtern (mkBST)
import Data.Tree.ITree (ITree (EmptyITree, ForkITree))
import Data.Tree.Node (mkNode)

-- | Proxies for the node keys
p0 = Proxy :: Proxy 0
p1 = Proxy :: Proxy 1
p2 = Proxy :: Proxy 2

tree =
  ForkITree
    (ForkITree EmptyITree (mkNode p1 True) EmptyITree)
    (mkNode p0 'a')
    (ForkITree EmptyITree (mkNode p2 ['a', 'b']) EmptyITree)

nonBST = mkBST tree
