.class public Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;
.super Ljava/lang/Object;
.source "PerfServiceManager.java"


# static fields
.field private static final CPU_MAX_TIME:I = 0x78

.field private static final MTK_PERF_SERVICE:Ljava/lang/String; = "mtk-perfservice"

.field private static final TAG:Ljava/lang/String; = "PerfServiceManager"

.field private static mPerfService:Ljava/lang/Object; = null

.field private static mPerfServiceHandle:I = -0x1

.field private static mPerfServiceInited:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static perfServiceDisable()V
    .locals 6

    .line 98
    sget v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceInited:I

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 103
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "userDisable"

    const/4 v2, 0x1

    .line 104
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceHandle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static perfServiceEnable()V
    .locals 7

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPerfServiceInited + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceInited:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceInited:I

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 88
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "userEnableTimeout"

    const/4 v2, 0x2

    .line 89
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceHandle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static perfServiceInit()V
    .locals 12

    const-string v0, "PerfServiceManager"

    const-string v1, "start perfserviceinit"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget v1, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceInited:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v1, :cond_1

    .line 31
    sget-object v1, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v1, "mtk-perfservice"

    .line 32
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v5, "com.mediatek.perfservice.IPerfService$Stub"

    .line 36
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "asInterface"

    .line 38
    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getMethod as interface"

    .line 39
    invoke-static {v0, v6}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    const-string v1, "perfServiceInit can not find MTK_PRE_SERVICE"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 47
    sput v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceInited:I

    return-void

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v0, "ro.hardware"

    .line 54
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt6752"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v0, :cond_2

    .line 56
    :try_start_1
    sget-object v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "userReg"

    .line 57
    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    sget-object v4, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    const v3, 0x19c990

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceHandle:I

    goto :goto_1

    .line 67
    :cond_2
    sget-object v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v7, "userRegBigLittle"

    const/4 v8, 0x6

    .line 68
    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v10, v9, v11

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 70
    sget-object v7, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfService:Ljava/lang/Object;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const v3, 0x1dc130

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    aput-object v4, v8, v5

    aput-object v4, v8, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v11

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceHandle:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :catch_1
    :goto_1
    sput v2, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->mPerfServiceInited:I

    :cond_3
    return-void
.end method
