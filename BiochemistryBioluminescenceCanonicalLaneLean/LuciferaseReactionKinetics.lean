import HautevilleHouse.BiochemistryBioluminescenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure LuciferaseReactionKineticsPackage (A : AdmissibleClass) where
  michaelisMentenRate : Prop
  turnoverNumber : Prop
  activationEnergy : Prop
  kineticClosure : Prop

structure LuciferaseReactionKineticsEvidence {A : AdmissibleClass}
    (P : LuciferaseReactionKineticsPackage A) where
  michaelisMentenRateClosed : P.michaelisMentenRate
  turnoverNumberClosed : P.turnoverNumber
  activationEnergyClosed : P.activationEnergy
  kineticClosureClosed : P.kineticClosure

def LuciferaseReactionKineticsClosed {A : AdmissibleClass}
    (P : LuciferaseReactionKineticsPackage A) : Prop :=
  P.michaelisMentenRate ∧ P.turnoverNumber ∧ P.activationEnergy ∧ P.kineticClosure

theorem luciferase_reaction_kinetics_closed_from_evidence
    {A : AdmissibleClass} (P : LuciferaseReactionKineticsPackage A)
    (E : LuciferaseReactionKineticsEvidence P) :
    LuciferaseReactionKineticsClosed P := by
  exact And.intro E.michaelisMentenRateClosed
    (And.intro E.turnoverNumberClosed
      (And.intro E.activationEnergyClosed E.kineticClosureClosed))

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse