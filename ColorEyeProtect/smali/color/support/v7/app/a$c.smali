.class Lcolor/support/v7/app/a$c;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$e;->alert_dialog_single_list_padding_left:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcolor/support/v7/app/a$c;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$e;->alert_dialog_single_list_padding_right:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcolor/support/v7/app/a$c;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$e;->alert_dialog_item_padding_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcolor/support/v7/app/a$c;->d:I

    const/4 p2, 0x0

    iput p2, p0, Lcolor/support/v7/app/a$c;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/a/a$e;->alert_dialog_list_item_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/app/a$c;->e:I

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcolor/support/v7/app/a$c;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcolor/support/v7/app/a$c;->e:I

    iget p3, p0, Lcolor/support/v7/app/a$c;->d:I

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    iget p1, p0, Lcolor/support/v7/app/a$c;->a:I

    iget p3, p0, Lcolor/support/v7/app/a$c;->c:I

    iget v0, p0, Lcolor/support/v7/app/a$c;->b:I

    iget p0, p0, Lcolor/support/v7/app/a$c;->d:I

    invoke-virtual {p2, p1, p3, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcolor/support/v7/app/a$c;->e:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    iget p1, p0, Lcolor/support/v7/app/a$c;->a:I

    iget p0, p0, Lcolor/support/v7/app/a$c;->b:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p0, p3}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
