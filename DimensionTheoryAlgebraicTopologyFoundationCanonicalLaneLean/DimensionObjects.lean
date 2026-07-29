import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure DimensionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DimensionAdmittedObject where
  space : DimensionSpace
  finiteCWComplex : Prop
  dimensionTheorySatisfied : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homotopyEquivalentToSphere : Prop
  conclusion : homotopyEquivalentToSphere

structure DimensionEndgameState where
  object : DimensionAdmittedObject

def DimensionWitnessClosed (O : DimensionAdmittedObject) : Prop :=
  O.homotopyEquivalentToSphere

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse
