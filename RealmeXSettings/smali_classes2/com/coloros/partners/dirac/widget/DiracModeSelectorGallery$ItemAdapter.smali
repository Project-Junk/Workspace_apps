.class Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "DiracModeSelectorGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAdapter"
.end annotation


# instance fields
.field mHeight:I

.field mWidth:I

.field final synthetic this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;


# direct methods
.method public constructor <init>(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)V
    .locals 2

    .line 446
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 447
    iget-object v0, p1, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->mWidth:I

    .line 448
    iget-object p1, p1, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->mHeight:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$400(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 468
    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 470
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    iget-object v0, v0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    .line 471
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 472
    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->mHeight:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 473
    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->mHeight:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 474
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 475
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    if-lez p1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$400(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$400(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 481
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-static {}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$1100()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x0

    .line 483
    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    iget v1, v1, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->mNormalTextSize:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 484
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$1200(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_3

    .line 485
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$400(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 488
    :cond_2
    iget p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->mWidth:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 489
    iget p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->mWidth:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_2

    .line 486
    :cond_3
    :goto_1
    iget p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$ItemAdapter;->mWidth:I

    int-to-float p1, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    const p3, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setWidth(I)V

    :goto_2
    return-object p2
.end method
