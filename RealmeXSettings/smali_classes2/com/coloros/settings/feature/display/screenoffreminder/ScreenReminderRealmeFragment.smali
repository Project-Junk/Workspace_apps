.class public Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "ScreenReminderRealmeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/coloros/settings/ColorSubSettings$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private A:Z

.field private B:Landroid/database/ContentObserver;

.field private C:Landroid/database/ContentObserver;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

.field private m:Lcom/color/support/preference/ColorSwitchPreference;

.field private n:Lcom/color/support/preference/ColorSwitchPreference;

.field private o:Lcom/color/support/preference/ColorSwitchPreference;

.field private p:Lcom/color/support/preference/ColorSwitchPreference;

.field private q:Landroid/content/ContentResolver;

.field private r:Landroid/app/Activity;

.field private s:Landroidx/preference/PreferenceCategory;

.field private t:Landroidx/preference/PreferenceCategory;

.field private u:Lcolor/support/v7/app/AlertDialog;

.field private v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

.field private w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

.field private x:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

.field private y:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 351
    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    .line 513
    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$2;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->B:Landroid/database/ContentObserver;

    .line 545
    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment$3;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->C:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "key_aod_clock_date_select"

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;I)V

    .line 177
    iput p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->e:I

    .line 178
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->u:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;Ljava/lang/String;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " set"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenReminderRealmeFragment"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/color/support/preference/ColorSwitchPreference;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    return-object p0
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "key_realme_aod_clock_mode"

    .line 494
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    const-string v1, "key_aod_clock_date"

    .line 495
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    const-string v1, "key_realme_aod_notification_icon"

    .line 496
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    const-string v1, "key_realme_aod_battery"

    .line 497
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 498
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    .line 499
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    .line 500
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    .line 501
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->s:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method private synthetic c()V
    .locals 3

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.AOD_SETTING_CLOCK_PREVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "want"

    const-string v2, "signature"

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/color/support/preference/ColorSwitchPreference;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    return-object p0
.end method

.method private synthetic d()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->x:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    const-string v1, "com.coloros.settings.feature.display.screenoffreminder.ScreenReminderNotificationFragment"

    .line 10565
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 10567
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    const-string v2, "ScreenReminderRealmeFragment"

    if-eqz v1, :cond_0

    .line 10568
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 10569
    invoke-interface {v1, p0, v0}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    const-string v0, "use SubSettingLauncher"

    .line 10570
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10575
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "use fragment stack"

    .line 10576
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10577
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 10578
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 10579
    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 10580
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v3

    .line 10581
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 10580
    invoke-virtual {v3, v4, v0}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 10582
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    .line 10583
    invoke-virtual {v0, p0, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 10584
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 10588
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 10589
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 10590
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method private synthetic e()V
    .locals 4

    .line 173
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120183

    .line 174
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 175
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->f:[Ljava/lang/String;

    iget v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->e:I

    new-instance v3, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$u6_U-d6MHMSEne3SwrG1BMbSZE4;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$u6_U-d6MHMSEne3SwrG1BMbSZE4;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->u:Lcolor/support/v7/app/AlertDialog;

    .line 181
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->u:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    return p0
.end method

.method private synthetic f()V
    .locals 3

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.AOD_SETTING_CLOCK_PREVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "want"

    const-string v2, "clock"

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    return p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    return p0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    return p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    return p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "key_realme_aod_clock_mode"

    .line 11476
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    const-string v1, "key_aod_clock_date"

    .line 11477
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    const-string v1, "key_realme_aod_notification_icon"

    .line 11478
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    const-string v1, "key_realme_aod_battery"

    .line 11479
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 11480
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    .line 11481
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    .line 11482
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    .line 11483
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    .line 11484
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->o:Lcom/color/support/preference/ColorSwitchPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 11485
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->x:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 11486
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 11487
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->p:Lcom/color/support/preference/ColorSwitchPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 11488
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 11489
    iget-object p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const-string v0, "realme_aod_notification_black_pkg"

    const-string v1, ""

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic k(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V
    .locals 2

    .line 12464
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->b()V

    const/4 v0, 0x0

    const-string v1, "key_realme_aod_signature"

    .line 12465
    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 12466
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    .line 12467
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->o:Lcom/color/support/preference/ColorSwitchPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 12468
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->x:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 12469
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 12470
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->p:Lcom/color/support/preference/ColorSwitchPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 12471
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->y:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 12472
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic l(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    return-object p0
.end method

.method public static synthetic lambda$SRG9Wf-pf3j2o-mTU0yXVo0H_S8(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->f()V

    return-void
.end method

.method public static synthetic lambda$ULGnY9C0bQsX0AgE7I6dGi3tUvg(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->c()V

    return-void
.end method

.method public static synthetic lambda$oZQLQuXz1iuelu9QRcD59YOMuR8(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->e()V

    return-void
.end method

.method public static synthetic lambda$qLHihOHSYwNd-dudEU9AxmlSxMQ(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->d()V

    return-void
.end method

.method public static synthetic lambda$u6_U-d6MHMSEne3SwrG1BMbSZE4(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
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
    .locals 4

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const p3, 0x102000a

    .line 110
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    if-eqz p3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 113
    invoke-virtual {p3, p2, v0, p2, p2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    .line 1127
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    instance-of v0, p3, Lcom/coloros/settings/ColorSubSettings;

    if-eqz v0, :cond_1

    .line 1128
    check-cast p3, Lcom/coloros/settings/ColorSubSettings;

    .line 2034
    iput-object p0, p3, Lcom/coloros/settings/ColorSubSettings;->a:Lcom/coloros/settings/ColorSubSettings$a;

    .line 1130
    :cond_1
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p3

    .line 1131
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    .line 1133
    invoke-virtual {p3, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1134
    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1136
    :cond_2
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    invoke-static {p3}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const p3, 0x7f15010a

    .line 117
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->addPreferencesFromResource(I)V

    .line 118
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    .line 2595
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0b0002

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 2596
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "checkTheme: globalClockType is "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScreenReminderRealmeFragment"

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p3, v1, :cond_3

    if-eq p3, v0, :cond_3

    const/4 v2, 0x3

    if-eq p3, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, p2

    .line 2597
    :goto_0
    iput-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->z:Z

    .line 3200
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    invoke-static {p3}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/ContentResolver;)I

    move-result p3

    iput p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a:I

    .line 3201
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    invoke-static {p3}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->b(Landroid/content/ContentResolver;)I

    move-result p3

    iput p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->b:I

    .line 3202
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    invoke-static {p3}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->c(Landroid/content/ContentResolver;)I

    move-result p3

    iput p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->c:I

    .line 3203
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    invoke-static {p3}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->d(Landroid/content/ContentResolver;)I

    move-result p3

    iput p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->d:I

    .line 3204
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v1, -0x2

    const-string v2, "key_aod_clock_date_select"

    invoke-static {p3, v2, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    iput p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->e:I

    .line 3206
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f030005

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 3207
    array-length v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3208
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->A:Z

    .line 3209
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->f:[Ljava/lang/String;

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 3211
    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->f:[Ljava/lang/String;

    aget-object v3, p3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string p3, "key_aod_preference_category"

    .line 4145
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Landroidx/preference/PreferenceCategory;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->t:Landroidx/preference/PreferenceCategory;

    const-string p3, "key_aod_setting_category"

    .line 4146
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Landroidx/preference/PreferenceCategory;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->s:Landroidx/preference/PreferenceCategory;

    const-string p3, "key_aod_immediately_open"

    .line 4147
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    const-string p3, "key_realme_aod_battery"

    .line 4148
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->o:Lcom/color/support/preference/ColorSwitchPreference;

    const-string p3, "key_fixed_time_settings"

    .line 4149
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    const-string p3, "key_aod_fixed_time_open"

    .line 4150
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    const-string p3, "key_realme_aod_clock_mode"

    .line 4151
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    const-string p3, "key_aod_clock_date"

    .line 4152
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    const-string p3, "key_aod_clock_date_ex"

    .line 4153
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->p:Lcom/color/support/preference/ColorSwitchPreference;

    const-string p3, "key_realme_aod_notification_icon"

    .line 4154
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->x:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    const-string p3, "key_realme_aod_signature"

    .line 4155
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iput-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->y:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    .line 4157
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p3, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4158
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p3, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4159
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->o:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p3, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4160
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    invoke-virtual {p3, p0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4161
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    invoke-virtual {p3, p0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4162
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->p:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p3, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4163
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->x:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    invoke-virtual {p3, p0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4164
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->y:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    invoke-virtual {p3, p0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4166
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$SRG9Wf-pf3j2o-mTU0yXVo0H_S8;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$SRG9Wf-pf3j2o-mTU0yXVo0H_S8;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V

    .line 5121
    iput-object v0, p3, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->a:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;

    .line 4172
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$oZQLQuXz1iuelu9QRcD59YOMuR8;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$oZQLQuXz1iuelu9QRcD59YOMuR8;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V

    .line 6121
    iput-object v0, p3, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->a:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;

    .line 4185
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->x:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$qLHihOHSYwNd-dudEU9AxmlSxMQ;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$qLHihOHSYwNd-dudEU9AxmlSxMQ;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V

    .line 7121
    iput-object v0, p3, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->a:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;

    .line 4188
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->y:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$ULGnY9C0bQsX0AgE7I6dGi3tUvg;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/-$$Lambda$ScreenReminderRealmeFragment$ULGnY9C0bQsX0AgE7I6dGi3tUvg;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;)V

    .line 8121
    iput-object v0, p3, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->a:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;

    .line 4194
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 4195
    iget-object p3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    invoke-virtual {p3, p2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setVisible(Z)V

    :cond_5
    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 346
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onPause()V

    .line 347
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->B:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 348
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->C:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 310
    instance-of v2, v1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 311
    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    .line 313
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7b4d7e0c

    const/4 v9, 0x1

    if-eq v6, v7, :cond_2

    const v7, 0x79cdcf48

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "key_aod_fixed_time_open"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_2
    const-string v6, "key_aod_immediately_open"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v9

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_11

    const-string v6, "Setting_AodEnableImmediate"

    if-eq v5, v9, :cond_e

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_4

    .line 8399
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v3

    .line 8402
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v5, "key_aod_clock_date"

    const-string v7, "key_realme_aod_notification_icon"

    const-string v10, "key_realme_aod_clock_mode"

    const-string v11, "key_realme_aod_battery"

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const-string v8, "key_realme_aod_signature"

    sparse-switch v2, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v2, "key_aod_clock_date_ex"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v14

    goto :goto_5

    :sswitch_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v15

    goto :goto_5

    :sswitch_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v13

    goto :goto_5

    :sswitch_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v9

    goto :goto_5

    :sswitch_4
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_5

    :sswitch_5
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v12

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v2, -0x1

    :goto_5
    if-eqz v2, :cond_b

    if-eq v2, v9, :cond_a

    if-eq v2, v15, :cond_9

    if-eq v2, v14, :cond_9

    if-eq v2, v13, :cond_7

    if-eq v2, v12, :cond_6

    goto :goto_6

    .line 8437
    :cond_6
    iput-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    .line 8438
    invoke-direct {v0, v11, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 8439
    invoke-direct {v0, v8, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 8440
    iput-boolean v3, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    goto :goto_6

    .line 8426
    :cond_7
    iput-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    .line 8427
    iget-boolean v2, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    if-eqz v2, :cond_8

    .line 8428
    iget-object v2, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const/4 v4, -0x2

    const-string v5, "realme_aod_notification_black_pkg"

    const-string v10, ""

    invoke-static {v2, v5, v10, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 8431
    :cond_8
    invoke-direct {v0, v7, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 8432
    invoke-direct {v0, v8, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 8433
    iput-boolean v3, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    goto :goto_6

    .line 8419
    :cond_9
    iput-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    .line 8420
    invoke-direct {v0, v5, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 8421
    invoke-direct {v0, v8, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 8422
    iput-boolean v3, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    goto :goto_6

    .line 8410
    :cond_a
    iput-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    .line 8411
    invoke-direct {v0, v8, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    if-eqz v1, :cond_c

    .line 8413
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->b()V

    goto :goto_6

    .line 8404
    :cond_b
    iput-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    .line 8405
    invoke-direct {v0, v10, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 8406
    invoke-direct {v0, v8, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;Z)V

    .line 8407
    iput-boolean v3, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    .line 8445
    :cond_c
    :goto_6
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->o:Lcom/color/support/preference/ColorSwitchPreference;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 8446
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->x:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 8447
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 8448
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->p:Lcom/color/support/preference/ColorSwitchPreference;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 8449
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->y:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 8450
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v2, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 8452
    iget-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    if-nez v1, :cond_d

    .line 8457
    invoke-direct {v0, v6, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;I)V

    goto :goto_9

    .line 8459
    :cond_d
    invoke-direct {v0, v6, v9}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;I)V

    goto :goto_9

    :cond_e
    if-eqz v4, :cond_f

    .line 319
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v1}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_f

    .line 320
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->setVisible(Z)V

    :cond_f
    if-eqz v4, :cond_10

    move v1, v9

    goto :goto_7

    :cond_10
    move v1, v3

    .line 322
    :goto_7
    invoke-direct {v0, v6, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;I)V

    .line 323
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    const-string v2, "aod_immediate_open"

    invoke-static {v1, v2, v4, v3}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_9

    :cond_11
    if-eqz v4, :cond_12

    move v1, v9

    goto :goto_8

    :cond_12
    move v1, v3

    :goto_8
    const-string v2, "Setting_AodUserSetTime"

    .line 315
    invoke-direct {v0, v2, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a(Ljava/lang/String;I)V

    .line 316
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    const-string v2, "aod_time_open"

    invoke-static {v1, v2, v4, v3}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :goto_9
    return v9

    :sswitch_data_0
    .sparse-switch
        -0x691f1c65 -> :sswitch_5
        -0x49b1591a -> :sswitch_4
        -0x405a5d3a -> :sswitch_3
        -0x3dfa9ca5 -> :sswitch_2
        0x7569b108 -> :sswitch_1
        0x7671c34a -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 9

    .line 334
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onResume()V

    .line 335
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9216
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const-string v1, "Setting_AodEnableImmediate"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 9217
    iget-object v4, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const-string v5, "Setting_AodUserSetTime"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 9218
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    invoke-virtual {v6, v8}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 9219
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    if-ne v4, v7, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    invoke-virtual {v6, v8}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 9221
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v6}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9222
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->s:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 9223
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v6}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9224
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {v6, v7}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->setVisible(Z)V

    goto :goto_2

    .line 9226
    :cond_2
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {v6, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->setVisible(Z)V

    goto :goto_2

    .line 9229
    :cond_3
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v6, v3}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    .line 9230
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->l:Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;

    invoke-virtual {v6, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/SettingTimePreference;->setVisible(Z)V

    .line 9231
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->s:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v3}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    :goto_2
    if-nez v4, :cond_4

    if-nez v0, :cond_4

    .line 9234
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    .line 9235
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    .line 9236
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9237
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorSwitchPreference;->setEnabled(Z)V

    .line 9238
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorSwitchPreference;->setEnabled(Z)V

    .line 9241
    :cond_4
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->A:Z

    if-eqz v0, :cond_5

    .line 9242
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    invoke-virtual {v0, v7}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setVisible(Z)V

    .line 9243
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->p:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    goto :goto_3

    .line 9245
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setVisible(Z)V

    .line 9246
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->p:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v7}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    .line 9252
    :goto_3
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const-string v4, "key_realme_aod_clock_mode"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v7, :cond_6

    move v0, v7

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    .line 9254
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const-string v4, "key_realme_aod_signature"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v7, :cond_7

    move v0, v7

    goto :goto_5

    :cond_7
    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    .line 9256
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "key_aod_clock_date_select"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->e:I

    .line 9258
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const-string v4, "key_aod_clock_date"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v7, :cond_8

    move v0, v7

    goto :goto_6

    :cond_8
    move v0, v3

    :goto_6
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    .line 9260
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const-string v4, "key_realme_aod_notification_icon"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v7, :cond_9

    move v0, v7

    goto :goto_7

    :cond_9
    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    .line 9262
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    const-string v4, "key_realme_aod_battery"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v7, :cond_a

    goto :goto_8

    :cond_a
    move v7, v3

    :goto_8
    iput-boolean v7, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    .line 9264
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->o:Lcom/color/support/preference/ColorSwitchPreference;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->k:Z

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 9265
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->x:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->j:Z

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 9266
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->w:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 9267
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->p:Lcom/color/support/preference/ColorSwitchPreference;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->i:Z

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 9268
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->y:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->g:Z

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 9269
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->h:Z

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 9602
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->v:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    if-eqz v0, :cond_b

    .line 9603
    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->z:Z

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setEnabled(Z)V

    .line 338
    :cond_b
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->B:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 340
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->q:Landroid/content/ContentResolver;

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->C:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 279
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 284
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onStop()V

    .line 286
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->n:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->m:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8297
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8298
    iget v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->a:I

    iget v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->b:I

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 8299
    iget v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->c:I

    iget v3, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->d:I

    invoke-static {v2, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->b(II)Ljava/lang/String;

    move-result-object v2

    .line 8300
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startTime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " endTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScreenReminderRealmeFragment"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "aod_time_start"

    .line 8302
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aod_time_end"

    .line 8303
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8304
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->r:Landroid/app/Activity;

    const-string v2, "20012"

    const-string v3, "aod_time_settings"

    invoke-static {v1, v2, v3, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->u:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->u:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;->u:Lcolor/support/v7/app/AlertDialog;

    return-void
.end method
