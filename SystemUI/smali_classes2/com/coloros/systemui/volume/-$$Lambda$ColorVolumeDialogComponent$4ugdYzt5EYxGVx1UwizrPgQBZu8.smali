.class public final synthetic Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogComponent$4ugdYzt5EYxGVx1UwizrPgQBZu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogComponent$4ugdYzt5EYxGVx1UwizrPgQBZu8;->f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogComponent$4ugdYzt5EYxGVx1UwizrPgQBZu8;->f$0:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;->lambda$new$0$ColorVolumeDialogComponent(Lcom/android/systemui/plugins/VolumeDialog;)V

    return-void
.end method
