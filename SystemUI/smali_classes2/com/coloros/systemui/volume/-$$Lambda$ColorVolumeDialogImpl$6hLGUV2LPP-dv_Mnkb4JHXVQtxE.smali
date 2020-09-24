.class public final synthetic Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$6hLGUV2LPP-dv_Mnkb4JHXVQtxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

.field private final synthetic f$1:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$6hLGUV2LPP-dv_Mnkb4JHXVQtxE;->f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iput-object p2, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$6hLGUV2LPP-dv_Mnkb4JHXVQtxE;->f$1:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$6hLGUV2LPP-dv_Mnkb4JHXVQtxE;->f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iget-object p0, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$6hLGUV2LPP-dv_Mnkb4JHXVQtxE;->f$1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->lambda$getSinglePressFor$9$ColorVolumeDialogImpl(Landroid/widget/ImageButton;)V

    return-void
.end method
