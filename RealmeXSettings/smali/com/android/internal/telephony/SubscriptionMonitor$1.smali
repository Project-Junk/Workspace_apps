.class Lcom/android/internal/telephony/SubscriptionMonitor$1;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "SubscriptionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 9

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$000(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v2

    .line 112
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 113
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$200(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 114
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v5

    aget v5, v5, v1

    if-eq v5, v4, :cond_1

    .line 116
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Phone["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] subId changed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 118
    invoke-static {v8}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$300(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " registrants"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 119
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v6

    aput v4, v6, v1

    .line 120
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$300(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 123
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v6

    if-eq v6, v2, :cond_2

    .line 126
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v6

    if-eq v4, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 127
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mDefaultDataSubId = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 128
    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " registrants"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 130
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 133
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v5

    if-ne v4, v5, :cond_2

    move v3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$702(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
