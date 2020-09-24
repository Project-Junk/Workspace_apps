.class final Lcom/coloros/settings/feature/weather/CityAddActivity$11;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


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

    .line 869
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$11;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 1

    .line 872
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$11;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->p(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;

    move-result-object p1

    int-to-float p2, p3

    const/4 p3, 0x0

    cmpl-float p4, p2, p3

    if-eqz p4, :cond_2

    const/high16 p4, 0x41000000    # 8.0f

    div-float p4, p2, p4

    const/high16 p5, 0x42200000    # 40.0f

    sub-float p4, p5, p4

    div-float/2addr p4, p5

    const/high16 p5, 0x3f800000    # 1.0f

    cmpg-float v0, p4, p5

    if-gtz v0, :cond_0

    cmpl-float v0, p4, p3

    if-ltz v0, :cond_0

    sub-float p3, p5, p4

    goto :goto_0

    :cond_0
    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    move p3, p5

    .line 1047
    :goto_0
    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;->dispatchScaleRange(F)V

    :cond_2
    return-void
.end method
