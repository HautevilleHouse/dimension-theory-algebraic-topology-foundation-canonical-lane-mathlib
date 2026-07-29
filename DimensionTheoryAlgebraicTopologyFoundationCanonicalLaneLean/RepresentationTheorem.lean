import canonicalLaneMathlib.AdmissibleClass
import DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean.DimensionObjects

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure RepresentationTheoremPackage (O : DimensionAdmittedObject) where
  cellularHomologyComputed : Prop
  cohomologyRingComputed : Prop
  fundamentalClassConstructed : Prop
  poincareDualityEstablished : Prop
  sphereRepresentationDerived : Prop

structure RepresentationTheoremEvidence {O : DimensionAdmittedObject} (R : RepresentationTheoremPackage O) where
  cellularHomologyComputedClosed : R.cellularHomologyComputed
  cohomologyRingComputedClosed : R.cohomologyRingComputed
  fundamentalClassConstructedClosed : R.fundamentalClassConstructed
  poincareDualityEstablishedClosed : R.poincareDualityEstablished
  sphereRepresentationDerivedClosed : R.sphereRepresentationDerived

def RepresentationTheoremClosed {O : DimensionAdmittedObject} (R : RepresentationTheoremPackage O) : Prop :=
  R.cellularHomologyComputed ∧ R.cohomologyRingComputed ∧
  R.fundamentalClassConstructed ∧ R.poincareDualityEstablished ∧
  R.sphereRepresentationDerived

theorem representation_theorem_closed_from_evidence
    {O : DimensionAdmittedObject} (R : RepresentationTheoremPackage O)
    (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R := by
  exact And.intro E.cellularHomologyComputedClosed
    (And.intro E.cohomologyRingComputedClosed
      (And.intro E.fundamentalClassConstructedClosed
        (And.intro E.poincareDualityEstablishedClosed
          E.sphereRepresentationDerivedClosed)))

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse
