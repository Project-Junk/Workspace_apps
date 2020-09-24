.class final Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ColorAutoBrightnessPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->a(Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
