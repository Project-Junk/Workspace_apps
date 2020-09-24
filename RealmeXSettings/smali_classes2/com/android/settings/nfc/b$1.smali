.class final Lcom/android/settings/nfc/b$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/nfc/b;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/b;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/nfc/b$1;->a:Lcom/android/settings/nfc/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/android/settings/nfc/b$1;->a:Lcom/android/settings/nfc/b;

    const/4 v0, 0x1

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/nfc/b;->a(I)V

    :cond_0
    return-void
.end method
