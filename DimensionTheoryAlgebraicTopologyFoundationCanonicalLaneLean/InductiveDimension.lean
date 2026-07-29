import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

inductive InductiveDimension (X : Type) [TopologicalSpace X] : Prop where
  | zeroDim : (∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ IsClosed U) → InductiveDimension X
  | succDim (n : Nat) : (∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ InductiveDimension (Frontier U)) → InductiveDimension X

theorem inductive_dimension_closed (X : Type) [TopologicalSpace X] (d : InductiveDimension X) :
    InductiveDimension X := d

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse