.class public Lcom/android/settings/accounts/ChooseAccountFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ChooseAccountFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accounts/ChooseAccountFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/ChooseAccountFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v1, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ChooseAccountFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 108
    invoke-static {p1}, Lcom/android/settings/accounts/ChooseAccountFragment;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150011

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "authorities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_types"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    .line 87
    invoke-static {v2, v1, v4, v3}, Lcom/android/settings/m;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    .line 90
    const-class v2, Lcom/android/settings/accounts/ChooseAccountPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ChooseAccountFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/ChooseAccountPreferenceController;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 90
    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->initialize([Ljava/lang/String;[Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/Activity;)V

    .line 92
    const-class p1, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ChooseAccountFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1, v0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->setFooterPreferenceMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 64
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
