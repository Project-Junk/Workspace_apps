.class final Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellularDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    .line 341
    invoke-static {p2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$800(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a4

    invoke-virtual {p2, v0, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    check-cast p2, Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    check-cast p2, Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    .line 342
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p3, p3, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p3}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p3

    if-nez p3, :cond_1

    return-object p2

    .line 344
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    const p3, 0x7f0a04c3

    .line 345
    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x75

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$600(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$500(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1106c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 317
    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$700(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9b

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 329
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    return-void
.end method
