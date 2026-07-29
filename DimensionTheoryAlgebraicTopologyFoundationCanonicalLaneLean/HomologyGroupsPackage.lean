import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure HomologyGroupsPackage (S : SimplicialComplexPackage) where
  chainComplex : Type u
  homologyGroups : ℕ → Type v
  functoriality : Prop
  exactness : Prop
  dimensionAxiom : Prop

structure HomologyGroupsEvidence {S : SimplicialComplexPackage}
    (H : HomologyGroupsPackage S) where
  functorialityClosed : H.functoriality
  exactnessClosed : H.exactness
  dimensionAxiomClosed : H.dimensionAxiom

def HomologyGroupsClosed {S : SimplicialComplexPackage}
    (H : HomologyGroupsPackage S) : Prop :=
  H.functoriality ∧ H.exactness ∧ H.dimensionAxiom

theorem homology_groups_closed_from_evidence {S : SimplicialComplexPackage}
    (H : HomologyGroupsPackage S) (E : HomologyGroupsEvidence H) :
    HomologyGroupsClosed H := by
  exact And.intro E.functorialityClosed
    (And.intro E.exactnessClosed E.dimensionAxiomClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse