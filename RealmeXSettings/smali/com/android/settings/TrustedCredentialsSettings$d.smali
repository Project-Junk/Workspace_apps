.class public Lcom/android/settings/TrustedCredentialsSettings$d;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/widget/ListView;

.field final synthetic b:Lcom/android/settings/TrustedCredentialsSettings;

.field private final c:[I

.field private final d:[I

.field private final e:Landroid/widget/LinearLayout$LayoutParams;

.field private final f:Landroid/widget/LinearLayout$LayoutParams;

.field private final g:Landroid/widget/LinearLayout$LayoutParams;

.field private final h:Lcom/android/settings/TrustedCredentialsSettings$e;

.field private final i:I

.field private final j:Landroid/database/DataSetObserver;

.field private k:Z

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$e;I)V
    .locals 5

    .line 581
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x1

    .line 546
    new-array v0, p1, [I

    const-string v1, "com.android.internal.R.attr.state_expanded"

    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->c:[I

    .line 547
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->d:[I

    .line 548
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 550
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->f:Landroid/widget/LinearLayout$LayoutParams;

    .line 552
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 562
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$d$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$d$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings$d;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->j:Landroid/database/DataSetObserver;

    .line 575
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->k:Z

    .line 582
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    .line 583
    iput p3, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->i:I

    .line 584
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->j:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$e;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private a(I)Lcom/android/settings/TrustedCredentialsSettings$c;
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(II)Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->n:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->c:[I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->d:[I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->a:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->g:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->f:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->l:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->k:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->g:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->e:Landroid/widget/LinearLayout$LayoutParams;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$d;)V
    .locals 0

    .line 544
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/TrustedCredentialsSettings$d;)V
    .locals 0

    .line 544
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/LinearLayout;)V
    .locals 6

    .line 624
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->l:Landroid/widget/LinearLayout;

    .line 626
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0130

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->a:Landroid/widget/ListView;

    .line 627
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->a:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 628
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->a:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 629
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->a:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 631
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0a02f7

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->m:Landroid/view/ViewGroup;

    .line 632
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->m:Landroid/view/ViewGroup;

    const v1, 0x7f0a02dc

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->n:Landroid/widget/ImageView;

    .line 635
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->n:Landroid/widget/ImageView;

    .line 2674
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "com.android.internal.R.styleable.ExpandableListView"

    .line 2675
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const-string v3, "com.android.internal.R.attr.expandableListViewStyle"

    .line 2676
    invoke-static {v3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2674
    invoke-virtual {v1, v4, v2, v3, v5}, Landroidx/fragment/app/FragmentActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, "com.android.internal.R.styleable.ExpandableListView_groupIndicator"

    .line 2678
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2677
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2679
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 635
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->m:Landroid/view/ViewGroup;

    const v1, 0x7f0a02ed

    .line 638
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 639
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    iget v2, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->i:I

    .line 640
    invoke-virtual {v1, v2, v0, v4, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 639
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->m:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->m:Landroid/view/ViewGroup;

    const v1, 0x7f0a02ef

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 650
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 654
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->i:I

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->k:Z

    .line 656
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$d;->a()V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->i:I

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$e;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 544
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$d;->a(I)Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 597
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->i:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/TrustedCredentialsSettings$e;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$e;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$e;->notifyDataSetInvalidated()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1660
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->i:I

    const/4 v1, 0x1

    .line 2479
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 614
    iget-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->k:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->k:Z

    .line 615
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$d;->a()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 620
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0, p3}, Lcom/android/settings/TrustedCredentialsSettings$d;->a(I)Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$c;)V

    return-void
.end method
