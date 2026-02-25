{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rustup
    gcc

    # lsp
    nixd


    # mostly for tauri desktop app dev
    nodejs
    cargo-tauri
    sqlx-cli
    trunk

    pkg-config
    openssl.dev
    glib
    glib.dev
    wrapGAppsHook4
    librsvg
    webkitgtk_4_1
    webkitgtk_4_1.dev
    gtk4
    gtk4.dev
    glib
    glib.dev
    gdk-pixbuf
    gdk-pixbuf.dev
    cairo
    cairo.dev
    pango
    pango.dev
  ];
}
