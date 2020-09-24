.class Lcom/android/internal/telephony/GsmCdmaCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-string v0, "phoneinECMState"

    .line 126
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 127
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received ACTION_EMERGENCY_CALLBACK_MODE_CHANGED isInEcm = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->access$000(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 139
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->access$000(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/Connection;

    if-eqz p2, :cond_1

    .line 145
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->onExitedEcmMode()V

    goto :goto_0

    :cond_2
    return-void
.end method
