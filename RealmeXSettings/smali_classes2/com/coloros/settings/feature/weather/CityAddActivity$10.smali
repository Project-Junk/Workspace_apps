.class final Lcom/coloros/settings/feature/weather/CityAddActivity$10;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/CityAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/CityAddActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$10;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 846
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$10;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->l(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 850
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$10;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->l(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 851
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$10;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->m(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z

    .line 855
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mHotCityGrid onItemClick position "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CityAddActivity"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$10;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->n(Lcom/coloros/settings/feature/weather/CityAddActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    if-ltz p3, :cond_3

    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$10;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->n(Lcom/coloros/settings/feature/weather/CityAddActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_3

    .line 857
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$10;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->k(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    if-eqz p1, :cond_2

    .line 859
    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityCode()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x2

    .line 860
    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p5, v0

    const/4 p4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, p4

    const-string p3, "mHotCityGrid onItemClick >>>> {0}, position {1}"

    invoke-static {p3, p5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p3, "mHotCityGrid onItemClick >>>> clicked city is empty !!!"

    .line 862
    invoke-static {p2, p3}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :goto_0
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$10;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->o(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z

    .line 865
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$10;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;)V

    :cond_3
    return-void
.end method
