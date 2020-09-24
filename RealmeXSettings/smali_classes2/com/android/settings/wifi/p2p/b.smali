.class public final Lcom/android/settings/wifi/p2p/b;
.super Lcom/android/settings/wifi/p2p/a;
.source "P2pPeerCategoryPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "p2p_peer_devices"

    return-object v0
.end method
