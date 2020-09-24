.class public Lcom/android/settings/network/telephony/MobileNetworkActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "MobileNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileNetworkActivity$a;
    }
.end annotation


# instance fields
.field a:Landroid/telephony/SubscriptionManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/android/settings/network/telephony/MobileNetworkActivity$a;

.field private final e:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->c:Ljava/util/List;

    .line 67
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->e:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method private a()Landroid/telephony/SubscriptionInfo;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    const-string v2, "android.provider.extra.SUB_ID"

    .line 166
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 169
    invoke-static {p0}, Lcom/android/settings/network/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 170
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, v0, :cond_0

    return-object v2

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .line 241
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mobile_settings:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroidx/fragment/app/Fragment;IZ)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 224
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    .line 229
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.provider.extra.SUB_ID"

    .line 231
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f0a03c7

    .line 235
    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p3, v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 236
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 237
    iput p2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->b:I

    return-void
.end method

.method private synthetic a(Landroid/view/MenuItem;)Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x0

    .line 3219
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a(Landroidx/fragment/app/Fragment;IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method private b()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private c()V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0a00ec

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 199
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    const/16 v1, 0x8

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setVisibility(I)V

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 203
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 204
    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 205
    iget-object v5, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 206
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 207
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 206
    invoke-interface {v1, v3, v6, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f08083f

    .line 208
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    :cond_1
    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$iSw-K-Zqlt9KyvrikBRxGGWDomU;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$iSw-K-Zqlt9KyvrikBRxGGWDomU;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    .line 90
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 93
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->b:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a(Landroidx/fragment/app/Fragment;IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$iSw-K-Zqlt9KyvrikBRxGGWDomU(Lcom/android/settings/network/telephony/MobileNetworkActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$llqfqzkKG71ZBNc_LKVdf_E0E-s(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->d()V

    return-void
.end method


# virtual methods
.method final a(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 141
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->c:Ljava/util/List;

    const-string v0, "settings_network_and_internet_v2"

    .line 148
    invoke-static {p0, v0}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->c()V

    :cond_1
    if-nez p1, :cond_2

    .line 153
    new-instance p1, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->b()I

    move-result v0

    const/4 v1, 0x0

    .line 2219
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a(Landroidx/fragment/app/Fragment;IZ)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "settings_network_and_internet_v2"

    .line 83
    invoke-static {p0, v0}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d01c1

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d01c0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->setContentView(I)V

    :goto_0
    const v0, 0x7f0a03f8

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 89
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;

    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$llqfqzkKG71ZBNc_LKVdf_E0E-s;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$llqfqzkKG71ZBNc_LKVdf_E0E-s;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/MobileNetworkActivity$a$a;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->d:Lcom/android/settings/network/telephony/MobileNetworkActivity$a;

    .line 97
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a:Landroid/telephony/SubscriptionManager;

    .line 98
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->c:Ljava/util/List;

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_1

    const-string v2, "android.provider.extra.SUB_ID"

    .line 100
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->b:I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 108
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2133
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->b:I

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 113
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onStart()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->d:Lcom/android/settings/network/telephony/MobileNetworkActivity$a;

    .line 1262
    iget-object v1, v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;->b:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;->a:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->e:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onStop()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->d:Lcom/android/settings/network/telephony/MobileNetworkActivity$a;

    .line 1266
    iget-object v1, v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->a:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->e:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method
