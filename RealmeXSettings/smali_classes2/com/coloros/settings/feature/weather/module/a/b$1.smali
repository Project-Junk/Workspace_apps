.class final Lcom/coloros/settings/feature/weather/module/a/b$1;
.super Landroid/database/ContentObserver;
.source "WeatherUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/module/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/module/a/b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/module/a/b;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/b$1;->a:Lcom/coloros/settings/feature/weather/module/a/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/b$1;->a:Lcom/coloros/settings/feature/weather/module/a/b;

    const/4 v1, 0x0

    .line 1088
    :goto_0
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/module/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1089
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/module/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
