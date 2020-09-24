.class final Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 810
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 811
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    iget-object v1, v1, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->i(Lcom/coloros/settings/feature/weather/CityAddActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    iget-object v2, v2, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v2, v2, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->j(Lcom/coloros/settings/feature/weather/CityAddActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;Ljava/util/List;Ljava/util/List;)V

    .line 812
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->k(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    move-result-object v0

    .line 1724
    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 813
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2$1;->a:Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;I)V

    return-void
.end method
