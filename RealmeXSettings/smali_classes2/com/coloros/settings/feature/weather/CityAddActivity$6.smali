.class final Lcom/coloros/settings/feature/weather/CityAddActivity$6;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 1334
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$6;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f0a02bd

    if-ne p1, v1, :cond_2

    .line 1339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 1340
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$6;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->r(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 1341
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$6;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->G(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 1344
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$6;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->q(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/color/support/widget/ColorSearchViewAnimate;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->changeStateWithAnimation(I)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
