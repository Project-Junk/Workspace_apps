.class public final Lcolor/support/design/widget/TabLayoutMediator;
.super Ljava/lang/Object;
.source "TabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;,
        Lcolor/support/design/widget/TabLayoutMediator$ViewPagerOnTabSelectedListener;,
        Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;,
        Lcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;
    }
.end annotation


# static fields
.field private static final SELECT_TAB_NAME:Ljava/lang/String; = "TabLayout.selectTab(TabLayout.Tab, boolean)"

.field private static final SET_SCROLL_POSITION_NAME:Ljava/lang/String; = "TabLayout.setScrollPosition(int, float, boolean, boolean)"

.field private static sSelectTab:Ljava/lang/reflect/Method;

.field private static sSetScrollPosition:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mAttached:Z

.field private final mAutoRefresh:Z

.field private final mOnConfigureTabCallback:Lcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;

.field private mOnPageChangeCallback:Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;

.field private mOnTabSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

.field private mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private final mTabLayout:Lcolor/support/design/widget/ColorTabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mViewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 235
    :try_start_0
    const-class v0, Lcolor/support/design/widget/ColorTabLayout;

    const-string v1, "setScrollPosition"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 237
    sput-object v0, Lcolor/support/design/widget/TabLayoutMediator;->sSetScrollPosition:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 239
    const-class v0, Lcolor/support/design/widget/ColorTabLayout;

    const-string v1, "selectTab"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lcolor/support/design/widget/ColorTabLayout$Tab;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 241
    sput-object v0, Lcolor/support/design/widget/TabLayoutMediator;->sSelectTab:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 243
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t reflect into method TabLayout.setScrollPosition(int, float, boolean, boolean)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcolor/support/design/widget/ColorTabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;)V
    .locals 1
    .param p1    # Lcolor/support/design/widget/ColorTabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, p2, v0, p3}, Lcolor/support/design/widget/TabLayoutMediator;-><init>(Lcolor/support/design/widget/ColorTabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;)V

    return-void
.end method

.method public constructor <init>(Lcolor/support/design/widget/ColorTabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;)V
    .locals 0
    .param p1    # Lcolor/support/design/widget/ColorTabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    .line 82
    iput-object p2, p0, Lcolor/support/design/widget/TabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 83
    iput-boolean p3, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAutoRefresh:Z

    .line 84
    iput-object p4, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnConfigureTabCallback:Lcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;

    return-void
.end method

.method static selectTab(Lcolor/support/design/widget/ColorTabLayout;Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V
    .locals 4

    const-string v0, "TabLayout.selectTab(TabLayout.Tab, boolean)"

    .line 266
    :try_start_0
    sget-object v1, Lcolor/support/design/widget/TabLayoutMediator;->sSelectTab:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 267
    sget-object v1, Lcolor/support/design/widget/TabLayoutMediator;->sSelectTab:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 269
    :cond_0
    invoke-static {v0}, Lcolor/support/design/widget/TabLayoutMediator;->throwMethodNotFound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 272
    :catch_0
    invoke-static {v0}, Lcolor/support/design/widget/TabLayoutMediator;->throwInvokeFailed(Ljava/lang/String;)V

    return-void
.end method

.method static setScrollPosition(Lcolor/support/design/widget/ColorTabLayout;IFZZ)V
    .locals 4

    const-string v0, "TabLayout.setScrollPosition(int, float, boolean, boolean)"

    .line 252
    :try_start_0
    sget-object v1, Lcolor/support/design/widget/TabLayoutMediator;->sSetScrollPosition:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 253
    sget-object v1, Lcolor/support/design/widget/TabLayoutMediator;->sSetScrollPosition:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    .line 254
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    .line 253
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 256
    :cond_0
    invoke-static {v0}, Lcolor/support/design/widget/TabLayoutMediator;->throwMethodNotFound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 259
    :catch_0
    invoke-static {v0}, Lcolor/support/design/widget/TabLayoutMediator;->throwInvokeFailed(Ljava/lang/String;)V

    return-void
.end method

.method private static throwInvokeFailed(Ljava/lang/String;)V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Couldn\'t invoke method "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwMethodNotFound(Ljava/lang/String;)V
    .locals 3

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final attach()V
    .locals 4

    .line 93
    iget-boolean v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAttached:Z

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 97
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAttached:Z

    .line 104
    new-instance v1, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    iget-object v2, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    invoke-direct {v1, v2}, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;-><init>(Lcolor/support/design/widget/ColorTabLayout;)V

    iput-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnPageChangeCallback:Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    .line 105
    iget-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnPageChangeCallback:Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 108
    new-instance v1, Lcolor/support/design/widget/TabLayoutMediator$ViewPagerOnTabSelectedListener;

    iget-object v2, p0, Lcolor/support/design/widget/TabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v1, v2}, Lcolor/support/design/widget/TabLayoutMediator$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnTabSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    .line 109
    iget-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    iget-object v2, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnTabSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    invoke-virtual {v1, v2}, Lcolor/support/design/widget/ColorTabLayout;->addOnTabSelectedListener(Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;)V

    .line 113
    iget-boolean v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAutoRefresh:Z

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;

    invoke-direct {v1, p0}, Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;-><init>(Lcolor/support/design/widget/TabLayoutMediator;)V

    iput-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 116
    iget-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcolor/support/design/widget/TabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 122
    iget-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    iget-object v2, p0, Lcolor/support/design/widget/TabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcolor/support/design/widget/ColorTabLayout;->setScrollPosition(IFZ)V

    return-void

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator attached before ViewPager2 has an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator is already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final detach()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 130
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    iget-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnTabSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcolor/support/design/widget/ColorTabLayout;->removeOnTabSelectedListener(Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;)V

    .line 131
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnPageChangeCallback:Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 133
    iput-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnTabSelectedListener:Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;

    .line 134
    iput-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnPageChangeCallback:Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAttached:Z

    return-void
.end method

.method final populateTabsFromPagerAdapter()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->removeAllTabs()V

    .line 142
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 145
    iget-object v3, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v3}, Lcolor/support/design/widget/ColorTabLayout;->newTab()Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v3

    .line 146
    iget-object v4, p0, Lcolor/support/design/widget/TabLayoutMediator;->mOnConfigureTabCallback:Lcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;

    invoke-interface {v4, v3, v2}, Lcolor/support/design/widget/TabLayoutMediator$OnConfigureTabCallback;->onConfigureTab(Lcolor/support/design/widget/ColorTabLayout$Tab;I)V

    .line 147
    iget-object v4, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v4, v3, v1}, Lcolor/support/design/widget/ColorTabLayout;->addTab(Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v1}, Lcolor/support/design/widget/ColorTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcolor/support/design/widget/TabLayoutMediator;->mTabLayout:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v1, v0}, Lcolor/support/design/widget/ColorTabLayout;->getTabAt(I)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->select()V

    :cond_1
    return-void
.end method
