.class public Lcom/color/support/widget/slideselect/SlideSelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SlideSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/slideselect/SlideSelectorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemHeight:I

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput-object p3, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemList:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemHeight:I

    .line 27
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemTextSize:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 61
    sget v0, Lcolor/support/v7/appcompat/R$layout;->secletor_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance p3, Lcom/color/support/widget/slideselect/SlideSelectorAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/color/support/widget/slideselect/SlideSelectorAdapter$ViewHolder;-><init>(Lcom/color/support/widget/slideselect/SlideSelectorAdapter;Lcom/color/support/widget/slideselect/SlideSelectorAdapter$1;)V

    .line 63
    sget v0, Lcolor/support/v7/appcompat/R$id;->selection_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/color/support/widget/slideselect/SlideSelectorAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/slideselect/SlideSelectorAdapter$ViewHolder;

    :goto_0
    if-eqz p3, :cond_2

    .line 70
    iget-object v0, p3, Lcom/color/support/widget/slideselect/SlideSelectorAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget p1, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemHeight:I

    if-lez p1, :cond_1

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 75
    :cond_1
    iget p1, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemTextSize:I

    if-lez p1, :cond_2

    .line 76
    iget-object p1, p3, Lcom/color/support/widget/slideselect/SlideSelectorAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget p3, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemTextSize:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setItemHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemHeight:I

    return-void
.end method

.method public setItemTextSize(Ljava/lang/Integer;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->mItemTextSize:I

    return-void
.end method
