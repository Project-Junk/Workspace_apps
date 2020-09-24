.class public final synthetic Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$zdFmmw0U0J6lOgrSfJQN7js96O4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

.field private final synthetic f$1:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$zdFmmw0U0J6lOgrSfJQN7js96O4;->f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iput-object p2, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$zdFmmw0U0J6lOgrSfJQN7js96O4;->f$1:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    iput p3, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$zdFmmw0U0J6lOgrSfJQN7js96O4;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$zdFmmw0U0J6lOgrSfJQN7js96O4;->f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iget-object v1, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$zdFmmw0U0J6lOgrSfJQN7js96O4;->f$1:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    iget p0, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$zdFmmw0U0J6lOgrSfJQN7js96O4;->f$2:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->lambda$initRow$3$ColorVolumeDialogImpl(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;ILandroid/view/View;)V

    return-void
.end method
