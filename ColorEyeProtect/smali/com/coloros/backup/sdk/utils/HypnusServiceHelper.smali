.class public Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_ANIMATION:I = 0xb

.field public static final ACTION_INSTALLATION:I = 0xf

.field public static final ACTION_IO:I = 0xc

.field public static final ACTION_RESUME:I = 0x9

.field public static final ACTION_SCROLLING_H:I = 0x8

.field public static final ACTION_SCROLLING_V:I = 0x7

.field public static final ACTION_SNAPSHOT:I = 0xe

.field private static final HYPNUS_SERVICE:Ljava/lang/String; = "hypnus"

.field private static final TAG:Ljava/lang/String; = "HypnusServiceHelper"

.field public static final TIMEOUT:I = 0x5208

.field private static sHypnusService:Ljava/lang/Object;

.field private static sHypnusServiceInited:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hypnusServiceInit()V
    .locals 8

    sget v0, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->sHypnusServiceInited:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->sHypnusService:Ljava/lang/Object;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "checkService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "hypnus"

    aput-object v3, v1, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string v1, "com.android.internal.app.IHypnusService$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "asInterface"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v5

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v4, "HypnusServiceHelper"

    const-string v6, "hypnusServiceInit getMethod as interface"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->sHypnusService:Ljava/lang/Object;

    sput v2, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->sHypnusServiceInited:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    const-string v0, "HypnusServiceHelper"

    const-string v1, "hypnusServiceInit failed IllegalAccessException"

    goto :goto_0

    :catch_2
    const-string v0, "HypnusServiceHelper"

    const-string v1, "hypnusServiceInit failed InvocationTargetException"

    goto :goto_0

    :catch_3
    const-string v0, "HypnusServiceHelper"

    const-string v1, "hypnusServiceInit failed NoSuchMethodException"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public static hypnusSetAction(II)V
    .locals 7

    sget-object v0, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->sHypnusService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->sHypnusService:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hypnusSetAction"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->sHypnusService:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HypnusServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hypnusSetAction action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " timeout:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    const-string p0, "HypnusServiceHelper"

    const-string p1, "hypnusSetAction failed IllegalAccessException"

    goto :goto_0

    :catch_2
    const-string p0, "HypnusServiceHelper"

    const-string p1, "hypnusSetAction failed InvocationTargetException"

    goto :goto_0

    :catch_3
    const-string p0, "HypnusServiceHelper"

    const-string p1, "hypnusSetAction failed NoSuchMethodException"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method
