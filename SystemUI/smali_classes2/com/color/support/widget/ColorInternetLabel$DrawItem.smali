.class public Lcom/color/support/widget/ColorInternetLabel$DrawItem;
.super Ljava/lang/Object;
.source "ColorInternetLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorInternetLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DrawItem"
.end annotation


# instance fields
.field private mBottom:I

.field private mItem:Lcom/color/support/widget/help/ColorInternetHelper;

.field private mLeft:I

.field private mRight:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTitle:Ljava/lang/String;

.field private mTop:I

.field private pressed:Z

.field final synthetic this$0:Lcom/color/support/widget/ColorInternetLabel;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorInternetLabel;Lcom/color/support/widget/help/ColorInternetHelper;)V
    .locals 2

    .line 180
    iput-object p1, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mItem:Lcom/color/support/widget/help/ColorInternetHelper;

    .line 172
    iput-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->pressed:Z

    .line 181
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    .line 182
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 183
    iput-object p2, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mItem:Lcom/color/support/widget/help/ColorInternetHelper;

    .line 184
    invoke-static {p1}, Lcom/color/support/widget/ColorInternetLabel;->access$000(Lcom/color/support/widget/ColorInternetLabel;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 186
    invoke-static {p1}, Lcom/color/support/widget/ColorInternetLabel;->access$100(Lcom/color/support/widget/ColorInternetLabel;)I

    move-result p2

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 189
    invoke-virtual {p1}, Lcom/color/support/widget/ColorInternetLabel;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 190
    iget-object p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroid/text/TextPaint;->density:F

    return-void
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Landroid/text/TextPaint;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Z
    .locals 0

    .line 170
    iget-boolean p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->pressed:Z

    return p0
.end method


# virtual methods
.method public getBottom()I
    .locals 0

    .line 243
    iget p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mBottom:I

    return p0
.end method

.method public getCurrentDrawableState()[I
    .locals 1

    .line 201
    invoke-static {}, Lcom/color/support/widget/ColorInternetLabel;->access$200()[I

    move-result-object v0

    .line 202
    iget-boolean p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->pressed:Z

    if-eqz p0, :cond_0

    .line 203
    invoke-static {}, Lcom/color/support/widget/ColorInternetLabel;->access$300()[I

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getItem()Lcom/color/support/widget/help/ColorInternetHelper;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mItem:Lcom/color/support/widget/help/ColorInternetHelper;

    return-object p0
.end method

.method public getLeft()I
    .locals 0

    .line 219
    iget p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mLeft:I

    return p0
.end method

.method public getRight()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mRight:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTop()I
    .locals 0

    .line 235
    iget p0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTop:I

    return p0
.end method

.method public onPressed()V
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->pressed:Z

    return-void
.end method

.method public onReleased()V
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->pressed:Z

    return-void
.end method

.method public setBottom(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mBottom:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mLeft:I

    return-void
.end method

.method public setRight(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mRight:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->mTop:I

    return-void
.end method
