.class final Lcom/coloros/settings/feature/password/StatementPage$2;
.super Ljava/lang/Object;
.source "StatementPage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/StatementPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/coloros/settings/feature/password/StatementPage;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/StatementPage;Landroid/widget/TextView;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/coloros/settings/feature/password/StatementPage$2;->b:Lcom/coloros/settings/feature/password/StatementPage;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/StatementPage$2;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 144
    iget-object v1, p0, Lcom/coloros/settings/feature/password/StatementPage$2;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p2

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/feature/password/StatementPage$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, p2, p2, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 147
    array-length p2, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/password/StatementPage$2;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPressed(Z)V

    .line 159
    iget-object p1, p0, Lcom/coloros/settings/feature/password/StatementPage$2;->a:Landroid/widget/TextView;

    const-wide/16 v1, 0x46

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->postInvalidateDelayed(J)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    return v1

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/password/StatementPage$2;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 154
    iget-object p1, p0, Lcom/coloros/settings/feature/password/StatementPage$2;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :goto_1
    return v0
.end method
