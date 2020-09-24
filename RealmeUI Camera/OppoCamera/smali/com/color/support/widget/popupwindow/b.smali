.class public Lcom/color/support/widget/popupwindow/b;
.super Landroid/widget/BaseAdapter;
.source "DefaultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/popupwindow/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/popupwindow/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/color/support/widget/popupwindow/c;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/color/support/widget/popupwindow/b;->b:Ljava/util/List;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 46
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_popup_list_padding_vertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/popupwindow/b;->c:I

    .line 47
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_popup_list_window_item_padding_top_and_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/popupwindow/b;->d:I

    .line 48
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_popup_list_window_item_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/popupwindow/b;->e:I

    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/c;Z)V
    .locals 2

    .line 104
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    invoke-virtual {p3}, Lcom/color/support/widget/popupwindow/c;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/color/support/widget/popupwindow/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p3, 0x8

    .line 106
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_popup_list_window_item_title_margin_with_no_icon:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 108
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_popup_list_window_item_title_margin_with_no_icon:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_popup_list_window_item_title_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 112
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_popup_list_window_item_title_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 113
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 115
    invoke-virtual {p3}, Lcom/color/support/widget/popupwindow/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_1

    .line 116
    iget-object p2, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p3}, Lcom/color/support/widget/popupwindow/c;->a()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p3}, Lcom/color/support/widget/popupwindow/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 120
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/c;Z)V
    .locals 1

    .line 125
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    invoke-virtual {p2}, Lcom/color/support/widget/popupwindow/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p2, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$color;->color_popup_list_window_text_color_selector:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    iget-object p2, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    .line 129
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_popup_list_window_item_title_text_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    .line 130
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x5

    .line 128
    invoke-static {p2, p3, v0}, Lcom/color/support/d/b;->a(FFI)F

    move-result p2

    const/4 p3, 0x0

    .line 132
    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 70
    new-instance p2, Lcom/color/support/widget/popupwindow/b$a;

    invoke-direct {p2}, Lcom/color/support/widget/popupwindow/b$a;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/color/support/widget/popupwindow/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$layout;->color_popup_list_window_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 72
    sget v1, Lcolor/support/v7/appcompat/R$id;->popup_list_window_item_icon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/color/support/widget/popupwindow/b$a;->a:Landroid/widget/ImageView;

    .line 73
    sget v1, Lcolor/support/v7/appcompat/R$id;->popup_list_window_item_title:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/color/support/widget/popupwindow/b$a;->b:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/popupwindow/b$a;

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/b;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 80
    iget v1, p0, Lcom/color/support/widget/popupwindow/b;->e:I

    iget v2, p0, Lcom/color/support/widget/popupwindow/b;->c:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 81
    iget v1, p0, Lcom/color/support/widget/popupwindow/b;->d:I

    iget v2, p0, Lcom/color/support/widget/popupwindow/b;->c:I

    add-int v3, v1, v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 85
    iget v1, p0, Lcom/color/support/widget/popupwindow/b;->e:I

    iget v2, p0, Lcom/color/support/widget/popupwindow/b;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 86
    iget v1, p0, Lcom/color/support/widget/popupwindow/b;->d:I

    iget v2, p0, Lcom/color/support/widget/popupwindow/b;->c:I

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/b;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_3

    .line 88
    iget v1, p0, Lcom/color/support/widget/popupwindow/b;->e:I

    iget v2, p0, Lcom/color/support/widget/popupwindow/b;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 89
    iget v1, p0, Lcom/color/support/widget/popupwindow/b;->d:I

    iget v2, p0, Lcom/color/support/widget/popupwindow/b;->c:I

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 91
    :cond_3
    iget v1, p0, Lcom/color/support/widget/popupwindow/b;->e:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 92
    iget v1, p0, Lcom/color/support/widget/popupwindow/b;->d:I

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/popupwindow/c;

    invoke-virtual {v0}, Lcom/color/support/widget/popupwindow/c;->d()Z

    move-result v0

    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    iget-object v1, p3, Lcom/color/support/widget/popupwindow/b$a;->a:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/color/support/widget/popupwindow/b$a;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/color/support/widget/popupwindow/b;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/popupwindow/c;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/color/support/widget/popupwindow/b;->a(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/c;Z)V

    .line 99
    iget-object p3, p3, Lcom/color/support/widget/popupwindow/b$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/b;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/popupwindow/c;

    invoke-direct {p0, p3, p1, v0}, Lcom/color/support/widget/popupwindow/b;->a(Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/c;Z)V

    return-object p2
.end method
