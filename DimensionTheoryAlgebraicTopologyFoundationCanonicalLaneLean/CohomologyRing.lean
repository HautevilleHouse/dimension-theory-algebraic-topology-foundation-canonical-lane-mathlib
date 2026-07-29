import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure CohomologyRingPackage where
  space : Type u
  cohomologyGroups : Nat → Type v
  cupProduct : ∀ n m, cohomologyGroups n → cohomologyGroups m → cohomologyGroups (n + m)
  ringStructure : Prop
  poincareDuality : Prop
  kunnethFormula : Prop

structure CohomologyRingEvidence (C : CohomologyRingPackage) where
  ringStructureClosed : C.ringStructure
  poincareDualityClosed : C.poincareDuality
  kunnethFormulaClosed : C.kunnethFormula

def CohomologyRingClosed (C : CohomologyRingPackage) : Prop :=
  C.ringStructure ∧ C.poincareDuality ∧ C.kunnethFormula

theorem cohomology_ring_closed_from_evidence (C : CohomologyRingPackage)
    (E : CohomologyRingEvidence C) : CohomologyRingClosed C := by
  exact And.intro E.ringStructureClosed (And.intro E.poincareDualityClosed E.kunnethFormulaClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse