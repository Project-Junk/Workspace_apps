.class public final Lcom/android/settingslib/widget/f;
.super Ljava/lang/Object;
.source "BarViewInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/widget/f;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/view/View$OnClickListener;

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field f:I

.field g:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settingslib/widget/f;->a:Landroid/graphics/drawable/Drawable;

    .line 55
    iput p2, p0, Lcom/android/settingslib/widget/f;->f:I

    .line 56
    iput-object p3, p0, Lcom/android/settingslib/widget/f;->c:Ljava/lang/CharSequence;

    .line 57
    iput-object p4, p0, Lcom/android/settingslib/widget/f;->d:Ljava/lang/CharSequence;

    .line 58
    iput-object p5, p0, Lcom/android/settingslib/widget/f;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method private static synthetic a(Lcom/android/settingslib/widget/f;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/settingslib/widget/f;->f:I

    return p0
.end method

.method public static synthetic lambda$NZX_ABxYYLZvAPVLaf6bHf_nbzw(Lcom/android/settingslib/widget/f;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/widget/f;->a(Lcom/android/settingslib/widget/f;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 30
    check-cast p1, Lcom/android/settingslib/widget/f;

    .line 1071
    sget-object v0, Lcom/android/settingslib/widget/-$$Lambda$f$NZX_ABxYYLZvAPVLaf6bHf_nbzw;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$f$NZX_ABxYYLZvAPVLaf6bHf_nbzw;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 1072
    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
