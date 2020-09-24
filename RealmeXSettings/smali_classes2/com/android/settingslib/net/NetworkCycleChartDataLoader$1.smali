.class final Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;
.super Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;
.source "NetworkCycleChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->a(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a<",
        "Lcom/android/settingslib/net/NetworkCycleChartDataLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/android/settingslib/net/NetworkCycleDataLoader;
    .locals 2

    .line 1071
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;B)V

    return-object v0
.end method
