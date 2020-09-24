.class final Lcom/coloros/settings/feature/weather/CityAddActivity$16;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;


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

    .line 1243
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$16;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChange(II)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1248
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$16;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->B(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    return-void

    .line 1250
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$16;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->C(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    return-void
.end method
