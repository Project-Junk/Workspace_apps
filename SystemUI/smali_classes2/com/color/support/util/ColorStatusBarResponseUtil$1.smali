.class Lcom/color/support/util/ColorStatusBarResponseUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorStatusBarResponseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/util/ColorStatusBarResponseUtil;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/util/ColorStatusBarResponseUtil;


# direct methods
.method constructor <init>(Lcom/color/support/util/ColorStatusBarResponseUtil;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/color/support/util/ColorStatusBarResponseUtil$1;->this$0:Lcom/color/support/util/ColorStatusBarResponseUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "ColorStatusBarResponseUtil"

    const-string p2, "The broadcast receiever was registered successfully and receives the broadcast"

    .line 60
    invoke-static {p1, p2}, Lcom/color/support/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/color/support/util/ColorStatusBarResponseUtil$1;->this$0:Lcom/color/support/util/ColorStatusBarResponseUtil;

    invoke-static {p2}, Lcom/color/support/util/ColorStatusBarResponseUtil;->access$000(Lcom/color/support/util/ColorStatusBarResponseUtil;)Lcom/color/support/util/ColorStatusBarResponseUtil$StatusBarClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 62
    iget-object p0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil$1;->this$0:Lcom/color/support/util/ColorStatusBarResponseUtil;

    invoke-static {p0}, Lcom/color/support/util/ColorStatusBarResponseUtil;->access$000(Lcom/color/support/util/ColorStatusBarResponseUtil;)Lcom/color/support/util/ColorStatusBarResponseUtil$StatusBarClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/color/support/util/ColorStatusBarResponseUtil$StatusBarClickListener;->onStatusBarClicked()V

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStatusBarClicked is called at time :"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/color/support/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
