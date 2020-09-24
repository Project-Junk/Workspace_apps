.class final Lcom/coloros/systemui/airview/AirViewHelper$1;
.super Landroid/util/Singleton;
.source "AirViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/airview/AirViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/coloros/systemui/airview/AirViewHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/coloros/systemui/airview/AirViewHelper;
    .locals 1

    .line 50
    new-instance p0, Lcom/coloros/systemui/airview/AirViewHelper;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/airview/AirViewHelper;-><init>(Lcom/coloros/systemui/airview/AirViewHelper$1;)V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/coloros/systemui/airview/AirViewHelper$1;->create()Lcom/coloros/systemui/airview/AirViewHelper;

    move-result-object p0

    return-object p0
.end method
