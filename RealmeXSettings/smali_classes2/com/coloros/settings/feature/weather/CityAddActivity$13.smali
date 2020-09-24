.class final Lcom/coloros/settings/feature/weather/CityAddActivity$13;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 906
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$13;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 911
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$13;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->r(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 913
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$13;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->s(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
