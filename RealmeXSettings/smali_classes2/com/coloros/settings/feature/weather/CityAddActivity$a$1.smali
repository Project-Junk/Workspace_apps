.class final Lcom/coloros/settings/feature/weather/CityAddActivity$a$1;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 789
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$1;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iput-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 792
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$1;->c:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$1;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$1;->b:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->a(Lcom/coloros/settings/feature/weather/CityAddActivity$a;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
