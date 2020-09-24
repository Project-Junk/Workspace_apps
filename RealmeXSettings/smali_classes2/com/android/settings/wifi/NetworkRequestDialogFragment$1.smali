.class final Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;
.super Landroid/os/Handler;
.source "NetworkRequestDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/NetworkRequestDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;->a:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 321
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;->removeMessages(I)V

    .line 324
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;->a:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    sget-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->a:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;)V

    :goto_0
    return-void
.end method
