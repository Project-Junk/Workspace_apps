.class public Lcom/color/support/widget/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/f;
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
            "Lcom/color/support/widget/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field private h:Lcom/color/support/widget/f;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/color/support/widget/f;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/f$b;->e:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/color/support/widget/f$b;->h:Lcom/color/support/widget/f;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcolor/support/v7/a/a$n;->SecurityKeyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcolor/support/v7/a/a$n;->SecurityKeyboard_colorKeyWidth:I

    invoke-static {p2}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/f;->b(Lcom/color/support/widget/f;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/color/support/widget/f;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/f$b;->a:I

    sget v1, Lcolor/support/v7/a/a$n;->SecurityKeyboard_colorKeyHeight:I

    invoke-static {p2}, Lcom/color/support/widget/f;->c(Lcom/color/support/widget/f;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/f;->d(Lcom/color/support/widget/f;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/color/support/widget/f;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/f$b;->b:I

    sget v1, Lcolor/support/v7/a/a$n;->SecurityKeyboard_colorHorizontalGap:I

    invoke-static {p2}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/f;->e(Lcom/color/support/widget/f;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/color/support/widget/f;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/f$b;->c:I

    sget v1, Lcolor/support/v7/a/a$n;->SecurityKeyboard_colorVerticalGap:I

    invoke-static {p2}, Lcom/color/support/widget/f;->c(Lcom/color/support/widget/f;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/f;->f(Lcom/color/support/widget/f;)I

    move-result p2

    invoke-static {v0, v1, v2, p2}, Lcom/color/support/widget/f;->a(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/f$b;->d:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Lcolor/support/v7/a/a$n;->SecurityKeyboard_Row:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/a/a$n;->SecurityKeyboard_Row_colorRowEdgeFlags:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/f$b;->f:I

    sget p2, Lcolor/support/v7/a/a$n;->SecurityKeyboard_Row_colorKeyboardMode:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/f$b;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/color/support/widget/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/f$b;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/color/support/widget/f$b;->h:Lcom/color/support/widget/f;

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/f$b;)Lcom/color/support/widget/f;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/f$b;->h:Lcom/color/support/widget/f;

    return-object p0
.end method
