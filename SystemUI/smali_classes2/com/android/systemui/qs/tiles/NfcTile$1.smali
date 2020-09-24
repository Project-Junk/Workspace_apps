.class Lcom/android/systemui/qs/tiles/NfcTile$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NfcTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NfcTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NfcTile;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NFC state is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/NfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Statusbar"

    invoke-static {v0, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState()V

    return-void
.end method
