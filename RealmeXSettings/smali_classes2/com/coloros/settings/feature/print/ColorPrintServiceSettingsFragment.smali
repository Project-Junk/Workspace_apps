.class public Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorPrintServiceSettingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;,
        Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;",
        "Landroidx/preference/Preference$OnPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

.field private b:Landroid/content/ComponentName;

.field private c:Landroid/printservice/PrintServiceInfo;

.field private d:Z

.field private e:Lcom/coloros/settings/feature/print/ProgressCategory;

.field private f:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private g:Landroid/content/Intent;

.field private h:Landroid/content/Intent;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Timer;

.field private k:Ljava/util/TimerTask;

.field private n:I

.field private o:Z

.field private p:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 644
    new-instance v0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$1;-><init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->p:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->n:I

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Lcom/coloros/settings/feature/print/ProgressCategory;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e:Lcom/coloros/settings/feature/print/ProgressCategory;

    return-object p0
.end method

.method static synthetic a(Landroid/print/PrinterInfo;)Z
    .locals 1

    .line 2532
    invoke-virtual {p0}, Landroid/print/PrinterInfo;->getStatus()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->b:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->n:I

    return p0
.end method

.method private c()Landroid/os/Bundle;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_TITLE"

    .line 142
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 143
    iput-boolean v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->o:Z

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->o:Z

    .line 147
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 7

    const/4 v0, 0x0

    .line 653
    iput v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->n:I

    .line 654
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->j:Ljava/util/Timer;

    .line 655
    new-instance v0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;-><init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->k:Ljava/util/TimerTask;

    .line 672
    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->j:Ljava/util/Timer;

    iget-object v2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->k:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1770

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->k:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 678
    iput-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->k:Ljava/util/TimerTask;

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->j:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 682
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 683
    iput-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->j:Ljava/util/Timer;

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e:Lcom/coloros/settings/feature/print/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/print/ProgressCategory;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->o:Z

    return p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d()V

    return-void
.end method

.method static synthetic g(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorPrintServiceSettingsFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500cd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->c()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_TITLE"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->i:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    .line 199
    new-instance p1, Lcom/android/settings/print/SettingsPrintServicesLoader;

    .line 200
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "print"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/print/PrintManager;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/settings/print/SettingsPrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 159
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0012

    .line 160
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0506

    .line 162
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0508

    .line 163
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 164
    iget-boolean v3, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d:Z

    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->h:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 166
    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->g:Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 167
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 168
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->g:Landroid/content/Intent;

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-void

    .line 170
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->h:Landroid/content/Intent;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    const/4 p1, 0x2

    .line 172
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p1, 0x7f080461

    .line 173
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void

    .line 176
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    .line 177
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    return-void

    .line 180
    :cond_2
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    .line 181
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_CHECKED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d:Z

    const-string v0, "service_name"

    .line 111
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->f:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string v0, "available_device"

    .line 112
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/print/ProgressCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e:Lcom/coloros/settings/feature/print/ProgressCategory;

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e:Lcom/coloros/settings/feature/print/ProgressCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->p:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1156
    iput-object v1, v0, Lcom/coloros/settings/feature/print/ProgressCategory;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->f:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 154
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 6
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    check-cast p2, Ljava/util/List;

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1209
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1211
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->b:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1212
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/printservice/PrintServiceInfo;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_1
    if-nez p2, :cond_2

    .line 1219
    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->c:Landroid/printservice/PrintServiceInfo;

    :cond_2
    if-nez p2, :cond_3

    .line 1224
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->finishFragment()V

    return-void

    .line 1228
    :cond_3
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d:Z

    .line 1230
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    if-eqz v1, :cond_4

    .line 1231
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    new-instance v3, Landroid/content/ComponentName;

    .line 1234
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1235
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1237
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1239
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1241
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v3, :cond_5

    .line 1242
    iput-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->g:Landroid/content/Intent;

    goto :goto_2

    .line 1246
    :cond_4
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->g:Landroid/content/Intent;

    .line 1249
    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1250
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1252
    new-instance v1, Landroid/content/ComponentName;

    .line 1253
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1254
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1256
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 1258
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1260
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean p2, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p2, :cond_7

    .line 1261
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->h:Landroid/content/Intent;

    goto :goto_3

    .line 1265
    :cond_6
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->h:Landroid/content/Intent;

    .line 2186
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d:Z

    if-eqz p1, :cond_8

    .line 2187
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->f:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 2188
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d()V

    goto :goto_4

    .line 2190
    :cond_8
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->f:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 2191
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a()V

    .line 2193
    :goto_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 276
    check-cast p2, Ljava/lang/Boolean;

    .line 277
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d:Z

    .line 278
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->b:Landroid/content/ComponentName;

    .line 279
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 280
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e()V

    .line 282
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d()V

    .line 283
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e:Lcom/coloros/settings/feature/print/ProgressCategory;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/print/ProgressCategory;->setVisible(Z)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a()V

    .line 286
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e:Lcom/coloros/settings/feature/print/ProgressCategory;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/print/ProgressCategory;->setVisible(Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 130
    new-instance v0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    .line 131
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_SERVICE_COMPONENT_NAME"

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->b:Landroid/content/ComponentName;

    .line 135
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->f:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method
