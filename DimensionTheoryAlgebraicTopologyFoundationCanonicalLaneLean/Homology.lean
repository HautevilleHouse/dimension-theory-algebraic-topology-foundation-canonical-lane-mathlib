import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure HomologyPackage where
  chainComplex : ChainComplexPackage
  homologyFunctors : (n : Nat) → Type u
  longExactSequence : Prop
  universalCoefficientTheorem : Prop

structure HomologyEvidence (H : HomologyPackage) where
  longExactSequenceClosed : H.longExactSequence
  universalCoefficientTheoremClosed : H.universalCoefficientTheorem

def HomologyClosed (H : HomologyPackage) : Prop :=
  H.longExactSequence ∧ H.universalCoefficientTheorem

theorem homology_closed_from_evidence (H : HomologyPackage) (E : HomologyEvidence H) : HomologyClosed H := by
  exact And.intro E.longExactSequenceClosed E.universalCoefficientTheoremClosed

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse