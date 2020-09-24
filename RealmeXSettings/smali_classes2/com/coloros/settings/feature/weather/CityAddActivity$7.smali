.class final Lcom/coloros/settings/feature/weather/CityAddActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CityAddActivity.java"


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

    .line 1369
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$7;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    .line 1372
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$7;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->D(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcolor/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$7;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->D(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcolor/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
