.class public Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
.super Ljava/lang/Object;
.source "RecentsAnimationControllerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationControllerCompat"


# instance fields
.field private mAnimationController:Landroid/view/IRecentsAnimationController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/IRecentsAnimationController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    return-void
.end method


# virtual methods
.method public cleanupScreenshot()V
    .locals 2

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0}, Landroid/view/IRecentsAnimationController;->cleanupScreenshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    sget-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v1, "Failed to clean up screenshot of recents animation"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finish(ZZ)V
    .locals 0

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationController;->finish(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 90
    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string p2, "Failed to finish recents animation"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public hideCurrentInputMethod()V
    .locals 2

    .line 74
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0}, Landroid/view/IRecentsAnimationController;->hideCurrentInputMethod()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    sget-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set hide input method"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 1

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->screenshotTask(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/app/ActivityManager$TaskSnapshot;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p0

    .line 43
    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to screenshot task"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    new-instance p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    return-object p0
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 1

    .line 58
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setAnimationTargetsBehindSystemBars(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set whether animation targets are behind system bars"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setCancelWithDeferredScreenshot(Z)V
    .locals 1

    .line 96
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setCancelWithDeferredScreenshot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set cancel with deferred screenshot"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 1

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setInputConsumerEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set input consumer enabled state"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 1

    .line 66
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setSplitScreenMinimized(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    sget-object p1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set minimize dock"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
