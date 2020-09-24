.class final Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/CityAddActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity$a;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iput-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/module/city/d;->c(Landroid/content/Context;)V

    .line 807
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    new-instance v1, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
