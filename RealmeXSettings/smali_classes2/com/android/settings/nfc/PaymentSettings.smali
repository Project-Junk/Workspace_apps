.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PaymentSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/android/settings/nfc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v0}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/nfc/PaymentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "PaymentSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x46

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500c4

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 67
    new-instance p1, Lcom/android/settings/nfc/e;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/nfc/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings;->a:Lcom/android/settings/nfc/e;

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 70
    const-class p1, Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->a:Lcom/android/settings/nfc/e;

    invoke-virtual {p1, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->setPaymentBackend(Lcom/android/settings/nfc/e;)V

    .line 71
    const-class p1, Lcom/android/settings/nfc/NfcForegroundPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/NfcForegroundPreferenceController;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->a:Lcom/android/settings/nfc/e;

    invoke-virtual {p1, v0}, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->setPaymentBackend(Lcom/android/settings/nfc/e;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f120e44

    .line 99
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 100
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/nfc/HowItWorks;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    const/4 p2, 0x0

    .line 102
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->a:Lcom/android/settings/nfc/e;

    .line 2072
    iget-object v0, v0, Lcom/android/settings/nfc/e;->b:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 86
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->a:Lcom/android/settings/nfc/e;

    .line 1076
    iget-object v1, v0, Lcom/android/settings/nfc/e;->b:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, v0, Lcom/android/settings/nfc/e;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/nfc/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 1077
    invoke-virtual {v0}, Lcom/android/settings/nfc/e;->a()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01e9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/settings/nfc/PaymentSettings;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
