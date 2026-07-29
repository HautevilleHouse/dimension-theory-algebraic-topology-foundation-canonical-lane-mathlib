import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure LeraySerreSpectralSequencePackage (F : Type u → Type v) (B : Type w) where
  fiberBundle : Prop
  baseCW : CWComplexPackage
  fiberHomology : HomologyGroupsPackage (SimplicialComplexPackage.mk ...) -- simplified
  convergence : Prop
  differentials : ℕ → Prop
  edgeHomomorphisms : Prop

structure LeraySerreSpectralSequenceEvidence (L : LeraySerreSpectralSequencePackage F B) where
  convergenceClosed : L.convergence
  differentialsClosed : ∀ n, L.differentials n
  edgeHomomorphismsClosed : L.edgeHomomorphisms

def LeraySerreSpectralSequenceClosed (L : LeraySerreSpectralSequencePackage F B) : Prop :=
  L.convergence ∧ (∀ n, L.differentials n) ∧ L.edgeHomomorphisms

theorem leray_serre_spectral_sequence_closed_from_evidence
    (L : LeraySerreSpectralSequencePackage F B)
    (E : LeraySerreSpectralSequenceEvidence L) :
    LeraySerreSpectralSequenceClosed L := by
  exact And.intro E.convergenceClosed
    (And.intro E.differentialsClosed E.edgeHomomorphismsClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse