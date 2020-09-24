.class Lcom/android/internal/telephony/ImsSmsDispatcher$1;
.super Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(I)V
    .locals 2

    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onImsConnected imsRadioTech="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsSmsDispacher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$102(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z

    .line 82
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRegistering(I)V
    .locals 2

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onImsProgressing imsRadioTech="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsSmsDispacher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$102(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z

    .line 91
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onImsDisconnected imsReasonInfo="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsSmsDispacher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$102(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z

    .line 99
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
