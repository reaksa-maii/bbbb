fn main()-> Result<(), Box<dyn std::error::Error>>{
    tonic_build::configure()
        .build_server(true)
        .build_client(true)
        .out_dir("build/generated")
        .compile(&["protos/v1/main.proto"], &["proto"])
        .unwrap();

    Ok(())
}
