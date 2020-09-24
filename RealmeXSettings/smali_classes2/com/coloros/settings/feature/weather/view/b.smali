.class public final Lcom/coloros/settings/feature/weather/view/b;
.super Landroid/widget/ArrayAdapter;
.source "SearchCityListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/coloros/settings/feature/weather/module/city/e;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 36
    new-instance v0, Lcom/coloros/settings/feature/weather/module/city/e;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/weather/module/city/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/view/b;->b:Lcom/coloros/settings/feature/weather/module/city/e;

    .line 37
    iput-object p2, p0, Lcom/coloros/settings/feature/weather/view/b;->a:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/b;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/b;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(I)Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/view/b;->a(I)Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/view/b;->a(I)Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getId()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 77
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/view/b;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0d02bb

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/view/b;->a(I)Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    move-result-object p1

    .line 80
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_7

    if-eqz p1, :cond_7

    .line 81
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/view/b;->b:Lcom/coloros/settings/feature/weather/module/city/e;

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    iget v2, p3, Lcom/coloros/settings/feature/weather/module/city/e;->a:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 1060
    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityNameLocal()Ljava/lang/String;

    move-result-object v2

    .line 1061
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "null"

    if-nez v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1065
    :goto_0
    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityParent()Ljava/lang/String;

    move-result-object v3

    .line 1066
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v0

    .line 1070
    :cond_2
    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityProvince()Ljava/lang/String;

    move-result-object v3

    .line 1071
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v0

    .line 1075
    :cond_3
    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityCountry()Ljava/lang/String;

    move-result-object v3

    .line 1076
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v0

    :cond_4
    if-eqz v2, :cond_5

    .line 1047
    invoke-virtual {p3, p1}, Lcom/coloros/settings/feature/weather/module/city/e;->a(Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1084
    :cond_5
    invoke-virtual {p3, p1, v4}, Lcom/coloros/settings/feature/weather/module/city/e;->a(Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1049
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1039
    :cond_6
    invoke-virtual {p3, p1}, Lcom/coloros/settings/feature/weather/module/city/e;->a(Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1054
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_7
    return-object p2
.end method
