.class Lcom/oppo/support/widget/OppoTouchSearchView$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/support/widget/OppoTouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:I

.field e:I

.field public f:Landroid/graphics/drawable/Drawable;

.field g:Ljava/lang/String;

.field final synthetic h:Lcom/oppo/support/widget/OppoTouchSearchView;

.field private i:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->h:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->f:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->i:Landroid/text/TextPaint;

    return-void
.end method

.method constructor <init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->h:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->i:Landroid/text/TextPaint;

    iput-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->f:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->g:Ljava/lang/String;

    new-instance p2, Landroid/text/TextPaint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->i:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->c(Lcom/oppo/support/widget/OppoTouchSearchView;)I

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->d(Lcom/oppo/support/widget/OppoTouchSearchView;)I

    move-result p2

    :cond_0
    iget-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->i:Landroid/text/TextPaint;

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->e(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->f(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->g(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->h(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->i:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->h(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->i:Landroid/text/TextPaint;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->f:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method a(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a:Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    return-object p0

    :cond_1
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->e:I

    if-lt p2, p1, :cond_2

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->e:I

    shr-int/lit8 p4, p3, 0x1

    add-int/2addr p1, p4

    if-gt p2, p1, :cond_2

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    return-object p0

    :cond_2
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->e:I

    shr-int/lit8 p3, p3, 0x1

    add-int/2addr p1, p3

    if-le p2, p1, :cond_3

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c:Ljava/lang/CharSequence;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->g:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->e:I

    return-void
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->e:I

    return p0
.end method
