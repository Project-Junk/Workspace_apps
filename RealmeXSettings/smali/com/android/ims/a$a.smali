.class public final Lcom/android/ims/a$a;
.super Landroid/telephony/ims/ImsCallSession$Listener;
.source "ImsCall.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/a;


# direct methods
.method public constructor <init>(Lcom/android/ims/a;)V
    .locals 0

    .line 2340
    iput-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-direct {p0}, Landroid/telephony/ims/ImsCallSession$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final callQualityChanged(Landroid/telephony/CallQuality;)V
    .locals 2

    .line 3251
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter v0

    .line 3252
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v1

    .line 3253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3257
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/a$b;->onCallQualityChanged(Lcom/android/ims/a;Landroid/telephony/CallQuality;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3259
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v1, "callQualityChanged:: "

    invoke-static {v0, v1, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 3253
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 2854
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callSessionConferenceExtendFailed :: reasonInfo="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2856
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2857
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionConferenceExtendFailed :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2864
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2865
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2866
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/a;->a(Lcom/android/ims/a;I)I

    .line 2867
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2871
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/a$b;->onCallConferenceExtendFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2873
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionConferenceExtendFailed :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2867
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2881
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionConferenceExtendReceived :: newSession="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2884
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2885
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "callSessionConferenceExtendReceived :: not supported for transient conference session"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2890
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1, p2, p3}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2899
    :cond_1
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p2

    .line 2900
    :try_start_0
    iget-object p3, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p3}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object p3

    .line 2901
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 2905
    :try_start_1
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {p3, p2, p1}, Lcom/android/ims/a$b;->onCallConferenceExtendReceived(Lcom/android/ims/a;Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2907
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string p3, "callSessionConferenceExtendReceived :: "

    invoke-static {p2, p3, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 2901
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2819
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionConferenceExtended :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2822
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2823
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "callSessionConferenceExtended :: not supported for transient conference session="

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2828
    :cond_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p2, p3}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/a;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2831
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/a$a;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 2837
    :cond_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2838
    :try_start_0
    iget-object p3, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p3}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object p3

    .line 2839
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;I)I

    .line 2840
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 2844
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {p3, p1, p2}, Lcom/android/ims/a$b;->onCallConferenceExtended(Lcom/android/ims/a;Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2846
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string p3, "callSessionConferenceExtended :: "

    invoke-static {p2, p3, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    .line 2840
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .locals 2

    .line 3017
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callSessionConferenceStateUpdated :: state="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 3019
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {p1, p2}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsConferenceState;)V

    return-void
.end method

.method public final callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 3100
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionHandover :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", srcAccessTech="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", targetAccessTech="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reasonInfo="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 3106
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 3107
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 3108
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3112
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/a$b;->onCallHandover(Lcom/android/ims/a;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3115
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string p3, "callSessionHandover :: "

    invoke-static {p2, p3, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 3108
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 3123
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionHandoverFailed :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", srcAccessTech="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", targetAccessTech="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reasonInfo="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 3129
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 3130
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 3131
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3135
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/a$b;->onCallHandoverFailed(Lcom/android/ims/a;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3138
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string p3, "callSessionHandoverFailed :: "

    invoke-static {p2, p3, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 3131
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2466
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionHeld :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "profile="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2469
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2472
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->d(Lcom/android/ims/a;)V

    .line 2474
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p2}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2476
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2}, Lcom/android/ims/a;->h(Lcom/android/ims/a;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2478
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2}, Lcom/android/ims/a;->i(Lcom/android/ims/a;)V

    .line 2479
    monitor-exit p1

    return-void

    .line 2482
    :cond_0
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/ims/a;->a(Lcom/android/ims/a;I)I

    .line 2483
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object p2

    .line 2484
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 2488
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {p2, p1}, Lcom/android/ims/a$b;->onCallHeld(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2490
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionHeld :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2484
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 2497
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionHoldFailed :: session"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2499
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2501
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionHoldFailed :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2506
    :cond_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionHoldFailed :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reasonInfo="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2509
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->j(Lcom/android/ims/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2510
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Z)Z

    .line 2511
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2516
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter v0

    .line 2517
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->h(Lcom/android/ims/a;)I

    .line 2521
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;I)I

    .line 2522
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object p1

    .line 2523
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 2527
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {p1, v0, p2}, Lcom/android/ims/a$b;->onCallHoldFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2529
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionHoldFailed :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 2523
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 2511
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public final callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2542
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionHoldReceived :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2544
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2546
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionHoldReceived :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2553
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2554
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2555
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v1, p2}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2556
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2560
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a$b;->onCallHoldReceived(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2562
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionHoldReceived :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2556
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 2

    .line 2914
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v1, "callSessionInviteParticipantsRequestDelivered ::"

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2916
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2917
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "callSessionInviteParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2924
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2925
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2926
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2930
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a$b;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2932
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v1, "callSessionInviteParticipantsRequestDelivered :: "

    invoke-static {v0, v1, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 2926
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 2940
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callSessionInviteParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2942
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2943
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionInviteParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2950
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2951
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2952
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2956
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/a$b;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2958
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionInviteParticipantsRequestFailed :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2952
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .locals 3

    .line 2702
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callSessionMergeComplete :: newSession ="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2703
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->k(Lcom/android/ims/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2705
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->l(Lcom/android/ims/a;)Lcom/android/ims/a;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/a;->m(Lcom/android/ims/a;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2709
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession;

    .line 2712
    :cond_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->m(Lcom/android/ims/a;)V

    return-void
.end method

.method public final callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 2718
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionMergeFailed :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "reasonInfo="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2722
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2727
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->k(Lcom/android/ims/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2728
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p2}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 2729
    :cond_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->l(Lcom/android/ims/a;)Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2730
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->l(Lcom/android/ims/a;)Lcom/android/ims/a;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 2732
    :cond_1
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionMergeFailed :: No merge host for this conference!"

    invoke-static {p2, v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2734
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2670
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionMergeStarted :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newSession="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", profile="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void
.end method

.method public final callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V
    .locals 2

    .line 3078
    invoke-static {}, Lcom/android/ims/a;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3079
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callSessionMultipartyStateChanged isMultiParty: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "Y"

    goto :goto_0

    :cond_0
    const-string v1, "N"

    .line 3080
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3079
    invoke-static {p1, v0}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 3085
    :cond_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 3086
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 3087
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 3091
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/a$b;->onMultipartyStateChanged(Lcom/android/ims/a;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3093
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionMultipartyStateChanged :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    .line 3087
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3

    .line 2343
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionProgressing :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2345
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2347
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionProgressing :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2354
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2355
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2356
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v1}, Lcom/android/ims/a;->c(Lcom/android/ims/a;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2357
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2361
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a$b;->onCallProgressing(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2363
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionProgressing :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2357
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 2

    .line 2965
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v1, "callSessionRemoveParticipantsRequestDelivered ::"

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2967
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "callSessionRemoveParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2975
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2976
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2977
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2981
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a$b;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2983
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v1, "callSessionRemoveParticipantsRequestDelivered :: "

    invoke-static {v0, v1, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 2977
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 2991
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callSessionRemoveParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2993
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2994
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionRemoveParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 3001
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 3002
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 3003
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3007
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/a$b;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3009
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionRemoveParticipantsRequestFailed :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 3003
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 2613
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionResumeFailed :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2615
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2616
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionResumeFailed :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2621
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->j(Lcom/android/ims/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2622
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Z)Z

    .line 2623
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2627
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter v0

    .line 2628
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object p1

    .line 2629
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/a;->a(Lcom/android/ims/a;I)I

    .line 2630
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 2634
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {p1, v0, p2}, Lcom/android/ims/a$b;->onCallResumeFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2636
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionResumeFailed :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 2630
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 2623
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public final callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2643
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionResumeReceived :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2645
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2646
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionResumeReceived :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2653
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2654
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2655
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v1, p2}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2656
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2660
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a$b;->onCallResumeReceived(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2662
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionResumeReceived :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2656
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2575
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionResumed :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2577
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2578
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionResumed :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2585
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->d(Lcom/android/ims/a;)V

    .line 2595
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2596
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2597
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v1, p2}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2598
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;I)I

    .line 2599
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Z)Z

    .line 2600
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2604
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a$b;->onCallResumed(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2606
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionResumed :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2600
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 3234
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter v0

    .line 3235
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v1

    .line 3236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3240
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/a$b;->onRttAudioIndicatorChanged(Lcom/android/ims/a;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3242
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v1, "callSessionRttAudioIndicatorChanged:: "

    invoke-static {v0, v1, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 3236
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 2

    .line 3217
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter v0

    .line 3218
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v1

    .line 3219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3223
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/a$b;->onRttMessageReceived(Lcom/android/ims/a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3225
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v1, "callSessionRttMessageReceived:: "

    invoke-static {v0, v1, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 3219
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1

    .line 3174
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionRttModifyRequestReceived"

    invoke-static {p1, v0}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 3176
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 3177
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 3178
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3180
    iget-object p1, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3181
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string p2, "callSessionRttModifyRequestReceived:: ignoring request, requested profile is not RTT."

    invoke-static {p1, p2}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3188
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a$b;->onRttModifyRequestReceived(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3190
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionRttModifyRequestReceived:: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 3178
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionRttModifyResponseReceived(I)V
    .locals 3

    .line 3199
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callSessionRttModifyResponseReceived: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 3200
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter v0

    .line 3201
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v1

    .line 3202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3206
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/a$b;->onRttModifyResponseReceived(Lcom/android/ims/a;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3208
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v1, "callSessionRttModifyResponseReceived:: "

    invoke-static {v0, v1, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 3202
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 2405
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionStartFailed :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2407
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionStartFailed :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2413
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->e(Lcom/android/ims/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2416
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->f(Lcom/android/ims/a;)Z

    .line 2421
    :cond_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2422
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2423
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v1, p2}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 2424
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 2428
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/a$b;->onCallStartFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2430
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionStarted :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    .line 2424
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2370
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionStarted :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2372
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2376
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->d(Lcom/android/ims/a;)V

    .line 2382
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2389
    :cond_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter v0

    .line 2390
    :try_start_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object p1

    .line 2391
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v1, p2}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 2396
    :try_start_1
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {p1, p2}, Lcom/android/ims/a$b;->onCallStarted(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2398
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionStarted :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 2392
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 2378
    :cond_2
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionStarted :: on transient session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void
.end method

.method public final callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 3

    .line 3146
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3147
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionSuppServiceReceived :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 3152
    :cond_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionSuppServiceReceived :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", suppServiceInfo"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 3157
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 3158
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 3159
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3163
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/a$b;->onCallSuppServiceReceived(Lcom/android/ims/a;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3165
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionSuppServiceReceived :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 3159
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 2437
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionTerminated :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2439
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2440
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "callSessionTerminated :: on transient session="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2444
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1, p2}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 2448
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->g(Lcom/android/ims/a;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 2449
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callSessionTerminated :: overrideReasonInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v1}, Lcom/android/ims/a;->g(Lcom/android/ims/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2450
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->g(Lcom/android/ims/a;)I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    .line 2451
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 2457
    :goto_0
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2, p1}, Lcom/android/ims/a;->c(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2460
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Lcom/android/ims/a;->d(Lcom/android/ims/a;)V

    return-void
.end method

.method public final callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .locals 2

    .line 3051
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callSessionTtyModeReceived :: mode="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 3055
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 3056
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 3057
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3061
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/a$b;->onCallSessionTtyModeReceived(Lcom/android/ims/a;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3063
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionTtyModeReceived :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 3057
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 2765
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionUpdateFailed :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->b(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2767
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2768
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionUpdateFailed :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2775
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2776
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2777
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/a;->a(Lcom/android/ims/a;I)I

    .line 2778
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2782
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/a$b;->onCallUpdateFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2784
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionUpdateFailed :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2778
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2791
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionUpdateReceived :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2793
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2794
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionUpdateReceived :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2801
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2802
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2803
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v1, p2}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    .line 2804
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;I)I

    .line 2805
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2809
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a$b;->onCallUpdateReceived(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2811
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionUpdateReceived :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2805
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    .line 2739
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionUpdated :: session="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 2741
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2742
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callSessionUpdated :: not supported for transient conference session="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 2749
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 2750
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 2751
    iget-object v1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v1, p2}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2752
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2756
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a$b;->onCallUpdated(Lcom/android/ims/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2758
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string v0, "callSessionUpdated :: "

    invoke-static {p2, v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 2752
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .locals 3

    .line 3025
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callSessionUssdMessageReceived :: mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ussdMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    .line 3028
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3029
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "callSessionUssdMessageReceived :: not supported for transient conference session="

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;)V

    return-void

    .line 3036
    :cond_0
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    monitor-enter p1

    .line 3037
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-static {v0}, Lcom/android/ims/a;->b(Lcom/android/ims/a;)Lcom/android/ims/a$b;

    move-result-object v0

    .line 3038
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3042
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/a$b;->onCallUssdMessageReceived(Lcom/android/ims/a;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3044
    iget-object p2, p0, Lcom/android/ims/a$a;->a:Lcom/android/ims/a;

    const-string p3, "callSessionUssdMessageReceived :: "

    invoke-static {p2, p3, p1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 3038
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
