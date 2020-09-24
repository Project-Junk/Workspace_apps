.class public Lcom/color/support/widget/ColorExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "ColorExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorExpandableListView$EndAnimatorListener;,
        Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;,
        Lcom/color/support/widget/ColorExpandableListView$DummyView;,
        Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;,
        Lcom/color/support/widget/ColorExpandableListView$GroupInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorExpandableListView"


# instance fields
.field private adapter:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

.field private mGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0}, Lcom/color/support/widget/ColorExpandableListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView;->mGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorExpandableListView;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorExpandableListView;->originCollapseGroup(I)V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 68
    new-instance v0, Lcom/color/support/widget/ColorExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorExpandableListView$1;-><init>(Lcom/color/support/widget/ColorExpandableListView;)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    return-void
.end method

.method private originCollapseGroup(I)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    return-void
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableListView;->adapter:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;->access$300(Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView;->adapter:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return p1
.end method

.method public expandGroup(I)Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableListView;->adapter:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;->access$100(Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView;->adapter:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-static {p0, p1}, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;->access$200(Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-direct {v0, p1, p0}, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;-><init>(Landroid/widget/ExpandableListAdapter;Lcom/color/support/widget/ColorExpandableListView;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorExpandableListView;->adapter:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    .line 137
    iget-object p1, p0, Lcom/color/support/widget/ColorExpandableListView;->adapter:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot set childDivider."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot set divider"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 122
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot set groupIndicator."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 97
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot set wrap_content"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/color/support/widget/ColorExpandableListView;->mGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-void
.end method
