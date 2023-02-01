
protocol AdvanceLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvanceLifeSupport?

    func assessSituation() {
        print("Can you tell me what happened?")
    }

    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvanceLifeSupport {

    init(hander: EmergencyCallHandler) {
        hander.delegate = self
    }

    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvanceLifeSupport {

    init(hander: EmergencyCallHandler) {
        hander.delegate = self
    }

    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }

    func useStethescope() {
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }

    func useElectricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let pete = Surgeon(hander: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
