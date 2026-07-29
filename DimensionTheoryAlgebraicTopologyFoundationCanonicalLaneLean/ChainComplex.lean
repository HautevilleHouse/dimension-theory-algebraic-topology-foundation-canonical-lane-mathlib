import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure ChainComplexPackage where
  objects : Nat -> Type u
  differentials : (n : Nat) -> objects (n+1) → objects n
  differentialSquaredZero : Prop
  homologyGroupsDefined : Prop
  exactness : Prop

structure ChainComplexEvidence (C : ChainComplexPackage) where
  differentialSquaredZeroClosed : C.differentialSquaredZero
  homologyGroupsDefinedClosed : C.homologyGroupsDefined
  exactnessClosed : C.exactness

def ChainComplexClosed (C : ChainComplexPackage) : Prop :=
  C.differentialSquaredZero ∧ C.homologyGroupsDefined ∧ C.exactness

theorem chain_complex_closed_from_evidence (C : ChainComplexPackage) (E : ChainComplexEvidence C) : ChainComplexClosed C := by
  exact And.intro E.differentialSquaredZeroClosed (And.intro E.homologyGroupsDefinedClosed E.exactnessClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse