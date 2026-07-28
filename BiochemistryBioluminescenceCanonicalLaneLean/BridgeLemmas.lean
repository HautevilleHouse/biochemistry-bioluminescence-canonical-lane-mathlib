import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryBioluminescenceCanonicalLaneLean.BioluminescenceAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.bioluminescenceReaction ∧ A.object.photonEmitted

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.bioluminescenceReaction A.object.photonEmitted

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse