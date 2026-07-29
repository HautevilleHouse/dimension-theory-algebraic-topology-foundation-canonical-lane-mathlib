import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure CWComplexPackage where
  skeletonSequence : Type u → Nat → Type u
  attachingMaps : Type v
  cellularHomology : Prop
  weakTopology : Prop
  homotopyGroups : Prop

structure CWComplexEvidence (C : CWComplexPackage) where
  cellularHomologyClosed : C.cellularHomology
  weakTopologyClosed : C.weakTopology
  homotopyGroupsClosed : C.homotopyGroups

def CWComplexClosed (C : CWComplexPackage) : Prop :=
  C.cellularHomology ∧ C.weakTopology ∧ C.homotopyGroups

theorem cw_complex_closed_from_evidence (C : CWComplexPackage)
    (E : CWComplexEvidence C) : CWComplexClosed C := by
  exact And.intro E.cellularHomologyClosed (And.intro E.weakTopologyClosed E.homotopyGroupsClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse