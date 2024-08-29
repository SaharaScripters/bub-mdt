const permissions = {
	"create_announcement": 8,
	"create_charge": 8,
	"delete_charge": 8,
	"edit_charge": 8,
	"hire_officer": 9,
	"set_officer_rank": 9,
	"set_officer_roles": 9,
	"fire_officer": 9
};

export type PermissionKey = keyof typeof permissions;

export default permissions as Record<PermissionKey, number>;
