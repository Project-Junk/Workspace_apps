.class public final synthetic Lcom/coloros/systemui/navbar/-$$Lambda$FirstLandScapeManager$fToI_a3WOR8dCGXp36OnrRwAkDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/navbar/FirstLandScapeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/navbar/FirstLandScapeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/-$$Lambda$FirstLandScapeManager$fToI_a3WOR8dCGXp36OnrRwAkDI;->f$0:Lcom/coloros/systemui/navbar/FirstLandScapeManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/-$$Lambda$FirstLandScapeManager$fToI_a3WOR8dCGXp36OnrRwAkDI;->f$0:Lcom/coloros/systemui/navbar/FirstLandScapeManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->lambda$notifyRotationChanged$0$FirstLandScapeManager()V

    return-void
.end method
