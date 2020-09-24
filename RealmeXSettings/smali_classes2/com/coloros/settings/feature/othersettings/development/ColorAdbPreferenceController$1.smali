.class final Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ColorAdbPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->b(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Z

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->c(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->b(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mAdbObserver onChange() enableAdb="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorAdbPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
