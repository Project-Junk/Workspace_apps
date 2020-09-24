.class Lcolor/support/dialog/ColorListDialog$Adapter;
.super Landroid/widget/BaseAdapter;
.source "ColorListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/dialog/ColorListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# static fields
.field private static final LAYOUT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:[Ljava/lang/CharSequence;

.field private mTextAppearances:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 268
    sget v0, Lcolor/support/v7/appcompat/R$layout;->color_list_dialog_item:I

    sput v0, Lcolor/support/dialog/ColorListDialog$Adapter;->LAYOUT:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V
    .locals 0

    .line 274
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 275
    iput-object p1, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mItems:[Ljava/lang/CharSequence;

    .line 277
    iput-object p3, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mTextAppearances:[I

    return-void
.end method

.method private getViewInternal(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 305
    iget-object p2, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcolor/support/dialog/ColorListDialog$Adapter;->LAYOUT:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    .line 306
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 307
    new-instance v0, Lcolor/support/dialog/ColorListDialog$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcolor/support/dialog/ColorListDialog$ViewHolder;-><init>(Lcolor/support/dialog/ColorListDialog$1;)V

    .line 308
    iput-object p3, v0, Lcolor/support/dialog/ColorListDialog$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 309
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcolor/support/dialog/ColorListDialog$ViewHolder;

    .line 313
    :goto_0
    iget-object p3, v0, Lcolor/support/dialog/ColorListDialog$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcolor/support/dialog/ColorListDialog$Adapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object p3, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mTextAppearances:[I

    if-eqz p3, :cond_2

    .line 315
    aget p1, p3, p1

    if-lez p1, :cond_1

    .line 317
    iget-object p3, v0, Lcolor/support/dialog/ColorListDialog$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 319
    :cond_1
    iget-object p1, v0, Lcolor/support/dialog/ColorListDialog$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    sget p3, Lcolor/support/v7/appcompat/R$style;->DefaultDialogItemTextStyle:I

    invoke-virtual {p1, p0, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    return-object p2
.end method

.method private resetPadding(ILandroid/view/View;)V
    .locals 8

    .line 326
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 327
    iget-object v1, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_list_item_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 328
    iget-object v2, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_list_item_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 329
    iget-object v3, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_list_item_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 330
    iget-object v4, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_list_item_padding_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 331
    iget-object v5, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_list_item_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 332
    invoke-virtual {p0}, Lcolor/support/dialog/ColorListDialog$Adapter;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 333
    invoke-virtual {p0}, Lcolor/support/dialog/ColorListDialog$Adapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v7

    if-ne p1, p0, :cond_0

    add-int/2addr v3, v0

    .line 334
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    add-int/2addr v5, v0

    .line 335
    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    add-int/2addr v1, v0

    .line 337
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    add-int/2addr v5, v0

    .line 338
    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 341
    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 282
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mItems:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 0

    .line 287
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog$Adapter;->mItems:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcolor/support/dialog/ColorListDialog$Adapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcolor/support/dialog/ColorListDialog$Adapter;->getViewInternal(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 298
    invoke-direct {p0, p1, p2}, Lcolor/support/dialog/ColorListDialog$Adapter;->resetPadding(ILandroid/view/View;)V

    return-object p2
.end method
