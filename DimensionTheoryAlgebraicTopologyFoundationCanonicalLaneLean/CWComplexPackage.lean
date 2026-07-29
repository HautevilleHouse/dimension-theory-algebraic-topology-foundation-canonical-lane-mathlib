import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure CWComplexPackage where
  skeletonSequence : ℕ → Type u
  attachingMaps : ∀ n, (Skeleton n → Skeleton (n+1)) → Prop
  weakTopology : Prop
  closureFinite : Prop
  dimensionWellDefined : Prop

structure CWComplexEvidence (C : CWComplexPackage) where
  weakTopologyClosed : C.weakTopology
  closureFiniteClosed : C.closureFinite
  dimensionWellDefinedClosed : C.dimensionWellDefined

def CWComplexClosed (C : CWComplexPackage) : Prop :=
  C.weakTopology ∧ C.closureFinite ∧ C.dimensionWellDefined

theorem cw_complex_closed_from_evidence (C : CWComplexPackage)
    (E : CWComplexEvidence C) : CWComplexClosed C := by
  exact And.intro E.weakTopologyClosed
    (And.intro E.closureFiniteClosed E.dimensionWellDefinedClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse