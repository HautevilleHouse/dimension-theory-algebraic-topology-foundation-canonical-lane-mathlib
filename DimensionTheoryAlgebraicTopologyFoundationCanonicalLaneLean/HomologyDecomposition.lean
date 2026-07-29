import canonicalLaneMathlib.AdmissibleClass
import DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean.DimensionObjects

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure HomologyDecompositionPackage (O : DimensionAdmittedObject) where
  chainComplexConstructed : Prop
  homologyGroupsComputed : Prop
  bettiNumbersDerived : Prop
  eulerCharacteristicComputed : Prop
  decompositionIntoSpheres : Prop

structure HomologyDecompositionEvidence {O : DimensionAdmittedObject} (H : HomologyDecompositionPackage O) where
  chainComplexConstructedClosed : H.chainComplexConstructed
  homologyGroupsComputedClosed : H.homologyGroupsComputed
  bettiNumbersDerivedClosed : H.bettiNumbersDerived
  eulerCharacteristicComputedClosed : H.eulerCharacteristicComputed
  decompositionIntoSpheresClosed : H.decompositionIntoSpheres

def HomologyDecompositionClosed {O : DimensionAdmittedObject} (H : HomologyDecompositionPackage O) : Prop :=
  H.chainComplexConstructed ∧ H.homologyGroupsComputed ∧
  H.bettiNumbersDerived ∧ H.eulerCharacteristicComputed ∧
  H.decompositionIntoSpheres

theorem homology_decomposition_closed_from_evidence
    {O : DimensionAdmittedObject} (H : HomologyDecompositionPackage O)
    (E : HomologyDecompositionEvidence H) : HomologyDecompositionClosed H := by
  exact And.intro E.chainComplexConstructedClosed
    (And.intro E.homologyGroupsComputedClosed
      (And.intro E.bettiNumbersDerivedClosed
        (And.intro E.eulerCharacteristicComputedClosed
          E.decompositionIntoSpheresClosed)))

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse
