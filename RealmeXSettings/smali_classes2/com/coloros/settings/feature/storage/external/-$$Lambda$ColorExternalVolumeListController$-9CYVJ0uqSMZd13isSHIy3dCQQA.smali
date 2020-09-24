.class public final synthetic Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$-9CYVJ0uqSMZd13isSHIy3dCQQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$-9CYVJ0uqSMZd13isSHIy3dCQQA;->f$0:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$-9CYVJ0uqSMZd13isSHIy3dCQQA;->f$0:Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;

    check-cast p1, Landroid/os/storage/VolumeInfo;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->lambda$-9CYVJ0uqSMZd13isSHIy3dCQQA(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;Landroid/os/storage/VolumeInfo;)V

    return-void
.end method
