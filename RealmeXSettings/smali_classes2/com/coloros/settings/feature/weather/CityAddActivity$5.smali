.class final Lcom/coloros/settings/feature/weather/CityAddActivity$5;
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

    .line 1324
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$5;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1327
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1328
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$5;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->F(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z

    return-void
.end method
