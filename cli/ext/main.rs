fn main() {
	pwasm_utils::logger::init();

	let args = std::env::args().collect::<Vec<_>>();
	if args.len() != 3 {
		println!("Usage: {} input_file.wasm output_file.wasm", args[0]);
		return
	}

	let module = pwasm_utils::externalize(
		axia_wasm::deserialize_file(&args[1]).expect("Module to deserialize ok"),
		vec!["_free", "_malloc", "_memcpy", "_memset", "_memmove"],
	);

	axia_wasm::serialize_to_file(&args[2], module).expect("Module to serialize ok");
}
