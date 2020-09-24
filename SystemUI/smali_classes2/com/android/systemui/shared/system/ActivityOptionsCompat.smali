.class public abstract Lcom/android/systemui/shared/system/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IILjava/lang/Runnable;Landroid/os/Handler;)Landroid/app/ActivityOptions;
    .locals 1

    .line 71
    new-instance v0, Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;

    invoke-direct {v0, p3, p4}, Lcom/android/systemui/shared/system/ActivityOptionsCompat$1;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-static {p0, p1, p2, p4, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeFreeformOptions()Landroid/app/ActivityOptions;
    .locals 2

    .line 59
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x5

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    return-object v0
.end method

.method public static makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-static {p0, v0}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeSplitScreenOptions(ZZ)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeSplitScreenOptions(ZZ)Landroid/app/ActivityOptions;
    .locals 1

    .line 45
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 46
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    xor-int/lit8 p0, p0, 0x1

    .line 49
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    return-object v0
.end method

.method public static setFreezeRecentTasksList(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 0

    .line 86
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    return-object p0
.end method
