.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityColorModeFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorAccessibilityColorModeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AccessibilityColorModeFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150035

    return v0
.end method
