.class public final synthetic Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$Zee2LSjwtIW92tbXHVBiI2hd4hM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;

.field private final synthetic f$1:Landroid/os/storage/VolumeInfo;

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;Landroid/os/storage/VolumeInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$Zee2LSjwtIW92tbXHVBiI2hd4hM;->f$0:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$Zee2LSjwtIW92tbXHVBiI2hd4hM;->f$1:Landroid/os/storage/VolumeInfo;

    iput-wide p3, p0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$Zee2LSjwtIW92tbXHVBiI2hd4hM;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$Zee2LSjwtIW92tbXHVBiI2hd4hM;->f$0:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$Zee2LSjwtIW92tbXHVBiI2hd4hM;->f$1:Landroid/os/storage/VolumeInfo;

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$Zee2LSjwtIW92tbXHVBiI2hd4hM;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->lambda$Zee2LSjwtIW92tbXHVBiI2hd4hM(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;Landroid/os/storage/VolumeInfo;J)V

    return-void
.end method