.class public Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;
.super Ljava/lang/Object;
.source "ColorNumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1029
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)Ljava/lang/String;
    .locals 0

    .line 1029
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)I
    .locals 0

    .line 1029
    iget p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mTextColor:I

    return p0
.end method

.method static synthetic access$2000(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)F
    .locals 0

    .line 1029
    iget p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mTextSize:F

    return p0
.end method

.method static synthetic access$2100(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)Ljava/lang/String;
    .locals 0

    .line 1029
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;
    .locals 2

    .line 1091
    new-instance v0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;-><init>(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;Lcom/color/support/widget/ColorNumericKeyboard$1;)V

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;
    .locals 0

    .line 1082
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public drawable(Landroid/graphics/drawable/Drawable;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public textColor(I)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;
    .locals 0

    .line 1062
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mTextColor:I

    return-object p0
.end method

.method public textSize(F)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;
    .locals 0

    .line 1072
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->mTextSize:F

    return-object p0
.end method
