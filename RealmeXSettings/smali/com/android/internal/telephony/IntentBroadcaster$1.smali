.class Lcom/android/internal/telephony/IntentBroadcaster$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IntentBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntentBroadcaster;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-static {p1}, Lcom/android/internal/telephony/IntentBroadcaster;->access$000(Lcom/android/internal/telephony/IntentBroadcaster;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 50
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-static {p2}, Lcom/android/internal/telephony/IntentBroadcaster;->access$000(Lcom/android/internal/telephony/IntentBroadcaster;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 51
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "rebroadcastOnUnlock"

    const/4 v3, 0x1

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 56
    iget-object v2, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rebroadcasting intent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ss"

    .line 57
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v2, v0}, Lcom/android/internal/telephony/IntentBroadcaster;->access$100(Lcom/android/internal/telephony/IntentBroadcaster;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 59
    invoke-static {v1, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 61
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    return-void
.end method
