.class Lcom/android/internal/telephony/imsphone/ImsPhone$4;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    .line 2008
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2011
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "org.codeaurora.intent.action.send.rtt.text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "ImsPhone"

    if-eqz p1, :cond_0

    const-string p1, "RTT: Received ACTION_SEND_RTT_TEXT"

    .line 2012
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "org.codeaurora.intent.action.rtt.textvalue"

    .line 2013
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2014
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendRttMessage(Ljava/lang/String;)V

    return-void

    .line 2015
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "org.codeaurora.intent.action.send.rtt.operation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "RTT: Received ACTION_RTT_OPERATION"

    .line 2016
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const-string v0, "org.codeaurora.intent.action.rtt.operation.type"

    .line 2017
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2018
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$800(Lcom/android/internal/telephony/imsphone/ImsPhone;I)V

    return-void

    :cond_1
    const-string p1, "RTT: unknown intent"

    .line 2020
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
