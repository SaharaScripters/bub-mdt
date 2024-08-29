local qb = {}
local officer = {}

qb.loadedEvent = 'QBCore:Client:OnPlayerLoaded'
qb.logoutEvent = 'QBCore:Client:OnPlayerUnload'
qb.setGroupEvent = 'QBCore:Client:OnJobUpdate'

function qb.getOfficerData()
    officer.citizenid = QBX.PlayerData.citizenid
    officer.firstname = QBX.PlayerData.charinfo.firstname
    officer.lastname = QBX.PlayerData.charinfo.lastname
    officer.role = QBX.PlayerData.job.grade.name
    officer.grade = QBX.PlayerData.job.grade.level
    return officer
end

function qb.notify(text, type)
    exports.qbx_core:Notify(text, type)
end

function qb.isJobPolice()
    return QBX.PlayerData.job.name == 'police' and true or false
end

function qb.isOnDuty()
    return QBX.PlayerData.job.onduty and true or false
end

function qb.GetVehiclesByName()
    return exports.qbx_core:GetVehiclesByName()
end

function qb.getPlayerGender()
    return QBX.PlayerData.charinfo.gender == 1 and "Female" or "Male"
end

return qb
