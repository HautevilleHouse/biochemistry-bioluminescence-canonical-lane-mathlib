import BiochemistryBioluminescenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRateConstant : ℝ
  equilibriumConstant : ℝ
  activationEnergy : ℝ
  michaelisMentenConstant : ℝ
  bioluminescenceEfficiency : Prop

structure ReactionKineticsEvidence (P : ReactionKineticsPackage) where
  reactionRateConstantPositive : P.reactionRateConstant > 0
  equilibriumConstantPositive : P.equilibriumConstant > 0
  activationEnergyFinite : P.activationEnergy < ∞
  bioluminescenceEfficiencyClosed : P.bioluminescenceEfficiency

def ReactionKineticsClosed (P : ReactionKineticsPackage) : Prop :=
  P.reactionRateConstant > 0 ∧ P.equilibriumConstant > 0 ∧ P.activationEnergy < ∞ ∧ P.bioluminescenceEfficiency

theorem reaction_kinetics_closed_from_evidence
    (P : ReactionKineticsPackage) (E : ReactionKineticsEvidence P) :
    ReactionKineticsClosed P := by
  exact And.intro E.reactionRateConstantPositive
    (And.intro E.equilibriumConstantPositive
      (And.intro E.activationEnergyFinite E.bioluminescenceEfficiencyClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse