import BiochemistryBioluminescenceCanonicalLaneLean.LuciferinReactionKinetics

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure EnergyTransferPackage {K : ReactionKineticsPackage} where
  excitedStateLifetime : ℝ
  quantumYield : ℝ
  energyTransferEfficiency : ℝ
  bioluminescenceSpectrum : Prop

structure EnergyTransferEvidence {K : ReactionKineticsPackage} (E : EnergyTransferPackage K) where
  excitedStateLifetimePositive : E.excitedStateLifetime > 0
  quantumYieldBetweenZeroAndOne : 0 < E.quantumYield ∧ E.quantumYield < 1
  energyTransferEfficiencyPositive : E.energyTransferEfficiency > 0
  bioluminescenceSpectrumClosed : E.bioluminescenceSpectrum

def EnergyTransferClosed {K : ReactionKineticsPackage} (E : EnergyTransferPackage K) : Prop :=
  E.excitedStateLifetime > 0 ∧ (0 < E.quantumYield ∧ E.quantumYield < 1) ∧
  E.energyTransferEfficiency > 0 ∧ E.bioluminescenceSpectrum

theorem energy_transfer_closed_from_evidence
    {K : ReactionKineticsPackage} (E : EnergyTransferPackage K)
    (Ev : EnergyTransferEvidence E) : EnergyTransferClosed E := by
  exact And.intro Ev.excitedStateLifetimePositive
    (And.intro Ev.quantumYieldBetweenZeroAndOne
      (And.intro Ev.energyTransferEfficiencyPositive Ev.bioluminescenceSpectrumClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse