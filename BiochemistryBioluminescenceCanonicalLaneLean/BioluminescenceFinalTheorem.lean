import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryBioluminescenceCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BiochemistryBioluminescenceCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

def ConstrainedBioluminescenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bioluminescence_endgame (A : AdmissibleClass) :
    ConstrainedBioluminescenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse