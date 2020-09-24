.class Lcom/android/internal/telephony/dataconnection/DcController$2;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionOverride(III)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter p1

    .line 183
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->access$300(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 184
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 186
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onSubscriptionOverride(II)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 184
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_2
    :goto_1
    return-void
.end method
