.class final Lcom/google/android/setupcompat/template/a$1;
.super Ljava/lang/Object;
.source "FooterBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/FooterButton$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupcompat/template/a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/setupcompat/template/a;


# direct methods
.method constructor <init>(Lcom/google/android/setupcompat/template/a;I)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    iput p2, p0, Lcom/google/android/setupcompat/template/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/google/android/setupcompat/template/a$1;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    invoke-static {p1}, Lcom/google/android/setupcompat/template/a;->c(Lcom/google/android/setupcompat/template/a;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/google/android/setupcompat/template/a$1;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/google/android/setupcompat/template/a$1;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    iget-boolean v1, v1, Lcom/google/android/setupcompat/template/a;->a:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/google/android/setupcompat/template/a$1;->b:Lcom/google/android/setupcompat/template/a;

    iget v1, p0, Lcom/google/android/setupcompat/template/a$1;->a:I

    invoke-static {p1}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/a;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/a;Landroid/widget/Button;Z)V

    :cond_1
    return-void
.end method
