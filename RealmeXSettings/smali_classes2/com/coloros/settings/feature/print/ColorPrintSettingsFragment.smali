.class public Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;
.super Lcom/android/settings/print/ProfileSettingsPreferenceFragment;
.source "ColorPrintSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;,
        Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;,
        Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroidx/preference/PreferenceCategory;

.field private b:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;

.field private c:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 472
    new-instance v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->a:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private b()Landroid/content/Intent;
    .locals 3

    .line 237
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "print_service_search_uri"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 245
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method static synthetic c(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroidx/preference/Preference;
    .locals 2

    .line 2224
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->b()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2228
    :cond_0
    new-instance v1, Lcom/coloros/settings/widget/preference/ColorFocusPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1210af

    .line 2229
    invoke-virtual {v1, p0}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;->setTitle(I)V

    const p0, 0x7ffffffe

    .line 2230
    invoke-virtual {v1, p0}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;->setOrder(I)V

    .line 2231
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;->setIntent(Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 2232
    invoke-virtual {v1, p0}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;->setPersistent(Z)V

    return-object v1
.end method

.method static synthetic d(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
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

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15005b

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->c:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->b()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ColorPrintSettingsFragment"

    const-string v1, "Unable to start activity"

    .line 270
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const-string p2, "print_services_category"

    .line 110
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->a:Landroidx/preference/PreferenceCategory;

    .line 112
    new-instance p2, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;-><init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;B)V

    .line 113
    new-instance p2, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;

    invoke-direct {p2, p0, p3}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;-><init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;B)V

    iput-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->b:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->b:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 120
    invoke-super {p0}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->onStart()V

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 1249
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {v0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 129
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0d016d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a03dc

    .line 130
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1210b3

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 132
    invoke-direct {p0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->b()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0060

    .line 134
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->c:Landroid/widget/Button;

    .line 135
    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
