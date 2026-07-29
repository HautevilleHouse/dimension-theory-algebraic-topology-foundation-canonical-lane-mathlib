import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure CohomologyPackage where
  cochainComplex : ChainComplexPackage
  cupProduct : Prop
  poincareDuality : Prop
  kunnethFormula : Prop

structure CohomologyEvidence (H : CohomologyPackage) where
  cupProductClosed : H.cupProduct
  poincareDualityClosed : H.poincareDuality
  kunnethFormulaClosed : H.kunnethFormula

def CohomologyClosed (H : CohomologyPackage) : Prop :=
  H.cupProduct ∧ H.poincareDuality ∧ H.kunnethFormula

theorem cohomology_closed_from_evidence (H : CohomologyPackage) (E : CohomologyEvidence H) : CohomologyClosed H := by
  exact And.intro E.cupProductClosed (And.intro E.poincareDualityClosed E.kunnethFormulaClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse