.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorBatteryStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settings/feature/b/a$a;


# instance fields
.field private final b:Landroidx/preference/PreferenceFragmentCompat;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    const-string v0, "battery_status"

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;->b:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "plugged"

    const/4 v2, 0x0

    .line 1025
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "status"

    .line 1026
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    if-ne v1, v2, :cond_0

    const p1, 0x7f1202ec

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    const p1, 0x7f1202ee

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    const p1, 0x7f1202ef

    goto :goto_0

    :cond_2
    const p1, 0x7f1202eb

    .line 1040
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    const v2, 0x7f1202f0

    if-ne p1, v1, :cond_4

    .line 1042
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    if-ne p1, v3, :cond_5

    .line 1044
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    const p1, 0x7f1202f1

    .line 1046
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const p1, 0x7f1202f3

    .line 1048
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 1

    .line 65
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;->c:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/coloros/settings/feature/b/a;->b(Lcom/coloros/settings/feature/b/a$a;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/coloros/settings/feature/b/a;->a(Lcom/coloros/settings/feature/b/a$a;)V

    return-void
.end method
