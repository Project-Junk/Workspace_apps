.class public final synthetic Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/gesture/VibrationHelper;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/content/Context;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/gesture/VibrationHelper;ZLandroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;->f$0:Lcom/coloros/systemui/gesture/VibrationHelper;

    iput-boolean p2, p0, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;->f$1:Z

    iput-object p3, p0, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;->f$2:Landroid/content/Context;

    iput p4, p0, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;->f$0:Lcom/coloros/systemui/gesture/VibrationHelper;

    iget-boolean v1, p0, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;->f$1:Z

    iget-object v2, p0, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;->f$2:Landroid/content/Context;

    iget p0, p0, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/coloros/systemui/gesture/VibrationHelper;->lambda$vibrateCustomized$0$VibrationHelper(ZLandroid/content/Context;I)V

    return-void
.end method
