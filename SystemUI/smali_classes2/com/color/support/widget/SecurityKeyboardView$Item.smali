.class Lcom/color/support/widget/SecurityKeyboardView$Item;
.super Ljava/lang/Object;
.source "SecurityKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/SecurityKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public itemBg:Landroid/graphics/drawable/Drawable;

.field private mBottom:F

.field private mLeft:I

.field private mRight:I

.field private mSpecialTextPaint:Landroid/text/TextPaint;

.field private mTop:F

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lcom/color/support/widget/SecurityKeyboardView;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/SecurityKeyboardView;)V
    .locals 0

    .line 2489
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->this$0:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2481
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->text:Ljava/lang/String;

    .line 2482
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->itemBg:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 2483
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mLeft:I

    .line 2484
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mRight:I

    const/4 p1, 0x0

    .line 2485
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mTop:F

    .line 2486
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mBottom:F

    return-void
.end method

.method public constructor <init>(Lcom/color/support/widget/SecurityKeyboardView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 2492
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->this$0:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2481
    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->text:Ljava/lang/String;

    .line 2482
    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->itemBg:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2483
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mLeft:I

    .line 2484
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mRight:I

    const/4 v0, 0x0

    .line 2485
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mTop:F

    .line 2486
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mBottom:F

    .line 2493
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    .line 2494
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 2495
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView;->access$1600(Lcom/color/support/widget/SecurityKeyboardView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2496
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView;->access$1700(Lcom/color/support/widget/SecurityKeyboardView;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2497
    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->text:Ljava/lang/String;

    .line 2498
    iput-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->itemBg:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$1500(Lcom/color/support/widget/SecurityKeyboardView$Item;)Landroid/text/TextPaint;
    .locals 0

    .line 2479
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mSpecialTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method


# virtual methods
.method public getBottom()F
    .locals 0

    .line 2511
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mBottom:F

    return p0
.end method

.method public getItemBg()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2526
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->itemBg:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 2519
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->text:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTop()F
    .locals 0

    .line 2503
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mTop:F

    return p0
.end method

.method public setBottom(F)V
    .locals 0

    .line 2515
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mBottom:F

    return-void
.end method

.method public setTop(F)V
    .locals 0

    .line 2507
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView$Item;->mTop:F

    return-void
.end method
