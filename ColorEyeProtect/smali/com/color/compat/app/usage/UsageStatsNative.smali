.class public Lcom/color/compat/app/usage/UsageStatsNative;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppLaunchCount(Landroid/app/usage/UsageStats;)I
    .locals 0

    invoke-static {p0}, Lcom/color/inner/app/usage/UsageStatsWrapper;->getAppLaunchCount(Landroid/app/usage/UsageStats;)I

    move-result p0

    return p0
.end method
