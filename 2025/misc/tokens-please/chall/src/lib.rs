use anchor_lang::prelude::*;
use solana_program::{
    account_info::AccountInfo,
    program::{invoke, invoke_signed},
    pubkey::Pubkey,
    rent::Rent,
    system_instruction,
    sysvar::instructions,
};

declare_id!("By8vGfgrrrWhcVy6F1mw6QGfhEvxLUHGs1DM1zt3YvLE");

#[program]
mod tokens_please {
    use anchor_lang::Discriminator;

    use super::*;

    const LOAN_AMOUNT: u64 = 100_000_000;
    const PERMIT_COST: u64 = 42_000_000;

    pub fn initialize(ctx: Context<Initialize>, bal: u64) -> Result<()> {
        invoke(
            &system_instruction::transfer(ctx.accounts.payer.key, ctx.accounts.vault.key, bal),
            &[
                ctx.accounts.payer.to_account_info(),
                ctx.accounts.vault.to_account_info(),
            ],
        )?;
        Ok(())
    }

    pub fn flash_loan(ctx: Context<FlashLoan>) -> Result<()> {
        let num_instrs = u16::from_le_bytes(
            ctx.accounts.instruction_program.try_borrow_data()?[0..2]
                .try_into()
                .unwrap(),
        ) as usize;
        if num_instrs < 2 {
            panic!("Must have at least 2 instructions");
        }
        let mut inses = Vec::new();
        for i in 0..num_instrs {
            inses.push(
                instructions::load_instruction_at_checked(
                    i,
                    ctx.accounts.instruction_program.as_ref(),
                )
                .unwrap(),
            );
        }
        let first_instr = &inses[0];
        if first_instr.program_id != ID
            || first_instr.data[..8] != instruction::FlashLoan::DISCRIMINATOR
        {
            panic!("Flash loan must be the first instruction");
        }
        for ins in &inses[1..num_instrs - 1] {
            if ins.program_id == ID {
                panic!("Cannot invoke instructions from this program during a flash loan");
            }
        }
        let last_instr = &inses[num_instrs - 1];
        if last_instr.program_id != ID
            || last_instr.data[..8] != instruction::ReturnLoan::DISCRIMINATOR
        {
            panic!("Return loan must be the last instruction");
        }
        invoke_signed(
            &system_instruction::transfer(
                ctx.accounts.vault.key,
                ctx.accounts.user.key,
                LOAN_AMOUNT,
            ),
            &[
                ctx.accounts.vault.to_account_info(),
                ctx.accounts.user.to_account_info(),
            ],
            &[&[b"vault", &[ctx.bumps.vault]]],
        )?;
        Ok(())
    }

    pub fn return_loan(ctx: Context<ReturnLoan>) -> Result<()> {
        invoke(
            &system_instruction::transfer(
                ctx.accounts.user.key,
                ctx.accounts.vault.key,
                LOAN_AMOUNT,
            ),
            &[
                ctx.accounts.user.to_account_info(),
                ctx.accounts.vault.to_account_info(),
            ],
        )?;
        Ok(())
    }

    pub fn buy_entry_permit(ctx: Context<BuyEntryPermit>) -> Result<()> {
        invoke(
            &system_instruction::transfer(
                ctx.accounts.user.key,
                ctx.accounts.vault.key,
                PERMIT_COST,
            ),
            &[
                ctx.accounts.user.to_account_info(),
                ctx.accounts.vault.to_account_info(),
            ],
        )?;
        ctx.accounts.permit.valid = true;
        Ok(())
    }
}

#[derive(Accounts)]
pub struct Initialize<'info> {
    #[account(mut)]
    payer: Signer<'info>,
    #[account(mut, seeds = [b"vault"], bump)]
    vault: SystemAccount<'info>,
    system_program: Program<'info, System>,
}

#[derive(Accounts)]
pub struct FlashLoan<'info> {
    #[account(mut)]
    user: SystemAccount<'info>,
    #[account(mut, seeds = [b"vault"], bump)]
    vault: SystemAccount<'info>,
    system_program: Program<'info, System>,
    #[account(address = instructions::id())]
    instruction_program: UncheckedAccount<'info>,
}

#[derive(Accounts)]
pub struct ReturnLoan<'info> {
    #[account(mut)]
    user: Signer<'info>,
    #[account(mut, seeds = [b"vault"], bump)]
    vault: SystemAccount<'info>,
    system_program: Program<'info, System>,
}

#[account]
pub struct EntryPermit {
    pub valid: bool,
}

#[derive(Accounts)]
pub struct BuyEntryPermit<'info> {
    #[account(mut)]
    user: Signer<'info>,
    #[account(mut, seeds = [b"vault"], bump)]
    vault: SystemAccount<'info>,
    #[account(
        init,
        payer = user,
        space = 8 + std::mem::size_of::<EntryPermit>(),
        seeds = [b"entry permit", user.key.as_ref()],
        bump
    )]
    permit: Account<'info, EntryPermit>,
    system_program: Program<'info, System>,
}
