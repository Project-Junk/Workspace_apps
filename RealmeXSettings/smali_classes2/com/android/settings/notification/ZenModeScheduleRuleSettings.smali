.class public Lcom/android/settings/notification/ZenModeScheduleRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
    }
.end annotation


# instance fields
.field private final r:Ljava/text/SimpleDateFormat;

.field private s:Landroidx/preference/Preference;

.field private t:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private u:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private v:Landroidx/preference/TwoStatePreference;

.field private w:Lcolor/support/v7/app/AlertDialog;

.field private x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->r:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 4

    .line 4227
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121b72

    .line 4228
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V

    .line 4229
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    .line 4239
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120856

    const/4 v2, 0x0

    .line 4245
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 4246
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->w:Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->f()V

    return-void
.end method

.method private f()V
    .locals 10

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_4

    .line 154
    array-length v1, v0

    if-lez v1, :cond_4

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 157
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->a(Ljava/util/Calendar;)[I

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x7

    if-ge v5, v6, :cond_3

    .line 159
    aget v7, v3, v5

    move v8, v4

    .line 160
    :goto_1
    array-length v9, v0

    if-ge v8, v9, :cond_2

    .line 161
    aget v9, v0, v8

    if-ne v7, v9, :cond_1

    .line 162
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 164
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b:Landroid/content/Context;

    const v7, 0x7f12161e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->r:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->s:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->s:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    return-void

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->s:Landroidx/preference/Preference;

    const v1, 0x7f121b74

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->s:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->f:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 202
    new-instance v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->g:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    .line 204
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->h:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    .line 206
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->f:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->g:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->h:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected final a(Landroid/app/AutomaticZenRule;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 73
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final c()V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "days"

    .line 85
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->s:Landroidx/preference/Preference;

    .line 86
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->s:Landroidx/preference/Preference;

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->t:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 97
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->t:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v3, "start_time"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->t:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f121b8f

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->t:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    .line 1273
    iput-object v3, v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->b:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$a;

    .line 115
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->t:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 116
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->t:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->s:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 118
    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->u:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 119
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->u:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->u:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v2, 0x7f121b1a

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->u:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    .line 2273
    iput-object v2, v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->b:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$a;

    .line 137
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->u:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 138
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->u:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->s:Landroidx/preference/Preference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    const-string v1, "exit_at_alarm"

    .line 140
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->v:Landroidx/preference/TwoStatePreference;

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->v:Landroidx/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected final d()V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->f()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->t:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->a(II)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->u:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->a(II)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->v:Landroidx/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3182
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v0, v1

    .line 3183
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->x:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const v2, 0x7f121b1b

    .line 3186
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->u:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 3277
    iput v2, v0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->a:I

    .line 3278
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->a()V

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

.method public onDestroy()V
    .locals 1

    .line 219
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->w:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->w:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->w:Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method
