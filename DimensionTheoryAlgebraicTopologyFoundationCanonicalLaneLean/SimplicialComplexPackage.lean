import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure SimplicialComplexPackage where
  vertexSet : Type u
  simplexFamily : Set (Finset vertexSet)
  closureUnderSubsets : Prop
  finiteDimensional : Prop
  pureSimplicial : Prop

structure SimplicialComplexEvidence (S : SimplicialComplexPackage) where
  closureUnderSubsetsClosed : S.closureUnderSubsets
  finiteDimensionalClosed : S.finiteDimensional
  pureSimplicialClosed : S.pureSimplicial

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.closureUnderSubsets ∧ S.finiteDimensional ∧ S.pureSimplicial

theorem simplicial_complex_closed_from_evidence (S : SimplicialComplexPackage)
    (E : SimplicialComplexEvidence S) : SimplicialComplexClosed S := by
  exact And.intro E.closureUnderSubsetsClosed
    (And.intro E.finiteDimensionalClosed E.pureSimplicialClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse