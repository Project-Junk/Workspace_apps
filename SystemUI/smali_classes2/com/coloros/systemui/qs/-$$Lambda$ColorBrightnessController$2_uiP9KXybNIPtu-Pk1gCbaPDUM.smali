.class public final synthetic Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$2_uiP9KXybNIPtu-Pk1gCbaPDUM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/ColorBrightnessController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$2_uiP9KXybNIPtu-Pk1gCbaPDUM;->f$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    iput p2, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$2_uiP9KXybNIPtu-Pk1gCbaPDUM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$2_uiP9KXybNIPtu-Pk1gCbaPDUM;->f$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    iget p0, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$2_uiP9KXybNIPtu-Pk1gCbaPDUM;->f$1:I

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->lambda$onChangedWithAnimation$1$ColorBrightnessController(I)V

    return-void
.end method
