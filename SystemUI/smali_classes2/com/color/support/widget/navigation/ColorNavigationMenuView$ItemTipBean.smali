.class Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;
.super Ljava/lang/Object;
.source "ColorNavigationMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/navigation/ColorNavigationMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemTipBean"
.end annotation


# instance fields
.field private tip:I

.field private tipType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->tip:I

    .line 521
    iput p2, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->tipType:I

    return-void
.end method


# virtual methods
.method public getTip()I
    .locals 0

    .line 525
    iget p0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->tip:I

    return p0
.end method

.method public getTipType()I
    .locals 0

    .line 533
    iget p0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->tipType:I

    return p0
.end method

.method public setTip(I)V
    .locals 0

    .line 529
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->tip:I

    return-void
.end method

.method public setTipType(I)V
    .locals 0

    .line 537
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$ItemTipBean;->tipType:I

    return-void
.end method
