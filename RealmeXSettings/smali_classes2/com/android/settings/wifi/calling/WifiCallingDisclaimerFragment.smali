.class public Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "WifiCallingDisclaimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/calling/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->b:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private a(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;)Z
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x69

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/calling/a;

    .line 134
    invoke-virtual {v0}, Lcom/android/settings/wifi/calling/a;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a(I)V

    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a(I)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EXTRA_SUB_ID"

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1053
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    new-instance v3, Lcom/android/settings/wifi/calling/c;

    invoke-direct {v3, v1, v0}, Lcom/android/settings/wifi/calling/c;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    new-instance v3, Lcom/android/settings/wifi/calling/b;

    invoke-direct {v3, v1, v0}, Lcom/android/settings/wifi/calling/b;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1043
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1044
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/calling/a;

    .line 1045
    invoke-virtual {v1}, Lcom/android/settings/wifi/calling/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1046
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 67
    :cond_2
    iput-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, -0x1

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a(I)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 74
    iget-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->d:Z

    const-string v1, "state_is_scroll_to_bottom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->d:Z

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0398

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0070

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->b:Landroid/widget/Button;

    .line 86
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->b:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a01fd

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->c:Landroid/widget/Button;

    .line 88
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->c:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a01ff

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    new-instance p3, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a:Ljava/util/List;

    invoke-direct {p3, v0}, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 95
    new-instance p3, Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 97
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 99
    new-instance p3, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->d:Z

    const-string v1, "state_is_scroll_to_bottom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
