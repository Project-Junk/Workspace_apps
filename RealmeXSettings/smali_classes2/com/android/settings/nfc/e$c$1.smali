.class final Lcom/android/settings/nfc/e$c$1;
.super Landroid/os/Handler;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/e$c;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/nfc/e$c;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/e$c;Landroid/os/Looper;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/settings/nfc/e$c$1;->a:Lcom/android/settings/nfc/e$c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/android/settings/nfc/e$c$1;->a:Lcom/android/settings/nfc/e$c;

    iget-object p1, p1, Lcom/android/settings/nfc/e$c;->a:Lcom/android/settings/nfc/e;

    invoke-virtual {p1}, Lcom/android/settings/nfc/e;->a()V

    return-void
.end method
