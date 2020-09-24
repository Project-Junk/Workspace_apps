.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryLevelPreferenceController;
.super Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;
.source "ColorBatteryLevelPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    const-string v0, "battery_level"

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/android/settings/m;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
