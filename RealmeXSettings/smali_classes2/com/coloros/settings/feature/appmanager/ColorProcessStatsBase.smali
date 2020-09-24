.class public abstract Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "ColorProcessStatsBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 48
    new-instance p3, Ljava/util/ArrayList;

    sget-object v0, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->b:[I

    array-length v0, v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 49
    :goto_0
    sget-object v1, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->b:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 50
    new-instance v1, Lcom/color/support/widget/popupwindow/PopupListItem;

    sget-object v3, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->b:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0, p3}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setItemList(Ljava/util/List;)V

    .line 54
    new-instance p3, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$VZP90HHasfVAnIWypcLZb8fempg;

    invoke-direct {p3, p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$VZP90HHasfVAnIWypcLZb8fempg;-><init>(Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;)V

    invoke-virtual {v0, p3}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    invoke-virtual {v0, v2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setDismissTouchOutside(Z)V

    .line 62
    invoke-virtual {v0, p2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method private synthetic a(Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .line 55
    sget-object v0, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->b:[I

    aget v0, v0, p5

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p6

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 57
    invoke-virtual {p2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$VZP90HHasfVAnIWypcLZb8fempg(Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->a(Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic lambda$caZlghIZlUX23YlIhWR6l8r2WBk(Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->a(Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 40
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0d0071

    .line 43
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->c:Landroid/view/ViewGroup;

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0a06f9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    sget-object v1, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->b:[I

    iget v2, p0, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->e:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->c:Landroid/view/ViewGroup;

    const v2, 0x7f0a030f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->c:Landroid/view/ViewGroup;

    new-instance v3, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$caZlghIZlUX23YlIhWR6l8r2WBk;

    invoke-direct {v3, p0, v0, v1}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$caZlghIZlUX23YlIhWR6l8r2WBk;-><init>(Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public shouldAddPreferenceHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
