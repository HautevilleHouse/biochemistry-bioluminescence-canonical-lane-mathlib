import BiochemistryBioluminescenceCanonicalLaneLean.BioluminescenceObjects

/-!
# Luciferin-Luciferase Kinetics Package
-/

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure KineticsPackage (O : BioluminescenceAdmittedObject) where
  reactionRateEquation : Prop
  michaelisMentenParams : Prop
  activationEnergy : Prop
  temperatureDependence : Prop

structure KineticsEvidence {O : BioluminescenceAdmittedObject} (K : KineticsPackage O) where
  reactionRateEquationClosed : K.reactionRateEquation
  michaelisMentenParamsClosed : K.michaelisMentenParams
  activationEnergyClosed : K.activationEnergy
  temperatureDependenceClosed : K.temperatureDependence

def KineticsClosed {O : BioluminescenceAdmittedObject} (K : KineticsPackage O) : Prop :=
  K.reactionRateEquation ∧ K.michaelisMentenParams ∧ K.activationEnergy ∧ K.temperatureDependence

theorem kinetics_closed_from_evidence
    {O : BioluminescenceAdmittedObject} (K : KineticsPackage O) (E : KineticsEvidence K) :
    KineticsClosed K := by
  exact And.intro E.reactionRateEquationClosed
    (And.intro E.michaelisMentenParamsClosed
      (And.intro E.activationEnergyClosed E.temperatureDependenceClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse