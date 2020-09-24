.class Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "ColorSideGesturePreProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;)V
    .locals 1

    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 71
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->access$000(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " pkg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  ExclusionChanged:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string p2, "ColorSideGesture"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
