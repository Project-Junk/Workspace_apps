.class public final Lcom/android/settingslib/widget/e;
.super Ljava/lang/Object;
.source "BarChartInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/e$a;
    }
.end annotation


# instance fields
.field final a:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field final b:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field final c:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field final d:Landroid/view/View$OnClickListener;

.field e:[Lcom/android/settingslib/widget/f;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/widget/e$a;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    iget v0, p1, Lcom/android/settingslib/widget/e$a;->a:I

    .line 93
    iput v0, p0, Lcom/android/settingslib/widget/e;->a:I

    .line 2106
    iget v0, p1, Lcom/android/settingslib/widget/e$a;->b:I

    .line 94
    iput v0, p0, Lcom/android/settingslib/widget/e;->b:I

    .line 3106
    iget v0, p1, Lcom/android/settingslib/widget/e$a;->c:I

    .line 95
    iput v0, p0, Lcom/android/settingslib/widget/e;->c:I

    .line 4106
    iget-object v0, p1, Lcom/android/settingslib/widget/e$a;->d:Landroid/view/View$OnClickListener;

    .line 96
    iput-object v0, p0, Lcom/android/settingslib/widget/e;->d:Landroid/view/View$OnClickListener;

    .line 5106
    iget-object v0, p1, Lcom/android/settingslib/widget/e$a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 6106
    iget-object p1, p1, Lcom/android/settingslib/widget/e$a;->e:Ljava/util/List;

    .line 99
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settingslib/widget/-$$Lambda$e$f29coWnNfHP5lJjiUokXgjiq1b0;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$e$f29coWnNfHP5lJjiUokXgjiq1b0;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settingslib/widget/f;

    iput-object p1, p0, Lcom/android/settingslib/widget/e;->e:[Lcom/android/settingslib/widget/f;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/widget/e$a;B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/e;-><init>(Lcom/android/settingslib/widget/e$a;)V

    return-void
.end method

.method private static synthetic a(I)[Lcom/android/settingslib/widget/f;
    .locals 0

    .line 99
    new-array p0, p0, [Lcom/android/settingslib/widget/f;

    return-object p0
.end method

.method public static synthetic lambda$f29coWnNfHP5lJjiUokXgjiq1b0(I)[Lcom/android/settingslib/widget/f;
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/widget/e;->a(I)[Lcom/android/settingslib/widget/f;

    move-result-object p0

    return-object p0
.end method
