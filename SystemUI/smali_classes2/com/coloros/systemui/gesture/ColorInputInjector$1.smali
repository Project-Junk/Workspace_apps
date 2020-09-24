.class final Lcom/coloros/systemui/gesture/ColorInputInjector$1;
.super Landroid/util/Singleton;
.source "ColorInputInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/ColorInputInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/coloros/systemui/gesture/ColorInputInjector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/coloros/systemui/gesture/ColorInputInjector;
    .locals 0

    .line 29
    new-instance p0, Lcom/coloros/systemui/gesture/ColorInputInjector;

    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorInputInjector;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/ColorInputInjector$1;->create()Lcom/coloros/systemui/gesture/ColorInputInjector;

    move-result-object p0

    return-object p0
.end method
