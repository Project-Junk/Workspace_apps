.class final Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "NightProtectEyePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->a(Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;)Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->a(Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;)Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
