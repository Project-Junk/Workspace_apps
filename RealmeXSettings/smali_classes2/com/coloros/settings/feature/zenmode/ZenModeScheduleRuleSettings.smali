.class public Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;
.super Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;
    }
.end annotation


# instance fields
.field private final j:Ljava/text/SimpleDateFormat;

.field private k:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private q:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private r:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;-><init>()V

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->j:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)V
    .locals 4

    .line 4268
    new-instance v0, Lcom/coloros/settings/feature/zenmode/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/zenmode/a;-><init>(Landroid/content/Context;)V

    .line 4273
    new-instance v1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$5;

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$5;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;Landroid/content/Context;[ILandroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/zenmode/a;->setContentView(Landroid/view/View;)V

    .line 4284
    new-instance v1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$6;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$6;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/zenmode/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4294
    invoke-virtual {v0}, Lcom/coloros/settings/feature/zenmode/a;->show()V

    .line 4295
    invoke-virtual {v0}, Lcom/coloros/settings/feature/zenmode/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 4297
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->q()V

    return-void
.end method

.method private q()V
    .locals 8

    .line 186
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_4

    .line 187
    array-length v1, v0

    if-lez v1, :cond_4

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 190
    :goto_0
    sget-object v5, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 191
    sget-object v5, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    aget v5, v5, v4

    move v6, v3

    .line 192
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_2

    .line 193
    aget v7, v0, v6

    if-ne v5, v7, :cond_1

    const/4 v6, 0x7

    .line 194
    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f12161e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->j:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->notifyDependencyChange(Z)V

    return-void

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121b74

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->notifyDependencyChange(Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ZenModeSettings"

    return-object v0
.end method

.method protected final a(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final c()V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "schedule_rule_toggle"

    .line 112
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->k:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 113
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->k:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v2, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "days"

    .line 127
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 129
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    new-instance v2, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$2;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->q:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 140
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->q:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v3, "start_time"

    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->q:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f121b8f

    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 142
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->q:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$3;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$3;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)V

    .line 1329
    iput-object v3, v2, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$a;

    .line 158
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->q:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 159
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->q:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 161
    new-instance v2, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->r:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 162
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->r:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->r:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v2, 0x7f121b1a

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 164
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->r:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v2, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)V

    .line 2329
    iput-object v2, v1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$a;

    .line 180
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->r:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 181
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->r:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->p:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final e()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->k:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->q()V

    .line 235
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->q:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a(II)V

    .line 236
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->r:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a(II)V

    .line 3220
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v0, v1

    .line 3221
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->s:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const v2, 0x7f121b1b

    .line 3224
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->r:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 3333
    iput v2, v0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a:I

    .line 3334
    invoke-virtual {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;->a()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x90

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150159

    return v0
.end method
