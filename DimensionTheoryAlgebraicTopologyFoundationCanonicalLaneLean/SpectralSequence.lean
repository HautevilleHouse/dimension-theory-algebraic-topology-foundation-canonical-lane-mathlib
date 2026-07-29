import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean

structure SpectralSequencePackage where
  bigradedObjects : Nat × Nat → Type u
  differentials : ∀ p q r, bigradedObjects (p,q) → bigradedObjects (p+r, q-r+1)
  convergence : Prop
  pageStabilization : Prop
  edgeHomomorphisms : Prop

structure SpectralSequenceEvidence (S : SpectralSequencePackage) where
  convergenceClosed : S.convergence
  pageStabilizationClosed : S.pageStabilization
  edgeHomomorphismsClosed : S.edgeHomomorphisms

def SpectralSequenceClosed (S : SpectralSequencePackage) : Prop :=
  S.convergence ∧ S.pageStabilization ∧ S.edgeHomomorphisms

theorem spectral_sequence_closed_from_evidence (S : SpectralSequencePackage)
    (E : SpectralSequenceEvidence S) : SpectralSequenceClosed S := by
  exact And.intro E.convergenceClosed (And.intro E.pageStabilizationClosed E.edgeHomomorphismsClosed)

end DimensionTheoryAlgebraicTopologyFoundationCanonicalLaneLean
end HautevilleHouse