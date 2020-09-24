.class final Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;
.super Landroid/database/ContentObserver;
.source "ScreenReminderRealmeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;Landroid/os/Handler;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 548
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 551
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const-string v2, "Setting_AodUserSetTime"

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 553
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    const-string v1, "Setting_AodEnableImmediate"

    invoke-static {p1, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;Ljava/lang/String;I)V

    .line 554
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->l(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->setVisible(Z)V

    .line 555
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->d(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    return-void

    .line 557
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->l(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->setVisible(Z)V

    .line 558
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->d(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    return-void
.end method
