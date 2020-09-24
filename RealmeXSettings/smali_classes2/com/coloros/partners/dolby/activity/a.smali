.class public final Lcom/coloros/partners/dolby/activity/a;
.super Landroid/widget/BaseAdapter;
.source "DolbyEffectModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/partners/dolby/activity/a$a;
    }
.end annotation


# instance fields
.field a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/partners/dolby/activity/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coloros/partners/dolby/activity/b;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/a;->c:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/a;->b:Landroid/content/Context;

    .line 38
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/a;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/a;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/a;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 67
    new-instance p2, Lcom/coloros/partners/dolby/activity/a$a;

    invoke-direct {p2, v0}, Lcom/coloros/partners/dolby/activity/a$a;-><init>(B)V

    .line 68
    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0165

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f0a0539

    .line 69
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p2, Lcom/coloros/partners/dolby/activity/a$a;->a:Landroid/widget/RadioButton;

    const v1, 0x7f0a0442

    .line 70
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/coloros/partners/dolby/activity/a$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0a0687

    .line 71
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/coloros/partners/dolby/activity/a$a;->c:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/partners/dolby/activity/a$a;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/partners/dolby/activity/b;

    .line 78
    iget-object v1, p2, Lcom/coloros/partners/dolby/activity/a$a;->a:Landroid/widget/RadioButton;

    .line 1029
    iget v2, p1, Lcom/coloros/partners/dolby/activity/b;->a:I

    .line 78
    iget v3, p0, Lcom/coloros/partners/dolby/activity/a;->a:I

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    iget-object v0, p2, Lcom/coloros/partners/dolby/activity/a$a;->b:Landroid/widget/TextView;

    .line 1033
    iget-object v1, p1, Lcom/coloros/partners/dolby/activity/b;->b:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p2, p2, Lcom/coloros/partners/dolby/activity/a$a;->c:Landroid/widget/TextView;

    .line 1037
    iget-object p1, p1, Lcom/coloros/partners/dolby/activity/b;->c:Ljava/lang/String;

    .line 80
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
