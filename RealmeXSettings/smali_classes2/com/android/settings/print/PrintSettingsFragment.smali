.class public Lcom/android/settings/print/PrintSettingsFragment;
.super Lcom/android/settings/print/ProfileSettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$b;,
        Lcom/android/settings/print/PrintSettingsFragment$a;,
        Lcom/android/settings/print/PrintSettingsFragment$c;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroidx/preference/PreferenceCategory;

.field private b:Landroidx/preference/PreferenceCategory;

.field private c:Lcom/android/settings/print/PrintSettingsFragment$a;

.field private d:Lcom/android/settings/print/PrintSettingsFragment$c;

.field private e:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 495
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$1;

    invoke-direct {v0}, Lcom/android/settings/print/PrintSettingsFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private b()Landroid/content/Intent;
    .locals 3

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "print_service_search_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method static synthetic c(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/Preference;
    .locals 2

    .line 2240
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->b()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2244
    :cond_0
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1210af

    .line 2245
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    const p0, 0x7f0806a1

    .line 2246
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setIcon(I)V

    const p0, 0x7ffffffe

    .line 2247
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 2248
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 2249
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    return-object v1
.end method

.method static synthetic d(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment;->a:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "android.settings.ACTION_PRINT_SETTINGS"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a90

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->e:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->b()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "PrintSettingsFragment"

    const-string v1, "Unable to start activity"

    .line 284
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f1500fa

    .line 112
    invoke-virtual {p0, p2}, Lcom/android/settings/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    const-string p2, "print_jobs_category"

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->a:Landroidx/preference/PreferenceCategory;

    const-string p2, "print_services_category"

    .line 116
    invoke-virtual {p0, p2}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/print/PrintSettingsFragment;->a:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 120
    new-instance p2, Lcom/android/settings/print/PrintSettingsFragment$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settings/print/PrintSettingsFragment$a;-><init>(Lcom/android/settings/print/PrintSettingsFragment;B)V

    iput-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->c:Lcom/android/settings/print/PrintSettingsFragment$a;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->c:Lcom/android/settings/print/PrintSettingsFragment$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1, v0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 123
    new-instance p2, Lcom/android/settings/print/PrintSettingsFragment$c;

    invoke-direct {p2, p0, p3}, Lcom/android/settings/print/PrintSettingsFragment$c;-><init>(Lcom/android/settings/print/PrintSettingsFragment;B)V

    iput-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment;->d:Lcom/android/settings/print/PrintSettingsFragment$c;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/print/PrintSettingsFragment;->d:Lcom/android/settings/print/PrintSettingsFragment$c;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, v1, p3}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 131
    invoke-super {p0}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->onStart()V

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 1263
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {v0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0d016d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a03dc

    .line 142
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1210b3

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->b()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0060

    .line 147
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->e:Landroid/widget/Button;

    .line 148
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->e:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0, p2}, Lcom/android/settings/print/PrintSettingsFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
