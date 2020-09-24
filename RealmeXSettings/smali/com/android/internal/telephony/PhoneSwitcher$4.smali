.class Lcom/android/internal/telephony/PhoneSwitcher$4;
.super Landroid/content/BroadcastReceiver;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$4;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 338
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$4;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 339
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
