.class public final synthetic Lcom/coloros/settings/feature/homepage/-$$Lambda$TopLevelOtaPreferenceController$NplkR7IBNAWT2_vL1gTyyg5zzyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/-$$Lambda$TopLevelOtaPreferenceController$NplkR7IBNAWT2_vL1gTyyg5zzyY;->f$0:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/-$$Lambda$TopLevelOtaPreferenceController$NplkR7IBNAWT2_vL1gTyyg5zzyY;->f$0:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->lambda$updateState$0$TopLevelOtaPreferenceController()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
