.class final Lcom/coloros/settings/feature/weather/CityAddActivity$1;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/CityAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/CityAddActivity$d;

.field final synthetic b:Lcom/coloros/settings/feature/weather/CityAddActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/CityAddActivity$d;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$1;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    iput-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(IZ)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 451
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$d;

    if-eqz p1, :cond_0

    .line 452
    invoke-interface {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity$d;->doAfterPermitted()V

    .line 454
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$1;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    const/4 v0, 0x0

    const-string v1, "data"

    .line 1234
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1235
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "no_need_show_weather_service_alert"

    .line 1236
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1237
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    const/4 p2, -0x2

    if-ne p1, p2, :cond_2

    .line 456
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$1;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->finish()V

    :cond_2
    return-void
.end method
