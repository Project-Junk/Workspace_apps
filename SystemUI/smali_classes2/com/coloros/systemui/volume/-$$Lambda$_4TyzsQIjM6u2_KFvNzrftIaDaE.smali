.class public final synthetic Lcom/coloros/systemui/volume/-$$Lambda$_4TyzsQIjM6u2_KFvNzrftIaDaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/volume/-$$Lambda$_4TyzsQIjM6u2_KFvNzrftIaDaE;->f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/volume/-$$Lambda$_4TyzsQIjM6u2_KFvNzrftIaDaE;->f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;

    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;->createDefault()Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object p0

    return-object p0
.end method
