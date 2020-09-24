.class public final synthetic Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$Qg6LyH2PW_3LQwrXIwSsnFZ_aEg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$Qg6LyH2PW_3LQwrXIwSsnFZ_aEg;->f$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    iput p2, p0, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$Qg6LyH2PW_3LQwrXIwSsnFZ_aEg;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$Qg6LyH2PW_3LQwrXIwSsnFZ_aEg;->f$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    iget p0, p0, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$Qg6LyH2PW_3LQwrXIwSsnFZ_aEg;->f$1:F

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->lambda$addPointerEvent$3$SingleHandGesture(F)V

    return-void
.end method
