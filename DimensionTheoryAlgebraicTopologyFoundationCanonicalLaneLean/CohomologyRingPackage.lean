import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure CohomologyRingPackage (H : HomologyGroupsPackage S) where
  cupProduct : ℕ → ℕ → ℕ → Type u
  gradedCommutative : Prop
  associative : Prop
  unitElement : Prop

structure CohomologyRingEvidence {H : HomologyGroupsPackage S}
    (R : CohomologyRingPackage H) where
  gradedCommutativeClosed : R.gradedCommutative
  associativeClosed : R.associative
  unitElementClosed : R.unitElement

def CohomologyRingClosed {H : HomologyGroupsPackage S}
    (R : CohomologyRingPackage H) : Prop :=
  R.gradedCommutative ∧ R.associative ∧ R.unitElement

theorem cohomology_ring_closed_from_evidence {H : HomologyGroupsPackage S}
    (R : CohomologyRingPackage H) (E : CohomologyRingEvidence R) :
    CohomologyRingClosed R := by
  exact And.intro E.gradedCommutativeClosed
    (And.intro E.associativeClosed E.unitElementClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse