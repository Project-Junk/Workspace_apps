.class public Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "ScreenReminderFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/coloros/settings/ColorSubSettings$a;
.implements Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:[Ljava/lang/String;

.field private l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

.field private m:Lcom/color/support/preference/ColorSwitchPreference;

.field private n:Lcom/color/support/preference/ColorSwitchPreference;

.field private o:Lcom/color/support/preference/ColorSwitchPreference;

.field private p:Lcom/color/support/preference/ColorJumpPreference;

.field private q:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

.field private r:Landroid/content/ContentResolver;

.field private s:Landroid/app/Activity;

.field private t:Landroidx/preference/PreferenceCategory;

.field private u:Landroidx/preference/PreferenceCategory;

.field private v:Landroidx/preference/PreferenceCategory;

.field private w:Landroidx/preference/Preference;

.field private final x:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 335
    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    .line 328
    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment$1;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->x:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Lcom/color/support/preference/ColorJumpPreference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->e:Z

    if-nez v0, :cond_1

    const v0, 0x7f120199

    .line 166
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorJumpPreference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 170
    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorJumpPreference;->setEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->c()V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v0, -0x2

    const-string v1, "Setting_AodUserSetTime"

    if-eqz p1, :cond_1

    .line 376
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->h:Z

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 377
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->h:Z

    .line 378
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.TIME_TICK"

    .line 379
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 383
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 384
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->g:Z

    return-void

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a()V

    .line 387
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 388
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 389
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->g:Z

    return-void
.end method

.method private b()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->q:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDateModeSummary: mDateMode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenReminderFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->q:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->k:[Ljava/lang/String;

    iget v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->j:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->j:I

    const/4 v2, -0x2

    const-string v3, "Setting_AodEnableDateMode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private c()V
    .locals 8

    .line 184
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->f:Z

    iget-boolean v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->g:Z

    iget v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->a:I

    iget v5, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->b:I

    iget v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->c:I

    iget v7, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->d:I

    invoke-static/range {v1 .. v7}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/Context;ZZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 7

    .line 191
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "Setting_AodEnableImmediate"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 193
    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    const-string v4, "Setting_AodUserSetTime"

    invoke-static {v3, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 195
    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    const-string v5, "Setting_AodEnableClockOnly"

    invoke-static {v4, v5, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateViewForOpenState: checkEnableState is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " checkTimeState is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " checkClockOnlyState is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScreenReminderFragment"

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v2

    .line 199
    :goto_0
    iput-boolean v5, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->f:Z

    if-ne v3, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    .line 200
    :goto_1
    iput-boolean v5, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->g:Z

    .line 201
    iget-object v5, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    if-ne v0, v4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    invoke-virtual {v5, v6}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 202
    iget-object v5, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    if-ne v3, v4, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    invoke-virtual {v5, v6}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 203
    iget-object v5, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->o:Lcom/color/support/preference/ColorSwitchPreference;

    if-ne v1, v4, :cond_4

    move v6, v4

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    invoke-virtual {v5, v6}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    if-eq v1, v4, :cond_5

    .line 204
    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->i:Z

    if-nez v1, :cond_6

    .line 205
    :cond_5
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->q:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setVisible(Z)V

    .line 207
    :cond_6
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->q:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iget v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->j:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->c()V

    .line 209
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->G(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 210
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->w:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12018a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    :cond_7
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v1}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 214
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->t:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 215
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->p:Lcom/color/support/preference/ColorJumpPreference;

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->a(Lcom/color/support/preference/ColorJumpPreference;)V

    .line 216
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->b()V

    .line 217
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v1}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 218
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 220
    :cond_8
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 223
    :cond_9
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 224
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a()V

    .line 225
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 226
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->t:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 227
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->v:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :goto_5
    if-nez v3, :cond_a

    if-nez v0, :cond_a

    .line 230
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    .line 231
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    .line 232
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 233
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setEnabled(Z)V

    .line 237
    :cond_a
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 238
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->t:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->p:Lcom/color/support/preference/ColorJumpPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 0

    .line 436
    iput p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->a:I

    .line 437
    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->b:I

    .line 438
    iput p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->c:I

    .line 439
    iput p4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->d:I

    .line 440
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->c()V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const p3, 0x102000a

    .line 88
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    if-eqz p3, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 91
    invoke-virtual {p3, p2, v0, p2, p2}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_0
    const/4 p3, 0x1

    .line 94
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->setAnimationAllowed(Z)V

    .line 1106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    .line 1107
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    instance-of v1, v0, Lcom/coloros/settings/ColorSubSettings;

    if-eqz v1, :cond_1

    .line 1108
    check-cast v0, Lcom/coloros/settings/ColorSubSettings;

    .line 2034
    iput-object p0, v0, Lcom/coloros/settings/ColorSubSettings;->a:Lcom/coloros/settings/ColorSubSettings$a;

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 1113
    invoke-virtual {v0, p3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1114
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const v0, 0x7f15010b

    .line 96
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->addPreferencesFromResource(I)V

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    .line 2125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2126
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkTheme: globalClockType is "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenReminderFragment"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, p3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    move p2, p3

    .line 2127
    :cond_3
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->e:Z

    .line 2151
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/ContentResolver;)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->a:I

    .line 2152
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->b(Landroid/content/ContentResolver;)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->b:I

    .line 2153
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->c(Landroid/content/ContentResolver;)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->c:I

    .line 2154
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->d(Landroid/content/ContentResolver;)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->d:I

    .line 2155
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->c(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->i:Z

    .line 2156
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x2

    const-string v1, "Setting_AodEnableDateMode"

    invoke-static {p2, v1, p3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->j:I

    .line 2158
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030005

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->k:[Ljava/lang/String;

    const-string p2, "key_aod_preference_category"

    .line 3132
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    const-string p2, "key_aod_setting_category"

    .line 3133
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->t:Landroidx/preference/PreferenceCategory;

    const-string p2, "key_immediately_open"

    .line 3134
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    const-string p2, "key_clock_only"

    .line 3135
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->o:Lcom/color/support/preference/ColorSwitchPreference;

    const-string p2, "key_fixed_time_settings"

    .line 3136
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    const-string p2, "key_fixed_time_open"

    .line 3137
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    const-string p2, "key_clock_mode"

    .line 3138
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/color/support/preference/ColorJumpPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->p:Lcom/color/support/preference/ColorJumpPreference;

    const-string p2, "key_date_mode"

    .line 3139
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->q:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    const-string p2, "key_tips_summary"

    .line 3140
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->w:Landroidx/preference/Preference;

    const-string p2, "key_aod_tips_category"

    .line 3141
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->v:Landroidx/preference/PreferenceCategory;

    .line 3143
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p2, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 3144
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    .line 3296
    iput-object p0, p2, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference$a;

    .line 3145
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->o:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p2, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 3146
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p2, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 3147
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->q:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p2, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->d()V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 321
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onPause()V

    .line 322
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->h:Z

    .line 324
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 274
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 277
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "key_fixed_time_open"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_1
    const-string v3, "key_immediately_open"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v6

    goto :goto_1

    :sswitch_2
    const-string v3, "key_date_mode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_3
    const-string v3, "key_clock_only"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v5

    :cond_1
    :goto_1
    if-eqz v2, :cond_9

    const/4 p1, -0x2

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    goto/16 :goto_4

    .line 291
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->j:I

    .line 292
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->b()V

    .line 293
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->j:I

    const-string v1, "Setting_AodEnableDateMode"

    invoke-static {p2, v1, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_4

    :cond_3
    const-string p2, "Setting_AodEnableClockOnly"

    if-eqz v0, :cond_5

    .line 4420
    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->i:Z

    if-eqz v2, :cond_4

    .line 4421
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->q:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setVisible(Z)V

    .line 4423
    :cond_4
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    invoke-static {v2, p2, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    .line 4426
    :cond_5
    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->i:Z

    if-eqz v2, :cond_6

    .line 4427
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->q:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v2, v6}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setVisible(Z)V

    .line 4429
    :cond_6
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    invoke-static {v2, p2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 288
    :goto_2
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    const-string p2, "aod_clock_only"

    invoke-static {p1, p2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 4394
    :cond_7
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->a()V

    .line 4395
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {p2, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const-string p2, "Setting_AodEnableImmediate"

    if-eqz v0, :cond_8

    .line 4397
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 4398
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->t:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 4399
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->p:Lcom/color/support/preference/ColorJumpPreference;

    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->a(Lcom/color/support/preference/ColorJumpPreference;)V

    .line 4400
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->b()V

    .line 4401
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->v:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 4402
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    invoke-static {v2, p2, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4405
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->a(Z)V

    .line 4406
    iput-boolean v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->f:Z

    goto :goto_3

    .line 4408
    :cond_8
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->u:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 4409
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->t:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 4410
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->v:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 4411
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->r:Landroid/content/ContentResolver;

    invoke-static {v2, p2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4413
    iput-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->f:Z

    .line 4415
    :goto_3
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 284
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    const-string p2, "aod_immediate_open"

    invoke-static {p1, p2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 279
    :cond_9
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->a(Z)V

    .line 280
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    const-string p2, "aod_time_open"

    invoke-static {p1, p2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 299
    :goto_4
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 300
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->t:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->p:Lcom/color/support/preference/ColorJumpPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 302
    :cond_a
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->c()V

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59cf54e3 -> :sswitch_3
        -0x4da4f24c -> :sswitch_2
        -0x33dbe135 -> :sswitch_1
        0x73d9bb91 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 3

    .line 308
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onResume()V

    .line 309
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 310
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->d()V

    .line 311
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->h:Z

    .line 313
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 249
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 254
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onStop()V

    .line 255
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4261
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4262
    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->a:I

    iget v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->b:I

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 4263
    iget v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->c:I

    iget v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->d:I

    invoke-static {v2, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->b(II)Ljava/lang/String;

    move-result-object v2

    .line 4264
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startTime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " endTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScreenReminderFragment"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "aod_time_start"

    .line 4266
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aod_time_end"

    .line 4267
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4268
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;->s:Landroid/app/Activity;

    const-string v2, "20012"

    const-string v3, "aod_time_settings"

    invoke-static {v1, v2, v3, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
