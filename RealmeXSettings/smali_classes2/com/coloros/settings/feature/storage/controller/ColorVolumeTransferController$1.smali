.class final Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$1;
.super Ljava/lang/Object;
.source "ColorVolumeTransferController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/coloros/settings/feature/storage/sdcard/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$1;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 264
    check-cast p1, Lcom/coloros/settings/feature/storage/sdcard/a;

    check-cast p2, Lcom/coloros/settings/feature/storage/sdcard/a;

    .line 2064
    iget p1, p1, Lcom/coloros/settings/feature/storage/sdcard/a;->a:I

    .line 3064
    iget p2, p2, Lcom/coloros/settings/feature/storage/sdcard/a;->a:I

    sub-int/2addr p1, p2

    return p1
.end method
