import BiochemistryBioluminescenceCanonicalLaneLean.KineticModels

/-!
# Bioluminescence Thermodynamics Package
-/

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure ThermodynamicsPackage {O : BioluminescenceAdmittedObject} (K : KineticsPackage O) where
  gibbsFreeEnergyChange : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  equilibriumConstant : Prop

structure ThermodynamicsEvidence {O : BioluminescenceAdmittedObject} {K : KineticsPackage O}
    (T : ThermodynamicsPackage K) where
  gibbsFreeEnergyChangeClosed : T.gibbsFreeEnergyChange
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  equilibriumConstantClosed : T.equilibriumConstant

def ThermodynamicsClosed {O : BioluminescenceAdmittedObject} {K : KineticsPackage O}
    (T : ThermodynamicsPackage K) : Prop :=
  T.gibbsFreeEnergyChange ∧ T.enthalpyChange ∧ T.entropyChange ∧ T.equilibriumConstant

theorem thermodynamics_closed_from_evidence
    {O : BioluminescenceAdmittedObject} {K : KineticsPackage O}
    (T : ThermodynamicsPackage K) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyChangeClosed
    (And.intro E.enthalpyChangeClosed
      (And.intro E.entropyChangeClosed E.equilibriumConstantClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse