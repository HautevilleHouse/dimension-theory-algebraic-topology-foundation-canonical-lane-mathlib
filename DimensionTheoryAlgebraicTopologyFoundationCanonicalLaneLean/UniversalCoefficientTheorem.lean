import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundation

structure UniversalCoefficientTheorem where
  chainComplex : ChainComplex
  coefficientGroup : Type u
  splitExactSequence : Prop
  torsionPart : Prop
  splitExactSequenceTerm : splitExactSequence
  torsionPartTerm : torsionPart

structure UniversalCoefficientEvidence (U : UniversalCoefficientTheorem) where
  splitExactSequenceClosed : U.splitExactSequence
  torsionPartClosed : U.torsionPart

def UniversalCoefficientClosed (U : UniversalCoefficientTheorem) : Prop :=
  U.splitExactSequence ∧ U.torsionPart

theorem universal_coefficient_closed_from_evidence
    (U : UniversalCoefficientTheorem) (E : UniversalCoefficientEvidence U) :
    UniversalCoefficientClosed U := by
  exact And.intro E.splitExactSequenceClosed E.torsionPartClosed

end HautevilleHouse.DimensionTheoryAlgebraicTopologyFoundation
end HautevilleHouse