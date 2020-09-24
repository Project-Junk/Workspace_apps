.class public Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;
.super Ljava/lang/Object;
.source "ColorActivityManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorActivityManagerWrapper"

.field public static final USER_MULTIAPP:I = 0x3e7

.field private static final sInstance:Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;

    invoke-direct {v0}, Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;->sInstance:Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;
    .locals 1

    .line 63
    sget-object v0, Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;->sInstance:Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 0

    .line 120
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 121
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    .line 77
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasDockedTask()Z
    .locals 6

    .line 90
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;->getCurrentUserId()I

    move-result p0

    .line 98
    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    :goto_0
    if-ltz v2, :cond_3

    if-nez v4, :cond_3

    .line 99
    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v4, v4, v2

    if-eq v4, p0, :cond_2

    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v4, v4, v2

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    return v1
.end method

.method public isSystemUser(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public swapDockedAndFullscreen()V
    .locals 3

    const-string p0, "ColorActivityManagerWrapper"

    const-string v0, "StackDivider"

    const-string v1, "swapDockedAndFullscreen"

    .line 67
    invoke-static {v0, p0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    new-instance v0, Landroid/app/OppoActivityManager;

    invoke-direct {v0}, Landroid/app/OppoActivityManager;-><init>()V

    invoke-virtual {v0}, Landroid/app/OppoActivityManager;->swapDockedFullscreenStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swapDockedAndFullscreen e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
