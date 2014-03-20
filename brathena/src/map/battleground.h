/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/map/battleground.h                                               *
* Descri��o Prim�ria.                                                        *
* Descri��o mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena, eAthena                                          *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#ifndef _BATTLEGROUND_H_
#define _BATTLEGROUND_H_

#include "../common/mmo.h" // struct party
#include "clif.h"
#include "guild.h"

/**
 * Defines
 **/
#define MAX_BG_MEMBERS 30
#define BG_DELAY_VAR_LENGTH 30

/**
 * Enumerations
 **/
enum bg_queue_types {
	BGQT_INVALID    = 0x0,
	BGQT_INDIVIDUAL = 0x1,
	BGQT_PARTY      = 0x2,
	/* yup no 0x3 */
	BGQT_GUILD      = 0x4,
};

enum bg_team_leave_type {
	BGTL_LEFT = 0x0,
	BGTL_QUIT = 0x1,
	BGTL_AFK  = 0x2,
};

struct battleground_member_data {
	unsigned short x, y;
	struct map_session_data *sd;
	unsigned afk : 1;
	struct point source;/* where did i come from before i join? */
};

struct battleground_data {
	unsigned int bg_id;
	unsigned char count;
	struct battleground_member_data members[MAX_BG_MEMBERS];
	// BG Cementery
	unsigned short mapindex, x, y;
	// Logout Event
	char logout_event[EVENT_NAME_LENGTH];
	char die_event[EVENT_NAME_LENGTH];
};

void do_init_battleground(void);
void do_final_battleground(void);

struct battleground_data *bg_team_search(int bg_id);
void bg_send_dot_remove(struct map_session_data *sd);
int bg_team_get_id(struct block_list *bl);
struct map_session_data *bg_getavailablesd(struct battleground_data *bg);

int bg_create(unsigned short map_index, short rx, short ry, const char *ev, const char *dev);
bool bg_team_join(int bg_id, struct map_session_data *sd);
bool bg_team_delete(int bg_id);
int bg_team_leave(struct map_session_data *sd, enum bg_team_leave_type flag);
bool bg_team_warp(int bg_id, unsigned short map_index, short x, short y);
bool bg_member_respawn(struct map_session_data *sd);
bool bg_send_message(struct map_session_data *sd, const char *mes, int len);

struct bg_arena {
	char name[NAME_LENGTH];
	unsigned char id;
	char npc_event[EVENT_NAME_LENGTH];
	short min_level, max_level;
	short prize_win, prize_loss, prize_draw;
	short min_players;
	short max_players;
	short min_team_players;
	char delay_var[NAME_LENGTH];
	unsigned short maxDuration;
	int queue_id;
	int begin_timer;
	int fillup_timer;
	int game_timer;
	unsigned short fillup_duration;
	unsigned short pregame_duration;
	bool ongoing;
	enum bg_queue_types allowed_types;
};

/* battleground.c interface (incomplete) */
struct battleground_interface {
	bool queue_on;
	/* */
	int mafksec, afk_timer_id;
	char gdelay_var[BG_DELAY_VAR_LENGTH];
	/* */
	struct bg_arena **arena;
	unsigned char arenas;
	/* */
	DBMap *team_db; // int bg_id -> struct battleground_data*
	unsigned int team_counter; // Next bg_id
	struct bg_arena *(*name2arena) (char *name);
	void (*queue_add) (struct map_session_data *sd, struct bg_arena *arena, enum bg_queue_types type);
	enum BATTLEGROUNDS_QUEUE_ACK (*can_queue) (struct map_session_data *sd, struct bg_arena *arena, enum bg_queue_types type);
	int (*id2pos) (int queue_id, int account_id);
	void (*queue_pc_cleanup) (struct map_session_data *sd);
	void (*begin) (struct bg_arena *arena);
	int (*begin_timer) (int tid, int64 tick, int id, intptr_t data);
	void (*queue_pregame) (struct bg_arena *arena);
	int (*fillup_timer) (int tid, int64 tick, int id, intptr_t data);
	void (*queue_ready_ack) (struct bg_arena *arena, struct map_session_data *sd, bool response);
	void (*match_over) (struct bg_arena *arena, bool canceled);
	void (*queue_check) (struct bg_arena *arena);
	int (*afk_timer) (int tid, int64 tick, int id, intptr_t data);
	/* */
	enum bg_queue_types (*str2teamtype) (const char *str);
	/* */
	void (*config_read) (void);
};

struct battleground_interface *bg;

void battleground_defaults(void);

#endif /* _BATTLEGROUND_H_ */
