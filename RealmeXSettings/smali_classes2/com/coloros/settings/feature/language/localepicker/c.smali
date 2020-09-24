.class public Lcom/coloros/settings/feature/language/localepicker/c;
.super Lcom/coloros/settings/feature/language/localepicker/a;
.source "RegionInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/language/localepicker/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/feature/language/localepicker/a<",
        "Lcom/coloros/settings/feature/language/region/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "c"


# instance fields
.field a:Lcom/coloros/settings/feature/language/localepicker/c$a;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/language/region/d;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/language/localepicker/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p1}, Lcom/coloros/settings/utils/x;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/language/localepicker/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    iget-object p3, p0, Lcom/coloros/settings/feature/language/localepicker/c;->a:Lcom/coloros/settings/feature/language/localepicker/c$a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/coloros/settings/feature/language/localepicker/c$a;->d()Z

    move-result p3

    if-nez p3, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/c;->getCount()I

    move-result p3

    if-eqz p2, :cond_2

    const v2, 0x7f0a034b

    .line 1027
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    if-lez p3, :cond_2

    const/4 v3, 0x4

    if-ne p3, v1, :cond_0

    .line 1034
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sub-int/2addr p3, v1

    if-ne p1, p3, :cond_1

    .line 1038
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1040
    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/c;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/language/region/d;

    .line 1101
    iget-object p3, p1, Lcom/coloros/settings/feature/language/region/b;->a:Landroid/content/Context;

    .line 65
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/language/localepicker/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/settings/feature/language/localepicker/c;->f:Ljava/lang/String;

    const p3, 0x7f0a0541

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    if-eqz p3, :cond_4

    .line 68
    iget-object v2, p0, Lcom/coloros/settings/feature/language/localepicker/c;->f:Ljava/lang/String;

    .line 1181
    iget-object p1, p1, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/c;->a:Lcom/coloros/settings/feature/language/localepicker/c$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/coloros/settings/feature/language/localepicker/c$a;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    return-object p2
.end method
