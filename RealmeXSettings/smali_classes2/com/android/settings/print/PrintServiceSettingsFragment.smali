.class public Lcom/android/settings/print/PrintServiceSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settings/widget/SwitchBar$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintServiceSettingsFragment$b;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$a;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/SettingsPreferenceFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;",
        "Lcom/android/settings/widget/SwitchBar$a;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private b:Lcom/android/settings/widget/SwitchBar;

.field private c:Lcom/android/settings/widget/ToggleSwitch;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Intent;

.field private f:Landroid/content/Intent;

.field private g:Landroid/content/ComponentName;

.field private h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

.field private i:I

.field private j:Z

.field private k:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->a:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->i:I

    return p1
.end method

.method private a()V
    .locals 7

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->c:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    const v3, 0x7f0a03dc

    const v4, 0x7f0d016d

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, v6

    :cond_0
    if-nez v1, :cond_6

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1210bc

    .line 185
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setEmptyView(Landroid/view/View;)V

    return-void

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c()I

    move-result v2

    if-gtz v2, :cond_3

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, v6

    :cond_2
    if-nez v1, :cond_6

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d016e

    invoke-virtual {v1, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setEmptyView(Landroid/view/View;)V

    return-void

    .line 200
    :cond_3
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_5

    if-eqz v1, :cond_4

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, v6

    :cond_4
    if-nez v1, :cond_6

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1210b2

    .line 209
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setEmptyView(Landroid/view/View;)V

    return-void

    .line 213
    :cond_5
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->getItemCount()I

    move-result v2

    if-lez v2, :cond_6

    if-eqz v1, :cond_6

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->a()V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1

    .line 2169
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->g:Landroid/content/ComponentName;

    .line 2170
    invoke-virtual {p1, v0, p2}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$a;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 221
    iget-boolean v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->j:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->b:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->b:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->b()V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/print/PrintServiceSettingsFragment;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->i:I

    return p0
.end method

.method static synthetic d(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->g:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static synthetic lambda$WcyE79tRV9cN1gmmF7aVDaLpIQo(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->a(Lcom/android/settings/widget/ToggleSwitch;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
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

    .line 276
    new-instance p1, Lcom/android/settings/print/SettingsPrintServicesLoader;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "print"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/print/PrintManager;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/settings/print/SettingsPrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 351
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0017

    .line 352
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0506

    .line 354
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 355
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->f:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 356
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    .line 358
    :cond_0
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    :goto_0
    const p2, 0x7f0a0508

    .line 361
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 362
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->e:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 363
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 365
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    :goto_1
    const p2, 0x7f0a0507

    .line 368
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 369
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c()I

    move-result v1

    if-lez v1, :cond_2

    .line 370
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->k:Landroid/widget/SearchView;

    .line 371
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->k:Landroid/widget/SearchView;

    if-eqz p1, :cond_3

    .line 372
    new-instance p2, Lcom/android/settings/print/PrintServiceSettingsFragment$2;

    invoke-direct {p2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 384
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->k:Landroid/widget/SearchView;

    new-instance p2, Lcom/android/settings/print/PrintServiceSettingsFragment$3;

    invoke-direct {p2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    .line 405
    :cond_2
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "EXTRA_CHECKED"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->j:Z

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .line 73
    check-cast p2, Ljava/util/List;

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1287
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1289
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->g:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1290
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

    .line 1298
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->finishFragment()V

    .line 1301
    :cond_2
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->j:Z

    .line 1303
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    if-eqz v1, :cond_3

    .line 1304
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1306
    new-instance v3, Landroid/content/ComponentName;

    .line 1307
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1308
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1310
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1312
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1314
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v3, :cond_4

    .line 1315
    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->e:Landroid/content/Intent;

    goto :goto_2

    .line 1319
    :cond_3
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->e:Landroid/content/Intent;

    .line 1322
    :cond_4
    :goto_2
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1323
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1325
    new-instance v1, Landroid/content/ComponentName;

    .line 1326
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1327
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1329
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 1331
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1333
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean p2, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p2, :cond_6

    .line 1334
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->f:Landroid/content/Intent;

    goto :goto_3

    .line 1338
    :cond_5
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->f:Landroid/content/Intent;

    .line 1341
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->k:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 1232
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;B)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    .line 1233
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->a:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1235
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1237
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->b:Lcom/android/settings/widget/SwitchBar;

    .line 1238
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 1239
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->a()V

    .line 1241
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->c:Lcom/android/settings/widget/ToggleSwitch;

    .line 1242
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->c:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$WcyE79tRV9cN1gmmF7aVDaLpIQo;

    invoke-direct {v1, p0}, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$WcyE79tRV9cN1gmmF7aVDaLpIQo;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$a;)V

    .line 1247
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1257
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_SERVICE_COMPONENT_NAME"

    .line 1261
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1260
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->g:Landroid/content/ComponentName;

    .line 1264
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->g:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->d:Ljava/lang/String;

    const-string v1, "EXTRA_CHECKED"

    .line 1267
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1268
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 1270
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    const/4 v0, 0x1

    .line 1271
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->a()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->b()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->h:Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->a:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->a()V

    return-void
.end method
