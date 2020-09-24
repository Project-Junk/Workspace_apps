.class public Lcom/coloros/settings/feature/process/RunningApplications;
.super Landroidx/fragment/app/Fragment;
.source "RunningApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/process/RunningApplications$a;,
        Lcom/coloros/settings/feature/process/RunningApplications$b;,
        Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;,
        Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;
    }
.end annotation


# instance fields
.field a:Z

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroid/widget/PopupWindow;

.field private d:Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->a:Z

    .line 50
    new-instance v0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;-><init>(Lcom/coloros/settings/feature/process/RunningApplications;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->d:Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 99
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic a(Lcom/coloros/settings/feature/process/RunningApplications$a;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 93
    invoke-static {}, Landroid/freeze/FreezeManager;->getInstance()Landroid/freeze/FreezeManager;

    move-result-object p3

    iget-object v0, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->b:Ljava/lang/String;

    iget v1, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->d:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v2, v1}, Landroid/freeze/FreezeManager;->setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 94
    invoke-static {}, Landroid/freeze/FreezeManager;->getInstance()Landroid/freeze/FreezeManager;

    move-result-object p3

    iget-object v0, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->b:Ljava/lang/String;

    iget v1, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->d:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p3, v0, v2, v1}, Landroid/freeze/FreezeManager;->setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    invoke-virtual {p3, p1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a(Lcom/coloros/settings/feature/process/RunningApplications$a;)V

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f121299

    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/process/RunningApplications;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/process/RunningApplications;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->a:Z

    return p0
.end method

.method public static synthetic lambda$k2Bc7FzSUVIMUs-GHouoNnrTta8(Lcom/coloros/settings/feature/process/RunningApplications;Lcom/coloros/settings/feature/process/RunningApplications$a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/process/RunningApplications;->a(Lcom/coloros/settings/feature/process/RunningApplications$a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$mgLDPs9VyqzoW1FIzqpO1jLu0rk(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/process/RunningApplications;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/process/RunningApplications$a;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->d:Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;

    .line 1145
    iput-object p1, v0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->a:Ljava/util/List;

    .line 58
    invoke-virtual {v0}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a009e

    const v2, 0x7f121295

    const v3, 0x7f0a02c8

    const v4, 0x7f0a02bb

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_4

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    .line 89
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121298

    .line 90
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121297

    .line 91
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121296

    new-instance v2, Lcom/coloros/settings/feature/process/-$$Lambda$RunningApplications$k2Bc7FzSUVIMUs-GHouoNnrTta8;

    invoke-direct {v2, p0, p1}, Lcom/coloros/settings/feature/process/-$$Lambda$RunningApplications$k2Bc7FzSUVIMUs-GHouoNnrTta8;-><init>(Lcom/coloros/settings/feature/process/RunningApplications;Lcom/coloros/settings/feature/process/RunningApplications$a;)V

    .line 92
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    sget-object v1, Lcom/coloros/settings/feature/process/-$$Lambda$RunningApplications$mgLDPs9VyqzoW1FIzqpO1jLu0rk;->INSTANCE:Lcom/coloros/settings/feature/process/-$$Lambda$RunningApplications$mgLDPs9VyqzoW1FIzqpO1jLu0rk;

    .line 99
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :goto_0
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a(Lcom/coloros/settings/feature/process/RunningApplications$a;)V

    .line 82
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->c:Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-virtual {p0, v2, v1}, Lcom/coloros/settings/feature/process/RunningApplications;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 70
    :cond_4
    iget-boolean v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->a:Z

    if-nez v0, :cond_5

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a(Lcom/coloros/settings/feature/process/RunningApplications$a;)V

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->c:Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-virtual {p0, v2, v1}, Lcom/coloros/settings/feature/process/RunningApplications;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2107
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2108
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2110
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2111
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2113
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2114
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplications;->c:Landroid/widget/PopupWindow;

    .line 2115
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->c:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2116
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2117
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2118
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2119
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 2120
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2121
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 2122
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 2123
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2124
    iget-object v2, p0, Lcom/coloros/settings/feature/process/RunningApplications;->c:Landroid/widget/PopupWindow;

    neg-int v1, v1

    neg-int v0, v0

    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0d02ab

    const/4 p3, 0x0

    .line 129
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a059c

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/coloros/settings/feature/process/RunningApplications;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    iget-object p2, p0, Lcom/coloros/settings/feature/process/RunningApplications;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    iget-object p2, p0, Lcom/coloros/settings/feature/process/RunningApplications;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/coloros/settings/feature/process/RunningApplications;->d:Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method
