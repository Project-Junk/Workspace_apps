.class Lcom/android/internal/telephony/SubscriptionMonitor$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 146
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$200(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result p1

    .line 147
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {p2}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$000(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Default changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$700(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$502(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 155
    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$200(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    move v2, v3

    .line 157
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v4, p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    const-string v1, "newDefaultDataPhoneId="

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v1, v0, :cond_5

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Default phoneId changed "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$800(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    .line 170
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/os/RegistrantList;->size()I

    move-result v4

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$800(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 173
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    move-result v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " registrants"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {p1, v2}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$702(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    .line 176
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$800(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 177
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object p1

    aget-object p1, p1, v0

    .line 178
    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 180
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$800(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 181
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object p1

    aget-object p1, p1, v1

    .line 182
    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 186
    :cond_5
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
