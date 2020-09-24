.class public Lcom/android/internal/telephony/OppoTelephonyFactory;
.super Ljava/lang/Object;
.source "OppoTelephonyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoTelephonyFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile obj:Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OppoTelephonyFactory;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/android/internal/telephony/OppoTelephonyFactory;->obj:Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;
    .locals 5

    .line 26
    sget-object v0, Lcom/android/internal/telephony/OppoTelephonyFactory;->obj:Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/android/internal/telephony/OppoTelephonyFactory;->obj:Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/OppoTelephonyFactory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.oppo.internal.telephony.OppoTelephonyFactoryImpl"

    .line 31
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    sput-object v1, Lcom/android/internal/telephony/OppoTelephonyFactory;->obj:Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "OppoTelephonyFactory"

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": reflection exception is "

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    sget-object v0, Lcom/android/internal/telephony/OppoTelephonyFactory;->obj:Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    if-eqz v0, :cond_1

    const-string v0, "OppoTelephonyFactory"

    const-string v1, ": successes to get AllImpl object and return...."

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v0, Lcom/android/internal/telephony/OppoTelephonyFactory;->obj:Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    return-object v0

    :cond_1
    const-string v0, "OppoTelephonyFactory"

    const-string v1, ": failes to get AllImpl object"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 39
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getOppoCallManager()Lcom/android/internal/telephony/OppoCallManager;
    .locals 1

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;->getOppoCallManager()Lcom/android/internal/telephony/OppoCallManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOppoDataManager()Lcom/android/internal/telephony/OppoDataManager;
    .locals 1

    .line 70
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;->getOppoDataManager()Lcom/android/internal/telephony/OppoDataManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOppoNetworkManager()Lcom/android/internal/telephony/OppoNetworkManager;
    .locals 1

    .line 56
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;->getOppoNetworkManager()Lcom/android/internal/telephony/OppoNetworkManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOppoPhoneManager()Lcom/android/internal/telephony/OppoPhoneManager;
    .locals 1

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;->getOppoPhoneManager()Lcom/android/internal/telephony/OppoPhoneManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOppoSmsManager()Lcom/android/internal/telephony/OppoSmsManager;
    .locals 1

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;->getOppoSmsManager()Lcom/android/internal/telephony/OppoSmsManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOppoUiccManager()Lcom/android/internal/telephony/OppoUiccManager;
    .locals 1

    .line 49
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getImplObject()Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/OppoTelephonyFactory$OppoTelephonyFactoryInterface;->getOppoUiccManager()Lcom/android/internal/telephony/OppoUiccManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
