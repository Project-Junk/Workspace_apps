.class final Lcom/coloros/settings/feature/weather/CityAddActivity$8;
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

    .line 1382
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$8;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    move v0, p1

    .line 1385
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$8;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->D(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcolor/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1386
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$8;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->D(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcolor/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
