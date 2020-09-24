.class public Lcom/android/settings/wifi/calling/WifiCallingSettings;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "WifiCallingSettings.java"

# interfaces
.implements Lcom/android/settings/support/actionbar/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/calling/WifiCallingSettings$b;,
        Lcom/android/settings/wifi/calling/WifiCallingSettings$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/android/settings/widget/RtlCompatibleViewPager;

.field private c:Lcom/android/settings/wifi/calling/WifiCallingSettings$b;

.field private d:Lcom/android/settings/widget/SlidingTabLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121942

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/calling/WifiCallingSettings;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a99

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x69

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->setHasOptionsMenu(Z)V

    .line 123
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->a(Lcom/android/settings/core/InstrumentedFragment;)V

    .line 124
    invoke-static {p0}, Lcom/android/settings/support/actionbar/HelpMenuController;->a(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V

    .line 1210
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 1209
    invoke-static {p1}, Lcom/android/settings/network/f;->a(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    .line 1213
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1216
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1217
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2198
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v1

    .line 2199
    invoke-virtual {v1}, Lcom/android/ims/e;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2204
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v0

    .line 2205
    invoke-virtual {v0}, Lcom/android/ims/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1219
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d039f

    .line 87
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a061f

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/SlidingTabLayout;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->d:Lcom/android/settings/widget/SlidingTabLayout;

    const p2, 0x7f0a078a

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/RtlCompatibleViewPager;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 92
    new-instance p2, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettings$b;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/widget/RtlCompatibleViewPager;)V

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->c:Lcom/android/settings/wifi/calling/WifiCallingSettings$b;

    .line 93
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b:Lcom/android/settings/widget/RtlCompatibleViewPager;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->c:Lcom/android/settings/wifi/calling/WifiCallingSettings$b;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 94
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b:Lcom/android/settings/widget/RtlCompatibleViewPager;

    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettings$a;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/wifi/calling/WifiCallingSettings$a;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;B)V

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1100
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1103
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p3, -0x1

    const-string v0, "android.provider.extra.SUB_ID"

    .line 1107
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1109
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1110
    iget-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1111
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 1112
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b:Lcom/android/settings/widget/RtlCompatibleViewPager;

    iget-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    :cond_1
    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStart()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->d:Lcom/android/settings/widget/SlidingTabLayout;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->b:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SlidingTabLayout;->setViewPager(Lcom/android/settings/widget/RtlCompatibleViewPager;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->d:Lcom/android/settings/widget/SlidingTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SlidingTabLayout;->setVisibility(I)V

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->a()V

    return-void
.end method
