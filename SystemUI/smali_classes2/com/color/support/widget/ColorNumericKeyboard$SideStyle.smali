.class public Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;
.super Ljava/lang/Object;
.source "ColorNumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SideStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;
    }
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:F


# direct methods
.method private constructor <init>(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)V
    .locals 1

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->access$1700(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1020
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->access$1800(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mText:Ljava/lang/String;

    .line 1021
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->access$1900(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mTextColor:I

    .line 1022
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->access$2000(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mTextSize:F

    .line 1023
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;->access$2100(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mDescription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;Lcom/color/support/widget/ColorNumericKeyboard$1;)V
    .locals 0

    .line 1011
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;-><init>(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;
    .locals 0

    .line 1011
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1011
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;
    .locals 0

    .line 1011
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)F
    .locals 0

    .line 1011
    iget p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mTextSize:F

    return p0
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)I
    .locals 0

    .line 1011
    iget p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->mTextColor:I

    return p0
.end method
