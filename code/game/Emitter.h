// Emitter.h
//

//
// rvmEmitter
//
class rvmEmitter : public idEntity {
public:
	CLASS_PROTOTYPE(rvmEmitter);

	virtual void Spawn(void) override;

	CLASS_STATES_PROTOTYPE(rvmEmitter);
};