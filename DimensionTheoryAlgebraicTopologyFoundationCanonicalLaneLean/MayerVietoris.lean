import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundation

structure MayerVietorisSequence where
  spaceA : Type u
  spaceB : Type u
  intersection : Type u
  longExactSequence : Prop
  naturality : Prop
  longExactSequenceTerm : longExactSequence
  naturalityTerm : naturality

structure MayerVietorisEvidence (M : MayerVietorisSequence) where
  longExactSequenceClosed : M.longExactSequence
  naturalityClosed : M.naturality

def MayerVietorisClosed (M : MayerVietorisSequence) : Prop :=
  M.longExactSequence ∧ M.naturality

theorem mayer_vietoris_closed_from_evidence (M : MayerVietorisSequence)
    (E : MayerVietorisEvidence M) : MayerVietorisClosed M := by
  exact And.intro E.longExactSequenceClosed E.naturalityClosed

end HautevilleHouse.DimensionTheoryAlgebraicTopologyFoundation
end HautevilleHouse