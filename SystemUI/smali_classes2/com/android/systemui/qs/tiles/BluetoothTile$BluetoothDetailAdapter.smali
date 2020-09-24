.class public Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BluetoothDetailAdapter"
.end annotation


# static fields
.field private static final MAX_DEVICES:I = 0x14


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    return-void
.end method

.method private updateItems()V
    .locals 11

    .line 373
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v0

    const v1, 0x7f0808ca

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v2, 0x7f1106ad

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v2, 0x7f1101f0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 381
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDevices()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 386
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 387
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v6, v6, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBondState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 388
    :cond_3
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 389
    sget v7, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_qs_bluetooth:I

    iput v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 390
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 391
    iput-object v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 392
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v7, v8, :cond_5

    const v7, 0x7f0807bd

    .line 394
    iput v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 395
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    .line 397
    new-instance v7, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v5, v10}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;IF)V

    iput-object v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 398
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$900(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1106c9

    new-array v10, v9, [Ljava/lang/Object;

    .line 400
    invoke-static {v5}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v2

    .line 398
    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    goto :goto_2

    .line 402
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1000(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f1106c8

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 404
    :goto_2
    iput-boolean v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 405
    invoke-virtual {v0, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    if-ne v7, v9, :cond_6

    const v5, 0x7f0808c9

    .line 408
    iput v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 409
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f1106ca

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 410
    invoke-virtual {v0, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 412
    :cond_6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14

    if-ne v4, v5, :cond_2

    .line 419
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 359
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 360
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string p2, "Bluetooth"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 361
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 363
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$800(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    .line 364
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x96

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 343
    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$600()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 327
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$400(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1106ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleEnabled()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 338
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$500(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 424
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_1

    .line 426
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    if-nez v0, :cond_1

    .line 428
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 434
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_1

    .line 437
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->disconnect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez p0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9a

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 349
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    return-void
.end method