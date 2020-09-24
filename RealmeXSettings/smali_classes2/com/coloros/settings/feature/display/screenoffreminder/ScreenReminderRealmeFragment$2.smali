.class final Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;
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

    .line 513
    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 516
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const-string v2, "Setting_AodEnableImmediate"

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const-string v0, "Setting_AodUserSetTime"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 523
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1, v0, v2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;Ljava/lang/String;I)V

    .line 525
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->b(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 526
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->c(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 527
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->d(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    .line 529
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->e(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    .line 530
    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->f(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    .line 531
    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    .line 532
    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    .line 533
    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    .line 534
    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 535
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V

    return-void

    .line 538
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;Ljava/lang/String;I)V

    .line 539
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->b(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 540
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;->a:Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V

    :cond_2
    return-void
.end method
