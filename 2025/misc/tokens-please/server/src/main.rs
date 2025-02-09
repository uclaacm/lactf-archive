use anchor_lang::{AccountDeserialize, InstructionData, ToAccountMetas};
use solana_sdk::{
    instruction::Instruction,
    pubkey::Pubkey,
    signature::{Keypair, Signer},
};

use sol_ctf_framework::Challenge;

use solana_program::{system_instruction, system_program, sysvar};

use std::io;
use std::{error::Error, fs};
use tokio::io::{AsyncWriteExt, BufReader};
use tokio::net::{TcpListener, TcpStream};

use rand::prelude::*;

fn clone_tokio_tcpstream(stream: TcpStream) -> io::Result<(TcpStream, TcpStream)> {
    let std_stream = stream.into_std()?;
    let cloned = std_stream.try_clone()?;
    Ok((
        TcpStream::from_std(std_stream)?,
        TcpStream::from_std(cloned)?,
    ))
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
    let listener = TcpListener::bind("0.0.0.0:5000").await?;

    println!("Server listening on port 5000");

    loop {
        let (socket, _) = listener.accept().await?;
        let (mut socket, mut cloned) = clone_tokio_tcpstream(socket)?;

        tokio::spawn(async move {
            let res = handle_connection((&mut socket, &mut cloned))
                .await
                .err()
                .map(|err| format!("error: {err:#?}\n"));
            if let Some(msg) = res {
                cloned.write_all(msg.as_bytes()).await.unwrap();
                cloned.flush().await.unwrap();
            }
        });
    }
}

async fn handle_connection(
    (socket, cloned): (&mut TcpStream, &mut TcpStream),
) -> Result<(), Box<dyn Error>> {
    let (reader, writer) = cloned.split();
    let mut builder = Challenge::builder(BufReader::new(reader), writer);

    let mut rng = StdRng::from_seed([123; 32]);

    // put program at a fixed pubkey to make anchor happy
    let prog = Keypair::generate(&mut rng);

    // load programs
    builder.add_program("tokens_please.so", Some(prog.pubkey()));

    // make user
    let user = Keypair::new();
    let (vault, _) = Pubkey::find_program_address(&[b"vault"], &prog.pubkey());
    let (user_permit, _) =
        Pubkey::find_program_address(&[b"entry permit", user.pubkey().as_ref()], &prog.pubkey());

    socket
        .write_all(format!("program: {}\n", prog.pubkey()).as_bytes())
        .await?;
    socket
        .write_all(format!("user: {}\n", user.pubkey()).as_bytes())
        .await?;
    socket
        .write_all(format!("user_permit: {}\n", user_permit).as_bytes())
        .await?;
    socket
        .write_all(format!("vault: {}\n", vault).as_bytes())
        .await?;
    socket
        .write_all(format!("instruction_program: {}\n", sysvar::instructions::ID).as_bytes())
        .await?;
    socket
        .write_all(format!("system_program: {}\n", system_program::ID).as_bytes())
        .await?;

    let solve = builder
        .input_program()
        .await
        .map_err(|e| std::io::Error::other(e.to_string()))?;
    socket
        .write_all(format!("solve: {solve}\n").as_bytes())
        .await?;
    if [
        prog.pubkey(),
        user.pubkey(),
        user_permit,
        vault,
        sysvar::instructions::ID,
        system_program::ID,
    ]
    .into_iter()
    .any(|x| x == solve)
    {
        return Err("cannot overlap solve with existing account".into());
    }

    if !solve.is_on_curve() {
        return Err("solve pubkey must be on curve".into());
    }
    let mut challenge = builder.build().await;

    let ixs = challenge.read_instructions(None).await?;

    let payer_keypair = challenge.ctx.payer.insecure_clone();
    let payer = challenge.ctx.payer.pubkey();

    const STARTING_BAL: u64 = 1_000_000;
    const VAULT_BAL: u64 = 1_000_000_000;
    
    challenge
        .run_ix(Instruction::new_with_bytes(
            prog.pubkey(),
            &tokens_please::instruction::Initialize { bal: VAULT_BAL }.data(),
            tokens_please::accounts::Initialize {
                payer,
                vault,
                system_program: system_program::ID,
            }
            .to_account_metas(None),
        ))
        .await?;

    challenge
        .run_ixs_full(
            &[system_instruction::create_account(
                &payer,
                &user.pubkey(),
                STARTING_BAL,
                0,
                &system_program::ID,
            )],
            &[&payer_keypair, &user],
            &payer,
        )
        .await?;

    challenge
        .run_ixs_full(&ixs, &[&user], &user.pubkey())
        .await?;

    let permit_valid = challenge
        .ctx
        .banks_client
        .get_account(user_permit)
        .await?
        .and_then(|acct| {
            tokens_please::EntryPermit::try_deserialize(&mut acct.data.as_slice()).ok()
        })
        .map(|acct| acct.valid);

    if permit_valid.unwrap_or(false) {
        let flag = fs::read_to_string("flag.txt")?;
        socket
            .write_all(format!("ACCEPTED. Glory to Arstotzka! {}\n", flag.trim()).as_bytes())
            .await?;
    } else {
        socket
            .write_all(b"DISCREPANCY DETECTED: No entry permit. DENIED.\n")
            .await?;
    }

    Ok(())
}
