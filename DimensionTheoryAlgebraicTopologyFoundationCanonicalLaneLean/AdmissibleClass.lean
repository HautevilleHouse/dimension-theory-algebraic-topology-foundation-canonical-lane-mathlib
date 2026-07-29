import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DimWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse