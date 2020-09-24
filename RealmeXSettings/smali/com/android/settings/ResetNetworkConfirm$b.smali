.class final Lcom/android/settings/ResetNetworkConfirm$b;
.super Landroid/os/Handler;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/ResetNetworkConfirm;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/Looper;Landroid/content/Context;Lcom/android/settings/ResetNetworkConfirm$c;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$b;->a:Lcom/android/settings/ResetNetworkConfirm;

    .line 232
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    iput-object p3, p0, Lcom/android/settings/ResetNetworkConfirm$b;->b:Landroid/content/Context;

    .line 234
    iput-object p4, p0, Lcom/android/settings/ResetNetworkConfirm$b;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 239
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "content://telephony/carriers/restore"

    .line 241
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$b;->a:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->a(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subId/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$b;->a:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->a(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 247
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$b;->c:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
