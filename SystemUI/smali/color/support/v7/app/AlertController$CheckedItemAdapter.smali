.class Lcolor/support/v7/app/AlertController$CheckedItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mMinHeight:I

.field private mPaddingBottom:I

.field private mPaddingBottomOffset:I

.field private mPaddingLeft:I

.field private mPaddingOffset:I

.field private mPaddingRight:I

.field private mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0

    .line 1398
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_single_list_padding_left:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingLeft:I

    .line 1402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_single_list_padding_right:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingRight:I

    .line 1403
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_single_list_padding_vertical:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingBottom:I

    .line 1404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingBottomOffset:I

    .line 1405
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_single_list_padding_vertical:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingTop:I

    .line 1406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_list_item_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mMinHeight:I

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1414
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1415
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_0

    .line 1416
    iget p1, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mMinHeight:I

    iget p3, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingBottomOffset:I

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1417
    iget p1, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingLeft:I

    iget p3, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingTop:I

    iget v0, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingRight:I

    iget v1, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingBottom:I

    iget p0, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingBottomOffset:I

    add-int/2addr v1, p0

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 1419
    :cond_0
    iget p1, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mMinHeight:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1420
    iget p1, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingLeft:I

    iget p3, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingTop:I

    iget v0, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingRight:I

    iget p0, p0, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;->mPaddingBottom:I

    invoke-virtual {p2, p1, p3, v0, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_0
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
