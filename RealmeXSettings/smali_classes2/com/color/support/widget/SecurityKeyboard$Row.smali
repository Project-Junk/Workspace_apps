.class public Lcom/color/support/widget/SecurityKeyboard$Row;
.super Ljava/lang/Object;
.source "SecurityKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/SecurityKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/SecurityKeyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field private parent:Lcom/color/support/widget/SecurityKeyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/color/support/widget/SecurityKeyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 250
    iput-object p2, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->parent:Lcom/color/support/widget/SecurityKeyboard;

    .line 251
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 253
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorKeyWidth:I

    .line 255
    invoke-static {p2}, Lcom/color/support/widget/SecurityKeyboard;->access$000(Lcom/color/support/widget/SecurityKeyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/SecurityKeyboard;->access$100(Lcom/color/support/widget/SecurityKeyboard;)I

    move-result v3

    .line 253
    invoke-static {v0, v1, v2, v3}, Lcom/color/support/widget/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->defaultWidth:I

    .line 256
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorKeyHeight:I

    .line 258
    invoke-static {p2}, Lcom/color/support/widget/SecurityKeyboard;->access$200(Lcom/color/support/widget/SecurityKeyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/SecurityKeyboard;->access$300(Lcom/color/support/widget/SecurityKeyboard;)I

    move-result v3

    .line 256
    invoke-static {v0, v1, v2, v3}, Lcom/color/support/widget/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->defaultHeight:I

    .line 259
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorHorizontalGap:I

    .line 261
    invoke-static {p2}, Lcom/color/support/widget/SecurityKeyboard;->access$000(Lcom/color/support/widget/SecurityKeyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/SecurityKeyboard;->access$400(Lcom/color/support/widget/SecurityKeyboard;)I

    move-result v3

    .line 259
    invoke-static {v0, v1, v2, v3}, Lcom/color/support/widget/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->defaultHorizontalGap:I

    .line 262
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorVerticalGap:I

    .line 264
    invoke-static {p2}, Lcom/color/support/widget/SecurityKeyboard;->access$200(Lcom/color/support/widget/SecurityKeyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/SecurityKeyboard;->access$500(Lcom/color/support/widget/SecurityKeyboard;)I

    move-result p2

    .line 262
    invoke-static {v0, v1, v2, p2}, Lcom/color/support/widget/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->verticalGap:I

    .line 265
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_Row:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 268
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_Row_colorRowEdgeFlags:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->rowEdgeFlags:I

    .line 269
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_Row_colorKeyboardMode:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->mode:I

    return-void
.end method

.method public constructor <init>(Lcom/color/support/widget/SecurityKeyboard;)V
    .locals 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 246
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->parent:Lcom/color/support/widget/SecurityKeyboard;

    return-void
.end method

.method static synthetic access$600(Lcom/color/support/widget/SecurityKeyboard$Row;)Lcom/color/support/widget/SecurityKeyboard;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboard$Row;->parent:Lcom/color/support/widget/SecurityKeyboard;

    return-object p0
.end method
