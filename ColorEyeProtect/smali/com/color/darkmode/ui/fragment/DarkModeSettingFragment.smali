.class public final Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;
.super Lcom/color/darkmode/base/BasePreferenceFragment;


# instance fields
.field private mDarkModeUseHintPreference:Landroidx/preference/Preference;

.field private mEnabledPreference:Lcom/color/support/preference/ColorSwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIsRealme:Z

.field private mJob:Lb/a/ap;

.field private mManagePreference:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

.field private mManagerPreferenceDivider:Landroidx/preference/Preference;

.field private mSetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

.field private mSunsetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

.field private mTimePickerPreference:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$changeDarkMode(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->changeDarkMode(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic access$getMEnabledPreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/support/preference/ColorSwitchPreference;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mEnabledPreference:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez p0, :cond_0

    const-string v0, "mEnabledPreference"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMHandler$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Landroid/os/Handler;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    const-string v0, "mHandler"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMManagePreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mManagePreference:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    if-nez p0, :cond_0

    const-string v0, "mManagePreference"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMManagerPreferenceDivider$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Landroidx/preference/Preference;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mManagerPreferenceDivider:Landroidx/preference/Preference;

    if-nez p0, :cond_0

    const-string v0, "mManagerPreferenceDivider"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMSetTimeSwitch$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/support/preference/ColorSwitchPreference;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez p0, :cond_0

    const-string v0, "mSetTimeSwitch"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMSunsetTimeSwitch$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/support/preference/ColorSwitchPreference;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSunsetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez p0, :cond_0

    const-string v0, "mSunsetTimeSwitch"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$refreshCount(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->refreshCount()V

    return-void
.end method

.method public static final synthetic access$setMEnabledPreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Lcom/color/support/preference/ColorSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mEnabledPreference:Lcom/color/support/preference/ColorSwitchPreference;

    return-void
.end method

.method public static final synthetic access$setMHandler$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setMManagePreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mManagePreference:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    return-void
.end method

.method public static final synthetic access$setMManagerPreferenceDivider$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mManagerPreferenceDivider:Landroidx/preference/Preference;

    return-void
.end method

.method public static final synthetic access$setMSetTimeSwitch$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Lcom/color/support/preference/ColorSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    return-void
.end method

.method public static final synthetic access$setMSunsetTimeSwitch$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Lcom/color/support/preference/ColorSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSunsetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    return-void
.end method

.method public static final synthetic access$showCheckUseDialog(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Lcom/color/support/widget/c$c;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->showCheckUseDialog(Lcom/color/support/widget/c$c;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$switchSunsetAndSunriseTime(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->switchSunsetAndSunriseTime(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic access$switchTime(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/content/ContentResolver;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->switchTime(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method private final changeDarkMode(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/color/darkmode/utils/DarkModeManager;->immediatelyUpdateDarkModeSwitch(Landroid/content/Context;ZZ)V

    sget-object p0, Lcom/color/darkmode/utils/StatisticsUtils;->INSTANCE:Lcom/color/darkmode/utils/StatisticsUtils;

    invoke-virtual {p0, p1, p2, v0}, Lcom/color/darkmode/utils/StatisticsUtils;->reportSwitchOpen(Landroid/content/Context;ZZ)V

    :cond_0
    return-void
.end method

.method private final initApplicationManagePreference()V
    .locals 3

    const v0, 0x7f0f006e

    invoke-virtual {p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mManagerPreferenceDivider:Landroidx/preference/Preference;

    const v0, 0x7f0f006d

    invoke-virtual {p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    iput-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mManagePreference:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mDarkModeUseHintPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mDarkModeUseHintPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    const-string v1, "mDarkModeUseHintPreference"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mEnabledPreference:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_1

    const-string v2, "mEnabledPreference"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/color/support/preference/ColorSwitchPreference;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mManagePreference:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    if-nez v0, :cond_2

    const-string v1, "mManagePreference"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mEnabledPreference:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_3

    const-string v2, "mEnabledPreference"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/color/support/preference/ColorSwitchPreference;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mManagePreference:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    if-nez v0, :cond_4

    const-string v1, "mManagePreference"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;

    invoke-direct {v1, p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)V

    check-cast v1, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->setMOnClickListener(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;)V

    return-void

    :cond_5
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type androidx.preference.Preference"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type com.color.darkmode.ui.widget.DarkModeJumpPreference"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type androidx.preference.Preference"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final initEnableSwitch()V
    .locals 5

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const v1, 0x7f0f0070

    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mEnabledPreference:Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mEnabledPreference:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_1

    const-string v2, "mEnabledPreference"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    const-string v4, "context!!"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mEnabledPreference:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_3

    const-string v2, "mEnabledPreference"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;

    invoke-direct {v2, p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/content/ContentResolver;)V

    check-cast v2, Landroidx/preference/Preference$c;

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_1

    :cond_4
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type com.color.support.preference.ColorSwitchPreference"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method private final initSunsetSunriseSwitch()V
    .locals 5

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    const v1, 0x7f0f0074

    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSunsetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSunsetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_1

    const-string v2, "mSunsetTimeSwitch"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    const-string v4, "context!!"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/color/darkmode/utils/RealmeUtils;->isDarkSunsetToSunriseSwitch(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSunsetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_3

    const-string v2, "mSunsetTimeSwitch"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/color/support/preference/ColorSwitchPreference;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_4

    const-string v2, "mSetTimeSwitch"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mTimePickerPreference:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    if-nez v1, :cond_5

    const-string v3, "mTimePickerPreference"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->setVisible(Z)V

    :cond_6
    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSunsetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_7

    const-string v2, "mSunsetTimeSwitch"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_7
    new-instance v2, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initSunsetSunriseSwitch$1;

    invoke-direct {v2, p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initSunsetSunriseSwitch$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/content/ContentResolver;)V

    check-cast v2, Landroidx/preference/Preference$c;

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_1

    :cond_8
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type com.color.support.preference.ColorSwitchPreference"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_1
    return-void
.end method

.method private final initTimeSwitch()V
    .locals 4

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    const v1, 0x7f0f0073

    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    const v1, 0x7f0f0072

    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    iput-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mTimePickerPreference:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_1

    const-string v2, "mSetTimeSwitch"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v2, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mTimePickerPreference:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    if-nez v1, :cond_2

    const-string v2, "mTimePickerPreference"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v2, :cond_3

    const-string v3, "mSetTimeSwitch"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/color/support/preference/ColorSwitchPreference;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v1, :cond_4

    const-string v2, "mSetTimeSwitch"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initTimeSwitch$1;

    invoke-direct {v2, p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initTimeSwitch$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/content/ContentResolver;)V

    check-cast v2, Landroidx/preference/Preference$c;

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_1

    :cond_5
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type com.color.darkmode.ui.widget.DarkModeSettingTimePreference"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type com.color.support.preference.ColorSwitchPreference"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method private final refreshCount()V
    .locals 7

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mJob:Lb/a/ap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/ap;->k()V

    :cond_0
    sget-object v0, Lb/a/ak;->a:Lb/a/ak;

    move-object v1, v0

    check-cast v1, Lb/a/s;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;La/b/c;)V

    move-object v4, v0

    check-cast v4, La/d/a/m;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lb/a/b;->a(Lb/a/s;La/b/f;Lb/a/u;La/d/a/m;ILjava/lang/Object;)Lb/a/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mJob:Lb/a/ap;

    return-void
.end method

.method private final showCheckUseDialog(Lcom/color/support/widget/c$c;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v2, "contentResolver"

    invoke-static {v0, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isDarkModeSwitchOpenNeverHint(Landroid/content/ContentResolver;)Z

    move-result v1

    sget-object v2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    const-string v4, "context!!"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result v2

    sget-object v3, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v3, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mIsRealme:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-object v3, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    const-string v6, "context!!"

    invoke-static {v5, v6}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/color/darkmode/utils/RealmeUtils;->isDarkSunsetToSunriseSwitch(Landroid/content/Context;)Z

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    const/4 v5, 0x1

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/color/support/widget/c$a;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/color/support/widget/c$a;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0f008f

    invoke-virtual {v0, p0}, Lcom/color/support/widget/c$a;->a(I)Lcom/color/support/widget/c$a;

    move-result-object p0

    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Lcom/color/support/widget/c$a;->b(I)Lcom/color/support/widget/c$a;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/color/support/widget/c$a;->b(Z)Lcom/color/support/widget/c$a;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/color/support/widget/c$a;->a(Z)Lcom/color/support/widget/c$a;

    move-result-object p0

    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/color/support/widget/c$a;->e(I)Lcom/color/support/widget/c$a;

    move-result-object p0

    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/color/support/widget/c$a;->c(I)Lcom/color/support/widget/c$a;

    move-result-object p0

    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/color/support/widget/c$a;->d(I)Lcom/color/support/widget/c$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/color/support/widget/c$a;->a(Lcom/color/support/widget/c$c;)Lcom/color/support/widget/c$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/color/support/widget/c$a;->a()Lcom/color/support/widget/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/color/support/widget/c;->a()V

    move v4, v5

    :cond_5
    :goto_1
    return v4
.end method

.method private final switchSunsetAndSunriseTime(Landroid/content/Context;Z)V
    .locals 2

    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {v0, p1, p2}, Lcom/color/darkmode/utils/RealmeUtils;->setDarkSunsetToSunriseSwitch(Landroid/content/Context;I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mTimePickerPreference:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    if-nez p2, :cond_0

    const-string v1, "mTimePickerPreference"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2, v0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->setVisible(Z)V

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez p0, :cond_1

    const-string p2, "mSetTimeSwitch"

    invoke-static {p2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "context.contentResolver"

    invoke-static {p2, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;Z)Z

    :cond_2
    sget-object p0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeBySunsetToSunriseTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZILjava/lang/Object;)V

    return-void
.end method

.method private final switchTime(Landroid/content/ContentResolver;Z)V
    .locals 7

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mIsRealme:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mSunsetTimeSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    if-nez v0, :cond_0

    const-string v1, "mSunsetTimeSwitch"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    const-string v3, "context!!"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/color/darkmode/utils/RealmeUtils;->setDarkSunsetToSunriseSwitch(Landroid/content/Context;I)V

    :cond_2
    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v0, p1, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;Z)Z

    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    const-string p1, "context!!"

    invoke-static {v2, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeByTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mTimePickerPreference:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    if-nez p0, :cond_4

    const-string p1, "mTimePickerPreference"

    invoke-static {p1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(R.string.dark_mode)"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/color/darkmode/base/BasePreferenceFragment;->onAttach(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->setRetainInstance(Z)V

    sget-object p1, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p1}, Lcom/color/darkmode/utils/RealmeUtils;->isRealmePhone()Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mIsRealme:Z

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/color/darkmode/base/BasePreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f120024

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->initEnableSwitch()V

    invoke-direct {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->initTimeSwitch()V

    iget-boolean p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mIsRealme:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->initSunsetSunriseSwitch()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_2

    const p2, 0x7f0f0074

    invoke-virtual {p0, p2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/color/support/preference/ColorSwitchPreference;

    check-cast p2, Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->c(Landroidx/preference/Preference;)Z

    :goto_0
    invoke-direct {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->initApplicationManagePreference()V

    return-void

    :cond_1
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type com.color.support.preference.ColorSwitchPreference"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type androidx.preference.PreferenceScreen"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mJob:Lb/a/ap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/ap;->k()V

    :cond_0
    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_1

    const-string v0, "mHandler"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->refreshCount()V

    return-void
.end method
