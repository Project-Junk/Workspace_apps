.class final Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController$1;
.super Landroid/database/ContentObserver;
.source "Iris5MotionFluencyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;Landroid/os/Handler;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->access$000(Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;)Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->access$100(Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;)V

    :cond_0
    return-void
.end method
