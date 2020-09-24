.class final Lcom/coloros/settings/feature/weather/CityAddActivity$12;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/CityAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/coloros/settings/feature/weather/CityAddActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$12;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 880
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$12;->a:Z

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-lez p4, :cond_0

    .line 896
    iget-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$12;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 897
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$12;->a:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 899
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$12;->a:Z

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 884
    iget-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$12;->a:Z

    if-eqz p1, :cond_0

    .line 885
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$12;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    .line 886
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 887
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$12;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->q(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/color/support/widget/ColorSearchViewAnimate;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 888
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$12;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->q(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/color/support/widget/ColorSearchViewAnimate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/color/support/widget/ColorSearchViewAnimate;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
