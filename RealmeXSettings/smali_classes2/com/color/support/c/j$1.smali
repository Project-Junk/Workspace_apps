.class final Lcom/color/support/c/j$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorStatusBarResponseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/c/j;


# direct methods
.method constructor <init>(Lcom/color/support/c/j;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/color/support/c/j$1;->a:Lcom/color/support/c/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "ColorStatusBarResponseUtil"

    const-string p2, "The broadcast receiever was registered successfully and receives the broadcast"

    .line 1175
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p2, p0, Lcom/color/support/c/j$1;->a:Lcom/color/support/c/j;

    .line 2027
    iget-object p2, p2, Lcom/color/support/c/j;->a:Lcom/color/support/c/j$a;

    if-eqz p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/color/support/c/j$1;->a:Lcom/color/support/c/j;

    .line 3027
    iget-object p2, p2, Lcom/color/support/c/j;->a:Lcom/color/support/c/j$a;

    .line 62
    invoke-interface {p2}, Lcom/color/support/c/j$a;->a()V

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onStatusBarClicked is called at time :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3175
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
