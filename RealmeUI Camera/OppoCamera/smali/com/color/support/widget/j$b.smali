.class public Lcom/color/support/widget/j$b;
.super Ljava/lang/Object;
.source "SecurityKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field private h:Lcom/color/support/widget/j;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/color/support/widget/j;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/j$b;->e:Ljava/util/ArrayList;

    .line 239
    iput-object p2, p0, Lcom/color/support/widget/j$b;->h:Lcom/color/support/widget/j;

    .line 240
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 242
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorKeyWidth:I

    .line 244
    invoke-static {p2}, Lcom/color/support/widget/j;->a(Lcom/color/support/widget/j;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/j;->b(Lcom/color/support/widget/j;)I

    move-result v3

    .line 242
    invoke-static {v0, v1, v2, v3}, Lcom/color/support/widget/j;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/j$b;->a:I

    .line 245
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorKeyHeight:I

    .line 247
    invoke-static {p2}, Lcom/color/support/widget/j;->c(Lcom/color/support/widget/j;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/j;->d(Lcom/color/support/widget/j;)I

    move-result v3

    .line 245
    invoke-static {v0, v1, v2, v3}, Lcom/color/support/widget/j;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/j$b;->b:I

    .line 248
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorHorizontalGap:I

    .line 250
    invoke-static {p2}, Lcom/color/support/widget/j;->a(Lcom/color/support/widget/j;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/j;->e(Lcom/color/support/widget/j;)I

    move-result v3

    .line 248
    invoke-static {v0, v1, v2, v3}, Lcom/color/support/widget/j;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/j$b;->c:I

    .line 251
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorVerticalGap:I

    .line 253
    invoke-static {p2}, Lcom/color/support/widget/j;->c(Lcom/color/support/widget/j;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/j;->f(Lcom/color/support/widget/j;)I

    move-result p2

    .line 251
    invoke-static {v0, v1, v2, p2}, Lcom/color/support/widget/j;->a(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/j$b;->d:I

    .line 254
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_Row:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 257
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_Row_colorRowEdgeFlags:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/j$b;->f:I

    .line 258
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_Row_colorKeyboardMode:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/j$b;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/color/support/widget/j;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/j$b;->e:Ljava/util/ArrayList;

    .line 235
    iput-object p1, p0, Lcom/color/support/widget/j$b;->h:Lcom/color/support/widget/j;

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/j$b;)Lcom/color/support/widget/j;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/color/support/widget/j$b;->h:Lcom/color/support/widget/j;

    return-object p0
.end method
