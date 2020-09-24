.class Lcom/oppo/support/widget/OppoTouchSearchView$Key;
.super Ljava/lang/Object;
.source "OppoTouchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/support/widget/OppoTouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Key"
.end annotation


# instance fields
.field public mIcon:Landroid/graphics/drawable/Drawable;

.field mKeyLabel:Ljava/lang/CharSequence;

.field mKeyOne:Ljava/lang/CharSequence;

.field mKeyTwo:Ljava/lang/CharSequence;

.field mLeft:I

.field mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field mTop:I

.field final synthetic this$0:Lcom/oppo/support/widget/OppoTouchSearchView;


# direct methods
.method constructor <init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V
    .locals 0

    .line 1562
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->this$0:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1552
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 1553
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 1556
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1557
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mText:Ljava/lang/String;

    .line 1558
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    return-void
.end method

.method constructor <init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 1566
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->this$0:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1552
    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 1553
    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 1556
    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1557
    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mText:Ljava/lang/String;

    .line 1558
    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    .line 1567
    iput-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1568
    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mText:Ljava/lang/String;

    .line 1571
    new-instance p2, Landroid/text/TextPaint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    .line 1576
    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$400(Lcom/oppo/support/widget/OppoTouchSearchView;)I

    move-result p2

    if-nez p2, :cond_0

    .line 1578
    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$500(Lcom/oppo/support/widget/OppoTouchSearchView;)I

    move-result p2

    .line 1580
    :cond_0
    iget-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1581
    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$700(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$602(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1582
    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$600(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1583
    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$800(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$602(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1585
    :cond_1
    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$900(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1586
    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$900(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    return-void
.end method

.method static synthetic access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;
    .locals 0

    .line 1530
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1591
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeft()I
    .locals 1

    .line 1609
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mLeft:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1598
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1621
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1622
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    return-object p1

    .line 1623
    :cond_0
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    .line 1624
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    return-object p1

    .line 1626
    :cond_1
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTop:I

    if-lt p2, p1, :cond_2

    shr-int/lit8 p4, p3, 0x1

    add-int/2addr p1, p4

    if-gt p2, p1, :cond_2

    .line 1627
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    return-object p1

    .line 1628
    :cond_2
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTop:I

    shr-int/lit8 p3, p3, 0x1

    add-int/2addr p1, p3

    if-le p2, p1, :cond_3

    .line 1629
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    return-object p1

    .line 1631
    :cond_3
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public getTop()I
    .locals 1

    .line 1617
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTop:I

    return v0
.end method

.method public setLeft(I)V
    .locals 0

    .line 1605
    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mLeft:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 1613
    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mTop:I

    return-void
.end method
