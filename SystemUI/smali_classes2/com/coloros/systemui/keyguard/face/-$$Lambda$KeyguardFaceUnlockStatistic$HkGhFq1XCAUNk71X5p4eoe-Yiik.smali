.class public final synthetic Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$HkGhFq1XCAUNk71X5p4eoe-Yiik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ZILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$HkGhFq1XCAUNk71X5p4eoe-Yiik;->f$0:Z

    iput p2, p0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$HkGhFq1XCAUNk71X5p4eoe-Yiik;->f$1:I

    iput-object p3, p0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$HkGhFq1XCAUNk71X5p4eoe-Yiik;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$HkGhFq1XCAUNk71X5p4eoe-Yiik;->f$0:Z

    iget v1, p0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$HkGhFq1XCAUNk71X5p4eoe-Yiik;->f$1:I

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$HkGhFq1XCAUNk71X5p4eoe-Yiik;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;->lambda$collectDataOfFaceUnlockFailEventWhileFillLight$2(ZILandroid/content/Context;)V

    return-void
.end method
