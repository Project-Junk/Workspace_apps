.class Lcom/color/support/util/ColorStatusBarResponseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorStatusBarResponseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/util/ColorStatusBarResponseActivity;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/util/ColorStatusBarResponseActivity;


# direct methods
.method constructor <init>(Lcom/color/support/util/ColorStatusBarResponseActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/color/support/util/ColorStatusBarResponseActivity$1;->this$0:Lcom/color/support/util/ColorStatusBarResponseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "ColorStatusBarResponseActivity"

    const-string p2, "The broadcast receiever was registered successfully and receives the broadcast"

    .line 45
    invoke-static {p1, p2}, Lcom/color/support/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/color/support/util/ColorStatusBarResponseActivity$1;->this$0:Lcom/color/support/util/ColorStatusBarResponseActivity;

    invoke-virtual {p0}, Lcom/color/support/util/ColorStatusBarResponseActivity;->onStatusBarClicked()V

    .line 47
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

    return-void
.end method
