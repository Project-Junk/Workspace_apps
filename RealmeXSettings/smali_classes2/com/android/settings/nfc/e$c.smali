.class final Lcom/android/settings/nfc/e$c;
.super Lcom/android/internal/content/PackageMonitor;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/nfc/e;

.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/e;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/settings/nfc/e$c;->a:Lcom/android/settings/nfc/e;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/e;B)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/e$c;-><init>(Lcom/android/settings/nfc/e;)V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/android/settings/nfc/e$c;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/android/settings/nfc/e$c;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/android/settings/nfc/e$c;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/android/settings/nfc/e$c;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/settings/nfc/e$c;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/android/settings/nfc/e$c$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/nfc/e$c$1;-><init>(Lcom/android/settings/nfc/e$c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/nfc/e$c;->b:Landroid/os/Handler;

    .line 187
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method
